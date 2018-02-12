/***********************************************************************************************/
/*Programme: timer.c                                                                           */
/*Description: Horloge qui affiche l'heure sur l'écran lcd. Le bouton S2 permet d'incrémenter  */
/*les minutes afin d'ajuster l'heure.                                                          */
/*Auteur : Sami Metoui                                                                         */
/***********************************************************************************************/

#include <p18f452.h>
#include <delays.h>
#include <stdio.h>
#include "types.h"

#define E_PIN    	LATBbits.LATB4

/******************************************************/
/*VARIABLES GLOBALES                                  */
/******************************************************/

U8 i;
U16 count=0;
U16 DtVld=0;

U16 flagPM=1;					//0 = matin, 1 = après midi
U16 flagPMset=0;				//0 = mode 12h, 1 = mode 24h

static U16 heure=15;
static U16 min=58;
static U16 sec=57;

S8 Chaine[8];

/******************************************************/
/*PROTOTYPE DES FONCTIONS                             */
/******************************************************/

void Delay10Us(U16 _Tm_U16);
void DelayMs(U16 _Tm_U16);

void Delay(U16);

void LcdWrCmd(U8);
void LcdWrDat(U8);
unsigned char BusyXLCDx(void);
void OpenXLCDx( void);

void incrementerMin(void);

void IRQTimer(void);
void IRQButton(void);
void incrementerSec(void);

/******************************************************/
/*INTERRUPTION HAUTE AFFICHAGE SUR LCD                */
/******************************************************/

		//Initialisation du vecteur d’interruption
	
#pragma code High_it=0x08
void IRQJumpTimer(void)
{
	_asm
	goto IRQTimer
	_endasm
}
#pragma code

		//Sous programme de traitement de l’interruption
	
#pragma interrupt IRQTimer
void IRQTimer(void)
{
 //INTCONbits.TMR0IE=0;								 //désactive les interruptions du TMR0

 if(PIR1bits.CCP1IF)
  {
   PIR1bits.CCP1IF = 0;								 //clear l'overflow flag du comparateur
   
   if (count == 8)
    {
     PORTBbits.RB3 =! PORTBbits.RB3;				 //fait clignoter la led RB3
	 for (i=0;i<=7;i++)
      {
       while(BusyXLCDx()); LcdWrDat(Chaine[i]);		 //affiche l'horloge sur le lcd
       Delay10Us(1);
      }
	 while(BusyXLCDx()); LcdWrCmd(2);				 //revient au début de la ligne du lcd
	 count=0;
     sprintf(Chaine,"%02d:%02d:%02d",heure,min,sec); //affiche l'horloge dans Chaine
	 incrementerSec();     							 //incrémente d'une seconde
	}
   count++;
  }
 //INTCONbits.TMR0IE=1;								 //active les interruptions de TMR0
}	

/******************************************************/
/*INTERRUPTION BASSE BOUTONS DE COMMANDE              */
/******************************************************/

		//Initialisation du vecteur d’interruption
	
#pragma code Low_it=0x18
void IRQJumpButton(void)
{
	_asm
	goto IRQButton
	_endasm
}
#pragma code
	
		//Sous programme de traitement de l’interruption
	
#pragma interrupt IRQButton
void IRQButton(void)
{

 if(INTCONbits.TMR0IF)							// Overflow sur TMR0					
  {
   INTCONbits.TMR0IF = 0;						// Clear TMR0IF

   if(PORTAbits.RA4)							// Test pression S2 + antirebond
     {
        if(DtVld<10) DtVld++;
     }
	else
	  {
       if(DtVld==10)
      	{
		incrementerMin();
		PORTCbits.RC2 =! PORTCbits.RC2;			// bip sur le buzzer
		}
        DtVld= 0;
	  }


	 if(PORTBbits.RB0)							// Test pression S3 + antirebond
     {
        if(DtVld<10) DtVld++;
     }
	else
	  {
       if(DtVld==10)
      	{
			PORTCbits.RC2 =! PORTCbits.RC2;		// bip sur le buzzer
			if(flagPMset==0) 
				{
					flagPMset=1;				//passe du mode 24h au mode 12h
					if(heure>12) heure -= 12;	//et convertit l'heure
				}
			else 
				{
					flagPMset=0;				//passe du mode 12h au mode 24h
					if(flagPM==1) heure += 12;	//et convertit l'heure
				}
			}
       		DtVld= 0;
	  }
   } 

}

/****************************************************************************/
/*MAIN                                                                      */
/****************************************************************************/

void main(void)
{
	
	char C[]="Sami Metoui";
	int i;
	count=0;
    
    TRISBbits.TRISB3 = 0;			// RB3 en sortie
	TRISBbits.TRISB0 = 1;			// RB1 en entrée
	TRISCbits.TRISC2 = 0;			// RC2 en sortie

	PORTBbits.RB3 = 0;				// led RB3 éteinte
	
			//initialisation du timer 1

	T1CON = 0x35;					// timer 1 on, en 16 bits, prescaler 1:8 
									// -> 1µs * 8 * c = 8µs * c (c=ccpr1)
									
	T3CONbits.T3CCP2=0;				// timer 1 en mode comparaison avec le comparateur
	CCP1CON=0x0B;					// mode comparateur timer1 à 0 lors de l'égalité
	CCPR1H=0x3d;					// égalité après 15625 périodes de 8µs 
	CCPR1L=0x09;					// soit 125ms	
	PIE1bits.CCP1IE=1;				// active l'interruption sur mode comparaison
	
			//initialisation du timer 0

	T0CON = 0xD7;					// timer en 8 bits, prescaler de 1:256
									// -> 1µs * 256 * 256(0xFF) = 65ms
	
	TMR0L=0;						// clear
	TMR0H=0;						// le timer
	
	INTCONbits.TMR0IF = 0;			// clear le flag overflow du timer 0
	INTCONbits.TMR0IE = 1;			// active l'interruption sur overflow du timer 0
	
			//initialisation les interruptions
	
	INTCON2bits.INTEDG0 = 0;		// interruption sur front descendant
	RCONbits.IPEN = 1;				// active les priorité pour les interruptions
	
	INTCONbits.GIEH = 1;			// autorise les interruptions prioritaires
    INTCONbits.GIEL = 1;			// autorise les interruptions non prioritaires
	
	
	INTCON2bits.TMR0IP = 0;			// TMR0 de priorité basse

    OpenXLCDx( );								// Initialise le contrôleur LCD

	while(BusyXLCDx()); LcdWrCmd(1); 			// Efface l'écran du contrôleur Lcd
	while(BusyXLCDx()); LcdWrCmd(0xC0);			// Passe sur la 2ieme ligne du Lcd
	for (i=0;i<=10;i++)
      {
       while(BusyXLCDx()); LcdWrDat(C[i]);		// Affiche la chaine de caractère
       Delay10Us(1);
      }
	while(BusyXLCDx()); LcdWrCmd(0x80);			// Revient sur la première ligne du Lcd

	while(1);
}

/****************************************************/
/*Fonction qui incrémente l'horloge	en mode 12/24h  */
/****************************************************/
     
void incrementerSec(void)
{

int h=23;

if(flagPMset==1) {h=12;}					// Test flagPMSet format 12/24h
else {h=23;}								


if(heure == h)
 {
  if(min == 59)
   {
    if(sec == 59)
		{  
			sec=0; min=0; heure=0;  
			if(flagPM==0) flagPM=1;			// set/clear flagPM
			else flagPM=0;					
		}
    else  {  sec+=1; }
   }
  else
   {
    if(sec == 59) { sec=0; min+=1; }
    else { sec+=1; }
   }
 }
else
 {
  if(min == 59)
   {
    if(sec == 59) { sec=0; min=0; heure+=1; }
    else { sec+=1; }
   }
  else
   {
    if(sec == 59) { sec=0; min+=1; }
    else { sec+=1; }
   } 
  }
}

/**********************************************************************/
/*Fonction qui incrémente l'horloge	d'une minute pour ajuster l'heure */
/**********************************************************************/
     
void incrementerMin(void)
{

int h=23;

if(flagPMset==1) {h=12;}					// Test flagPMSet format 12/24h
else {h=23;}

if(heure == h)
 {
  if(min == 59)
   {
    min=0; heure=0;
	if(flagPM==0) flagPM=1;					// set/clear flagPM
	else flagPM=0;
   }
  else
   {
    min+=1;
   }
 }
else
 {
  if(min == 59)
   {
    min=0; heure+=1;
   }
  else
   {
    min+=1;
   } 
 }
}

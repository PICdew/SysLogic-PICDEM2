/***************************************************************************************************/
/*Programme: timer.c                                                                               */
/*Description: Horloge qui affiche l'heure sur l'�cran lcd. L'heure et les minutes peuvent �tre    */
/*ajust�s. La carte PicDem2 Plus de Microchip est munie d'un Pic 18f452, d'un afficheur lcd hd     */
/* Auteur : Sami Metoui                                                                            */
/***************************************************************************************************/

#include <p18f452.h>
#include <delays.h>
#include <stdio.h>
#include "types.h"

#define E_PIN    	LATBbits.LATB4

/******************************************************/
/*VARIABLES GLOBALES                                  */
/******************************************************/

U8 i;
int count=0;
int DtVld=0;

int flagPM=1;
int flagPMset=0;

static int heure=15;
static int min=58;
static int sec=57;

char Chaine[8];

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

	//Initialisation du vecteur d�interruption
	
#pragma code High_it=0x08
void IRQJumpTimer(void)
{
	_asm
	goto IRQTimer
	_endasm
}
#pragma code

	//Sous programme de traitement de l�interruption
	
#pragma interrupt IRQTimer
void IRQTimer(void)
{
 //INTCONbits.TMR0IE=0;

 if(PIR1bits.CCP1IF)
  {
   //PIR1bits.CCP1IF = 0;										//clear le flag du comparateur
   if (count == 2)
    {
     PORTBbits.RB3 =! PORTBbits.RB3;						//fait clignoter la led RB3
    }
   if (count == 8)
    {
     for (i=0;i<=7;i++)
      {
       while(BusyXLCDx()); LcdWrDat(Chaine[i]);				//affiche l'horloge sur le lcd
       Delay10Us(1);
      }
	  //while(BusyXLCDx()); LcdWrCmd(1);
      while(BusyXLCDx()); LcdWrCmd(2);						//revient au d�but de la ligne du lcd
	  count=0;
      sprintf(Chaine,"%02d:%02d:%02d",heure,min,sec); 		//affiche l'horloge dans Chaine
	  incrementerSec();     								//incr�mente d'une seconde
	}
   count++;
   PIR1bits.CCP1IF =0 ;										//clear le flag du comparateur
  }
//INTCONbits.TMR0IE=1;
}

/******************************************************/
/*INTERRUPTION BASSE BOUTONS DE COMMANDE              */
/******************************************************/

	//Initialisation du vecteur d�interruption
	
#pragma code Low_it=0x18
void IRQJumpButton(void)
{
	_asm
	goto IRQButton
	_endasm
}
#pragma code
	
	//Sous programme de traitement de l�interruption
	
#pragma interrupt IRQButton
void IRQButton(void)
{

 if(INTCONbits.TMR0IF)				//PRESSION BOUTON S2 (FREQ 65ms)
  {
   INTCONbits.TMR0IF = 0;	

   if(PORTAbits.RA4)
     {
        if( DtVld<10) DtVld++;
     }
	else
	  {
       if( DtVld==10)
      	{
		incrementerMin();
		PORTCbits.RC2 =! PORTCbits.RC2;						//bip sur le buzzer
		}
        DtVld= 0;
	  }


	 if(PORTBbits.RB0)				//PRESSION BOUTON S3
     {
        if( DtVld<10) DtVld++;
     }
	else
	  {
       if( DtVld==10)
      	{
			PORTCbits.RC2 =! PORTCbits.RC2;						//bip sur le buzzer
			if(flagPMset==0) 
				{
					flagPMset=1;
					if(heure>12) heure -= 12;
				}
			else 
				{
					flagPMset=0;
					if(flagPM==1) heure += 12;
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
	TRISBbits.TRISB0 = 1;			// RB1 en entr�e
	TRISCbits.TRISC2 = 0;			// RC2 en sortie

	PORTBbits.RB3 = 0;				// led RB3 �teinte
	
		//initialisation du timer 1

	T1CON = 0x35;					// timer 1 on, en 16 bits, prescaler 1:8 
									// -> 1�s * 8 * nc = 8�s * nc (nc=contenu du comparateur)
									
	T3CONbits.T3CCP2=0;				// timer 1 en mode comparaison avec le comparateur
	CCP1CON=0x0B;					// mode comparateur timer1 � 0 lors de l'�galit�
	CCPR1H=0x3d;					// �galit� apr�s 15625 p�riodes de 8�s 
	CCPR1L=0x09;					// soit 125ms	
	PIE1bits.CCP1IE=1;				// active l'interruption sur mode comparaison
	
		//initialisation du timer 0

	T0CON = 0xD7;					// timer en 8 bits, prescaler de 1:256
									// -> 1�s * 256 * 256(0xFF) = 65ms
	
	TMR0L=0;						// clear
	TMR0H=0;						// le timer
	
	INTCONbits.TMR0IF = 0;			// clear le flag overflow du timer 0
	INTCONbits.TMR0IE = 1;			// active l'interruption sur overflow du timer 0
	
			//initialisation les interruptions
	
	INTCON2bits.INTEDG0 = 0;		// interruption sur front descendant
	RCONbits.IPEN = 1;				// active les priorit� pour les interruptions
	
	INTCONbits.GIEH = 1;			// autorise les interruptions prioritaires
    INTCONbits.GIEL = 1;			// autorise les interruptions non prioritaires
	
	
	INTCON2bits.TMR0IP = 0;			// TMR0 de priorit� basse

    OpenXLCDx( );								// Initialise le contr�leur LCD

	while(BusyXLCDx()); LcdWrCmd(1); 			// Efface l'�cran du contr�leur Lcd
	while(BusyXLCDx()); LcdWrCmd(0xC0);			// Passe sur la 2ieme ligne du Lcd
	for (i=0;i<=10;i++)
      {
       while(BusyXLCDx()); LcdWrDat(C[i]);		// Affiche la chaine de caract�re
       Delay10Us(1);
      }
	while(BusyXLCDx()); LcdWrCmd(0x80);			// Revient sur la premi�re ligne du Lcd

	while(1);
}

/****************************************************/
/*Fonction qui incr�mente l'horloge	en mode 12/24h  */
/****************************************************/
     
void incrementerSec(void)
{

int h=23;

if(flagPMset==1) {h=12;}
else {h=23;}


if(heure == h)
 {
  if(min == 59)
   {
    if(sec == 59)
		{  
			sec=0; min=0; heure=0;  
			if(flagPM==0) flagPM=1;
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
/*Fonction qui incr�mente l'horloge	d'une minute pour ajuster l'heure */
/**********************************************************************/
     
void incrementerMin(void)
{

int h=23;

if(flagPMset==1) {h=12;}
else {h=23;}

if(heure == h)
 {
  if(min == 59)
   {
    min=0; heure=0;
	if(flagPM==0) flagPM=1;
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

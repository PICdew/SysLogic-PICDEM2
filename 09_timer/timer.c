/***************************************************************************************************/
/*Programme: timer.c                                                                               */
/*Description: Horloge qui affiche l'heure sur l'écran lcd. L'heure et les minutes peuvent être    */
/*ajustés. La carte PicDem2 Plus de Microchip est munie d'un Pic 18f452, d'un afficheur lcd hd     */
/* Auteur : Sami Metoui                                                                            */
/***************************************************************************************************/

#include <p18f452.h>
#include <delays.h>
#include <stdio.h>
//#include <xlcd.h>
//#include <stdlib.h>
#include "types.h"

#define E_PIN    	LATBbits.LATB4

/******************************************************/
/*VARIABLES GLOBALES                                  */
/******************************************************/

U8 i;
int count=0;

static int heure=23;
static int min=58;
static int sec=57;

int DtVld=0;

char Chaine[]= "23:59:50";

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

 if(PIR1bits.CCP1IF)
  {
   if (count == 2) {
     PORTBbits.RB3 =! PORTBbits.RB3;						//fait clignoter la led RB3
     PORTCbits.RC2 =! PORTCbits.RC2;						//bip sur le buzzer
    }
   if (count == 8)
    {
     for (i=0;i<=7;i++)
      {
       while(BusyXLCDx()); LcdWrDat(Chaine[i]);				//affiche l'horloge sur le lcd
       Delay10Us(1);
      }
      while(BusyXLCDx()); LcdWrCmd(2);						//revient au début de la ligne du lcd
	  count=0;
      sprintf(Chaine,"%02d:%02d:%02d",heure,min,sec); 		//affiche l'horloge dans Chaine
	  incrementerSec();     								//incrémente d'une seconde
	}
   count++;
   PIR1bits.CCP1IF=0;										//clear le flag du comparateur
  }

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

 if(INTCONbits.TMR0IF)				//PRESSION BOUTON S2 (FREQ 65ms)
  {
   INTCONbits.TMR0IF = 0;	

   if(PORTAbits.RA4)
     {
        if( DtVld<20) DtVld++;
     }
	else
	  {
       if( DtVld==20)
      	{
		heure=0; min=0; sec=0;		//REINITILAISE L'HORLOGE
		}
       DtVld= 0;
	  }


	 if(PORTBbits.RB0)				//PRESSION BOUTON S3
     {
        if( DtVld<20) DtVld++;
     }
	else
	  {
       if( DtVld==20)
      	{
		heure=0; min=0; sec=0;		//REINITILAISE L'HORLOGE
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
	count=0;
    
    TRISBbits.TRISB3 = 0;			// RB3 en sortie
	TRISBbits.TRISB0 = 1;			// RB1 en entrée
	TRISCbits.TRISC2 = 0;			// RC2 en sortie

	PORTBbits.RB3 = 0;				// led RB3 éteinte
	
		//initialisation du timer 1

	T1CON = 0x35;					// timer en 16 bits, prescaler 1:8
	
	T3CONbits.T3CCP2=0;				// timer 1 en mode comparaison avec comparateur 1 
	CCP1CON=0x0B;					// mode comparateur timer1 à 0 lors de l'égalité
	CCPR1H=0x3d;					// égalité après 15625 périodes de 8µs 
	CCPR1L=0x09;					// soit 125ms	
	PIE1bits.CCP1IE=1;				// active l'interruption sur mode comparaison
	
		//initialisation du timer 0

	T0CON = 0xD7;					// timer en 8 bits, prescaler de 1:256
	
	TMR0L=0;						// clear
	TMR0H=0;						// le timer
	
	INTCONbits.TMR0IF = 0;			// clear le flag overflow du timer 0
	INTCONbits.TMR0IE = 1;			// active l'interruption sur overflow du timer 0
	
			//initialisation les interruptions
	
	INTCON2bits.INTEDG0 = 0;		// interruption sur front descendant
	RCONbits.IPEN = 1;				// active les priorité pour les interruptions
	
	INTCONbits.GIEH = 1;			// autorise les interruptions prioritaires
    INTCONbits.GIEL = 1;			// autorise les interruptions non prioritaires
	
	
	INTCON2bits.TMR0IP = 0;			//

    OpenXLCDx( );					//
	while(BusyXLCDx());				//
		LcdWrCmd(1);				//

	while(1);
}

/************************************************************************/
/*Fonction qui écrit un octet de contrôle dans l'afficheur LCD          */
/*Entrée: Commande 8 octets non signés                                  */
/************************************************************************/

void LcdWrCmd( U8 _Dt_U8)		
{
  TRISD &= 0xf0;				/*bits de poids faible du port D en sortie*/

  PORTA = 0x02;

  PORTD = (_Dt_U8>>4)&0xF;		Delay10Us(1);
  PORTA = 0x00;					Delay10Us(1);
  PORTA = 0x02;

  PORTD = (_Dt_U8   )&0xF;		Delay10Us(1);
  PORTA = 0x00;					Delay10Us(1);
}


/*************************************************************************/
/*Fonction qui écrit une data 8 bite (2 cycles de 4 bits sur l'écran LCD)*/
/*Entrée: Data 8 octets non signés                                       */
/*************************************************************************/

void LcdWrDat( U8 _Dt_U8)
{
  TRISD &= 0xf0;

  PORTA= 0;
  PORTAbits.RA3= 1;
  Delay10Us(1);
  PORTAbits.RA1= 1;
  Delay10Us(1);		

  PORTD = (_Dt_U8>>4)&0xF;		Delay10Us(1);
  PORTAbits.RA1= 0;				Delay10Us(1);

  PORTAbits.RA1= 1;				Delay10Us(1);
  PORTD = (_Dt_U8)&0xF;         Delay10Us(1);
  PORTAbits.RA1= 0;	            Delay10Us(1);

  PORTAbits.RA3= 0;
}


/************************************************************************/
/*Fonction qui scrute l'état du busy flag de l'afficheur LCD            */
/*Sortie: 1 lorsque l'afficheur LCD busy flag est à 1                   */ 
/************************************************************************/

unsigned char BusyXLCDx(void)
{
  U8 Ret_U8;
  TRISD |= 0x0f;

  PORTA= 0x04|0x00;             Delay10Us(1);
  PORTA= 0x04|0x02;             Delay10Us(1);

  if(PORTD&0x08) Ret_U8= 1;		/*Busy Flag cad b07 à 1*/
  else           Ret_U8= 0;

  PORTA= 0x04|0x00;             Delay10Us(1);
  PORTA= 0x04|0x02;             Delay10Us(1);
  PORTA= 0x00;
  
  return Ret_U8;
}

/************************************************************************/
/*Fonction qui initialise l'afficheur LCD                               */
/************************************************************************/

void OpenXLCDx( void)
{
  ADCON1bits.PCFG1 = 1;		// Permettre au port RA de fonctionner en numérique
  ADCON1bits.PCFG2 = 1;		// pour les Bits : 1,2 et 3.
  ADCON1bits.PCFG3 = 1;

  TRISAbits.RA1 = 0;		// Config des Bits du port RA1 à RA3 en Sortie pour
  TRISAbits.RA2 = 0;		// l'afficheur LCD.
  TRISAbits.RA3 = 0;		//

  DDREbits.PSPMODE = 0;		// Configure le port D en mode Entrées / Sorties générales.

  TRISD &= 0xf0;			// Bits 0,1,2 et 3 du port D en sortie.
    
  PORTAbits.RA1 = 0;		// (E) Clock pin made low
  PORTAbits.RA2 = 0;		// (R/W) R/W pin made low
  PORTAbits.RA3 = 0;		// (RS) Register select pin made low

  DelayMs(15);

  PORTD &= 0xf0;
  PORTD |= 0x03; E_PIN = 1; Delay10Us(1); E_PIN = 0; DelayMs(5);

  PORTD &= 0xf0;
  PORTD |= 0x03; E_PIN = 1; Delay10Us(1); E_PIN = 0; Delay10Us(11);

  PORTD &= 0xf0;
  PORTD |= 0x03; E_PIN = 1; Delay10Us(1); E_PIN = 0; Delay10Us(1);

  PORTD &= 0xf0;
  PORTD |= 0x02; E_PIN = 1; Delay10Us(1); E_PIN = 0; Delay10Us(1);

  LcdWrCmd( 0b00101000); while( BusyXLCDx());		// Cmd 0010.0000 Set.
  LcdWrCmd( 0b00001110); while( BusyXLCDx());		// Cmd 0000.1000 Display ON, blink ON.
  LcdWrCmd( 0b00000110); while( BusyXLCDx());		// Cmd 0000.0100 Cur mov, No shift.
  LcdWrCmd( 0b00000001); while( BusyXLCDx());		// Cmd 0000.0001 Clear Dpl.

  //SetDDRamAddr(0);                // Set Display data ram address to 0

  return;
}


/*********************************************************************************/
/*Fonction qui interromp le programme durant un délais prédéfini en milisecondes */
/*Entrée: durée en dixième de secondes                                           */
/*********************************************************************************/

void DelayMs(U16 _Tm_U16)
{
	Delay1KTCYx(_Tm_U16);
}


/**************************************************************************************/
/*Fonction qui interromp le programme durant un délais prédéfini en 10x microsecondes */
/*Entrée: durée en 10x microsecondes                                                  */
/**************************************************************************************/

void Delay10Us(U16 _Tm_U16)
{
	Delay10TCYx(_Tm_U16);
}

/**********************************************************************************/
/*Fonction qui interromp le programme durant un délais prédéfini dans une  boucle */
/*Entrée: Entier non signé (délais)                                               */
/**********************************************************************************/

void Delay( U16 _Tm_U16)
{
  while( _Tm_U16 > 0) _Tm_U16--;
}

/*************************************************/
/*Fonction qui incrémente l'horloge	en mode 24h  */
/*************************************************/
     
void incrementerSec(void)
{
if(heure == 23)
 {
  if(min == 59)
   {
    if(sec == 59) {  sec=0; min=0; heure=0;  }
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

/****************************************************************************/
/*Fonction qui incrémente l'horloge	en mode 12h                             */
/****************************************************************************/
     
void incrementerSec12(void)
{
if(heure == 12)
 {
  if(min == 59)
   {
    if(sec == 59) {  sec=0; min=0; heure=0;  }
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


/****************************************************************************/
/*Fonction qui incrémente l'horloge	d'une minute pour ajuster l'heure	    */
/****************************************************************************/
     
void incrementerMin(void)
{
if(heure == 23)
 {
  if(min == 59)
   {
    min=0; heure=0;
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
    sec=0; min+=1;
   } 
 }
}


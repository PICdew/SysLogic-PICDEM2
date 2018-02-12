/*****************************************************************************/
/*Fichier picdem2p.c                                                         */
/*Auteur: Sami Metoui                                                        */
/*Contient les déclarations des fonction de la bibliothèque picdem2p.lib     */
/*de gestion du contrôleur Lcd HD44780Ude la carte PicDem2 Plus de Microchip */
/*****************************************************************************/

#include <p18F452.h>
#include <delays.h>
#include "picdem2p.h"
#include "types.h"

#define E_PIN LATBbits.LATB4


/************************************************************************/
/*Fonction qui écrit un octet de contrôle dans l'afficheur LCD          */
/*Entrée: Commande 8 octets non signés                                  */
/************************************************************************/

void LcdWrCmd( U8 _Dt_U8)		
{
  TRISD &= 0xf0;									// LSB du port D en sortie

  PORTA = 0x02;										// Bit E placé à 1

  PORTD = (_Dt_U8>>4)&0xF;		Delay10Us(1);		// Ecrit les MSB de la commande
  PORTA = 0x00;					Delay10Us(1);		// Bit E placé à 0
  PORTA = 0x02;					Delay10Us(1);		// Bit E placé à 1

  PORTD = (_Dt_U8   )&0xF;		Delay10Us(1);		// Ecrit les LSB de la data
  PORTA = 0x00;										// Bit E placé à 0
}


/*************************************************************************/
/*Fonction qui écrit une data 8 bite (2 cycles de 4 bits sur l'écran LCD */
/*Entrée: Data 8 octets non signés                                       */
/*************************************************************************/

void LcdWrDat( U8 _Dt_U8)
{
  TRISD &= 0xf0;									// LSB du port D en sortie
  PORTA= 0;											// Force les bits du port A à 0
  
  PORTAbits.RA3= 1;				Delay10Us(1);		// Bit RS placé à 1
  PORTAbits.RA1= 1;				Delay10Us(1);		// Bit E placé à 1

  PORTD = (_Dt_U8>>4)&0xF;		Delay10Us(1);		// Ecrit les MSB de la data
  
  PORTAbits.RA1= 0;				Delay10Us(1);		// Bit E placé à 0
  PORTAbits.RA1= 1;				Delay10Us(1);		// Bit E placé à 1
  
  PORTD = (_Dt_U8)&0xF;         Delay10Us(1);		// Ecrit les LSB de la data
  PORTAbits.RA1= 0;	            Delay10Us(1);		// Bit E placé à 0

  PORTAbits.RA3= 0;									// Bit RS à 0
}


/************************************************************************/
/*Fonction qui scrute l'état du busy flag de l'afficheur LCD            */
/*Sortie: 1 lorsque l'afficheur LCD busy flag est à 1                   */
/************************************************************************/

U8 BusyXLCDx(void)
{
  U8 Ret_U8;
  
  TRISD |= 0x0f;

  PORTA = 0x04|0x00;             Delay10Us(1);			// R/W à 1
  PORTA = 0x04|0x02;             Delay10Us(1);			// R/W et E à 1

		//lit le busy flag
		
  if(PORTD&0x08) Ret_U8 = 1;							//Busy Flag cad b07 à 1
  else           Ret_U8 = 0;

  PORTA = 0x04|0x00;             Delay10Us(1);			// R/W à 1
  PORTA = 0x04|0x02;             Delay10Us(1);			// R/W et E à 1
  PORTA = 0x00;
  
  return Ret_U8;										// retourne l'état du BF
}


/************************************************************************/
/*Fonction qui initialise l'afficheur LCD                               */
/************************************************************************/

void OpenXLCDx(void)
{
  ADCON1bits.PCFG1 = 1; 		// Permettre au port RA de fonctionner en numérique
  ADCON1bits.PCFG2 = 1; 		// pour les Bits : 1,2 et 3.
  ADCON1bits.PCFG3 = 1;

  TRISAbits.RA1 = 0; 			// Config des Bits du port RA1 à RA3 en Sortie pour
  TRISAbits.RA2 = 0; 			// l'afficheur LCD.
  TRISAbits.RA3 = 0;

  DDREbits.PSPMODE = 0; 		// Configure le port D en mode Entrées / Sorties générales.

  TRISD &= 0xf0;				// Bits 0,1,2 et 3 du port D en sortie.
    
  PORTAbits.RA1 = 0;			// Bit E niveau bas
  PORTAbits.RA2 = 0;			// Bit R/W niveau bas
  PORTAbits.RA3 = 0;			// Bit RS Register select pin niveau bas

  DelayMs(15);
  
		//Séquence d'initilisation du contrôleur LCD

  PORTD &= 0xf0;
  PORTD |= 0x03; E_PIN = 1; Delay10Us(1); 
  E_PIN = 0; DelayMs(5);						// Fuction Set : l'interface est 8 bits 

  PORTD &= 0xf0;
  PORTD |= 0x03; E_PIN = 1; Delay10Us(1); 
  E_PIN = 0; Delay10Us(11);						// Fuction Set : l'interface est 8 bits 

  PORTD &= 0xf0;
  PORTD |= 0x03; E_PIN = 1; Delay10Us(1); 
  E_PIN = 0; Delay10Us(1);						// Fuction Set : l'interface est 8 bits 

  PORTD &= 0xf0;
  PORTD |= 0x02; E_PIN = 1; Delay10Us(1); 
  E_PIN = 0; Delay10Us(1);						// Fuction Set : l'interface est 4 bits 

  LcdWrCmd(0b00101000); while(BusyXLCDx()); 	// FS: 4 bits, 2 lignes, caractères 5x8 dots
  LcdWrCmd(0b00001110); while(BusyXLCDx()); 	// DC: Allume l'écran et le curseur 
    
  LcdWrCmd(0b00000001); while(BusyXLCDx()); 	// Efface l'écran 
  LcdWrCmd(0b00000110); while(BusyXLCDx()); 	// Entry mode set : increment

  return;
}

/*********************************************************************************/
/*Fonction qui interromp le programme durant un délais prédéfini en milisecondes */
/*Entrée: durée en milli de secondes                                             */
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
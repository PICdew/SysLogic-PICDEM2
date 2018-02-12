/**************************************************************************************/
/*Programme LcdDirect.c                                                               */
/*Auteur : Sami Metoui                                                                */
/*Programme qui affiche des caractères sur le contrôleur LCD de la carte PicDem2 Plus */
/**************************************************************************************/

#include <p18f452.h>
#include "types.h"

/****************************************************************************/
/*MAIN                                                                      */
/****************************************************************************/

void main( void)
{
  U8 Dt= 0;
  U8 DtVld= 0;
  U8 DtVld1= 0;

  TRISA |= 0x10;						// a4 du Port A en entrée => Switch.
  TRISB &= 0xF1;						// b0 en entrée, b1 à b3 en sortie
  
  OpenXLCDx( );													// Initilise le contrôleur LCD
  
  while(BusyXLCDx()); LcdWrCmd(1);								// Efface l'écran

  while(BusyXLCDx()); LcdWrDat('1');		Delay10Us(1);		// Affiche la séquence 1 2 3 4
  while(BusyXLCDx()); LcdWrDat('2');		Delay10Us(1);
  while(BusyXLCDx()); LcdWrDat('3');		Delay10Us(1);
  while(BusyXLCDx()); LcdWrDat('4');		Delay10Us(1);

  while(1)
  {
    if(PORTAbits.RA4)							//Pression sur le Bouton SW2
    {
      if(DtVld<100) DtVld++;
    }
    else
    {
	  if(DtVld==100)
      {
        switch(Dt)
	    {
         case 0 : LcdWrDat('A'); break;			// Affiche la séquence A B C D E
         case 1 : LcdWrDat('B'); break;
         case 2 : LcdWrDat('C'); break;
         case 3 : LcdWrDat('D'); break;
         case 4 : LcdWrDat('E'); break;
         case 5 : Dt= -1; break;
	    }
        PORTB= Dt&0xF;
        Dt++;
      }
      DtVld= 0;
    }
	
	if(PORTBbits.RB0)							//Pression sur le Bouton SW3
      {
        if(DtVld1<100) DtVld1++;
      }
	else
	  {
       if(DtVld==100)
      	{
		LcdWrCmd(1);							//Efface l'écran Lcd
		}
	   DtVld1= 0;
	  }
  }	
}
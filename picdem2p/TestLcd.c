/**************************************************************************************/
/*Programme LcdDirect.c                                                               */
/*Auteur : Sami Metoui                                                                */
/*Programme qui affiche des caract�res sur le contr�leur LCD de la carte PicDem2 Plus */
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

  TRISA |= 0x10;						// a4 du Port A en entr�e => Switch.
  TRISB &= 0xF1;						// b0 en entr�e, b1 � b3 en sortie
  
  OpenXLCDx( );													// Initilise le contr�leur LCD
  
  while(BusyXLCDx()); LcdWrCmd(1);								// Efface l'�cran

  while(BusyXLCDx()); LcdWrDat('1');		Delay10Us(1);		// Affiche la s�quence 1 2 3 4
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
         case 0 : LcdWrDat('A'); break;			// Affiche la s�quence A B C D E
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
		LcdWrCmd(1);							//Efface l'�cran Lcd
		}
	   DtVld1= 0;
	  }
  }	
}
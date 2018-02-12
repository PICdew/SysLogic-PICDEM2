/*********************************************************************************************************/
/*Programme : compteur_led.c                                                                             */
/*Description : Programme qui affiche un compteur binaire sur le PORTD et l'incrémente à chaque pression */
/*sur le bouton S2                                                                                       */
/*********************************************************************************************************/

#include <p18f87j11.h>
#include "../types_num.h"


#define MIN 0
#define MAX 100


void main(void)
{
	U16 H=(MIN+MAX)/2;

	U8 oldbt = 0;
	U8 bt = 0;

	TRISA = 0xFF;	
	TRISD = 0x00;

	PORTD = 0;
	

	while(1)
		{
			
			if((PORTB & 0x01) == 0x00){ if (H<MAX) H++;}
			
			if((PORTB & 0x01) == 0x01){ if (H>MIN) H--;}

			if (H==MAX) bt=1;
			if (H==MIN) bt=0;

			if(bt!=oldbt)
				{
					if(bt==1) PORTD += 1;
					oldbt=bt;
				}
	
		}
}
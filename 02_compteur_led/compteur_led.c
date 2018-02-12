/***********************************************************************************************************/
/*Programme : compteur_led.c                                                                              */
/*Description : Programme qui affiche un compteur binaire sur le PORTD et l'incrémente à  chaque pression  */
/*sur le bouton S2                                                                                         */
/***********************************************************************************************************/

#include <p18f87j11.h>
#include "../types.h"

#define TEST_ETAT
//#define TEST_TRANS
//#define TEST_HYSTER

#define MIN 0
#define MAX 100

#ifdef TEST_HYSTER
U16 test_hyst(U16,U16);
#endif

void main(void)
{

#ifdef TEST_ETAT
	U16 i;
	U8 etat;
#endif
#ifdef TEST_TRANS
	U8 oldbt = 0;
	U8 bt = 0;
#endif
#ifdef TEST_HYSTER
	U16 H=(MIN+MAX)/2;
	U8 oldbt = 0;
	U8 bt = 0;
#endif

	TRISA = 0xFF;	
	TRISD = 0x00;

	PORTD = 0;
	
	while(1)
		{
			if((PORTB & 0x01) == 0x00)
				{
					#ifdef  TEST_ETAT 
					etat=1;
					#endif
					#ifdef TEST_TRANS
					bt=1;
					#endif
					#ifdef TEST_HYSTER
					if (H<MAX) H++;
					#endif
				}
			
			if((PORTB & 0x01) == 0x01)
				{
					#ifdef TEST_TRANS
					bt=0;
					#endif
					#ifdef TEST_HYSTER
					if (H>MIN) H--;
					#endif
				}
			#ifdef TEST_ETAT 
			if (etat==1)
				{
					PORTD += 1;
					while((PORTB & 0x00) == 0x00){for(i=0;i<100;i++);}
					etat=0;
				}
			#endif
			#ifdef TEST_TRANS
			if(bt!=oldbt)
				{
					if(bt==1) PORTD += 1;
					oldbt=bt;
				}
			
			#endif
			#ifdef TEST_HYSTER
			bt=test_hyst(bt,H);
			if(bt!=oldbt)
				{
					if(bt==1) PORTD += 1;
					oldbt=bt;
				}
			#endif
		}
}

#ifdef TEST_HYSTER
U16 test_hyst(U16 btn, U16 h)
{
	if (h==MAX) btn=1;
	if (h==MIN) btn=0;
	return btn;
}
#endif

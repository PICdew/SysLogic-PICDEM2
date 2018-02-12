/******************************************************/
/*Programme : test_micro452.c                         */
/*Description : allume B0 lors d'une pression sur S1  */
/*sur le PORTD du PIC                                 */
/******************************************************/

#include <p18f452.h>


void main(void)
{

	TRISA = 0x00;		/*PORTA en entré*/
	TRISB = 0xFF;		/*PORTB en sortie*/

	PORTB=0x1;
	while(1)
		{
			if((PORTA & 0x10) == 0x0) 		/*bit RA4 à 1*/
				{
					PORTB |= 0x01;			/*allume la bit RB0*/
				}
			else
				{
					PORTB &= 0xFE;			/*éteint le bit RB0*/
				}
		}
}

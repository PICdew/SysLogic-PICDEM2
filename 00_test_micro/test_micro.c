#include <p18f87j11.h>

void main(void)
{

	TRISB = 0xFF;
	TRISD = 0x00;

	PORTD=0x0;
	while(1)
		{
			if((PORTB & 0x01) == 0x0)
				{
					PORTD |= 0x01;
				}
			else
				{
					PORTD &= 0xFE;
				}
		}

}


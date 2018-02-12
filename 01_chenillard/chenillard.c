/****************************************************/
/*Programme : chenillard.c                          */
/*Description : programme qui affiche un chenillard */
/*sur le PORTD du PIC                               */
/****************************************************/

#include <p18f87j11.h>

void delais(unsigned int);

void main()
{
	int i;
	TRISD = 0x00;	/*PORTD en sortie*/
	PORTD=1;		/*PORTD à 1*/

	while(1)
		{
			if(PORTD==128)			/*D8 allumé*/
				{
					PORTD=1;		/*allume D0*/
					delais(1000);
				}
			else
				{	
					PORTD <<= 1;	/*allume D+1*/
					delais(1000);
				}
		}
}

/**************************************************/
/*Fonction: delais                                */
/*Temporisation qui boucle 10000*d fois           */
/*Entrée: entier non signé					      */
/**************************************************/

void delais(unsigned int d)
{
	int i=0;
	d=d*10000;
	while(i<d) {i++;}
	return;
}


#include <stdio.h>
#include "types.h"


void Init(void);
void TurnOsdOn(void);
void TurnOsdOff(void);
void SetOsdMode(bool _BlcSurNoir_B);
void SetOsdPhase(bool _Phase_S8);

U8 CTRLOSD;

void main()
{

U16 etat;
U16 choix;

etat=0;

bindispword(32);
/*
while (etat != 3)
    {
        printf("%b")
        switch (choix)
            {

            }
    }
    */

}

void Init(void)
{

U8 CacheOsd;
CacheOsd = CTRLOSD;

CacheOsd |= 0x40;
CacheOsd &= 0x43;

CTRLOSD = CacheOsd;

}

void TurnOsdOn(void)
{

U8 CacheOsd;

CTRLOSD = CacheOsd;

if(!(CacheOsd & 0x40))
	{
		CacheOsd |= 0x40;
	}

CTRLOSD = CacheOsd;

}

void TurnOsdOff(void)
{

U8 CacheOsd;

CTRLOSD = CacheOsd;

if((CacheOsd & 0x40))
	{
		CacheOsd &= 0x3f;
	}

CTRLOSD = CacheOsd;

}

void SetOsdMode(bool _BlcSurNoir_B)
{

U8 CacheOsd;

CTRLOSD = CacheOsd;

if(_BlcSurNoir_B) /*argument à true*/
	{
		CacheOsd |= 0x04;
	}
else /*bit 2 à 1*/
	{
		CacheOsd &= 0xfb;
	}

CTRLOSD = CacheOsd;

}

void SetOsdPhase(S8 _Phase_S8)
{

U8 CacheOsd;
U8 Phase;

CacheOsd=CTRLOSD;

Phase = 8;


if(_Phase_S8 > 0)
	{
		Phase += _Phase_S8;
		if (Phase > 7) Phase=7;
	}
else
	{
		Phase -= _Phase_S8;
		if (Phase < 0) Phase=0;
	}

Phase <<= 3;

CacheOsd &= 87;

CacheOsd |= Phase;

CTRLOSD = CacheOsd;

}


void bindispword(int ctword)
{
    U16 dispword;
    U16 i;
    U16 wmask;
    wmask = 0x800;
    dispword=ctword;
    printf("\n");
    for (i=15;i>0;i--)
        {
            dispword &= wmask;
            dispword >>= i;
            dispword += 0x60;
            printf ("%c",(char)(&dispword));
            dispword=ctword;
            wmask >>= 1;
        }
    printf("\n");
}

//scrute le buffer clavier
//sortie: 1 si un caractère a été entré sinon retourne 0
int kbhit(void)
{
	struct timeval tv;
	fd_set read_fd;

	tv.tv_sec=0;
	tv.tv_usec=0;
	FD_ZERO(&read_fd);
	FD_SET(0,&read_fd);

	if(select(1, &read_fd, NULL, NULL, &tv) == -1)
		return 0;

	if(FD_ISSET(0,&read_fd))
		return 1;

	return 0;
}

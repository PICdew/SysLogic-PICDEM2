#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "types.h"


void Init(void);
void TurnOsdOn(void);
void TurnOsdOff(void);
void SetOsdMode(bool_t);
void SetOsdPhase(S8);

void binDispWord(U16);
void binDispByte(U8);

U8 CTRLOSD;

int main()
{

U16 etat;
U16 choix;
S8 phase;
bool_t mod;

etat=0;
mod=0;

Init();

while (etat != 4)
    {

        switch (etat)
        {
            case 0: TurnOsdOn();
                    etat=7;
                    break;
            case 1: TurnOsdOff();
                    etat=7;
                    break;
            case 2: SetOsdMode(mod);
                    mod = !mod;
                    etat=7;
                    break;
            case 3: printf("\nEntrer phase: ");
                    scanf("%d",&phase);
                    SetOsdPhase(phase);
                    system("cls");
                    etat=7;
                    break;

        }
        printf("\r");
        binDispByte(CTRLOSD);

        if(kbhit())
        {
        choix=getche();
        fflush(stdin);
        switch (choix)
            {
                case 'd':   etat=0;
                            break;

                case 'a':   etat=1;
                            break;

                case 'm':   etat=2;
                            break;

                case 'p':   etat=3;
                            break;

                case 'q':   etat=4;
                            break;


            }
        }
    }

    return 0;
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

CacheOsd=CTRLOSD;

if(!(CacheOsd & 0x80))
	{
		CacheOsd |= 0x80;
	}

CTRLOSD = CacheOsd;

}

void TurnOsdOff(void)
{

U8 CacheOsd;

CacheOsd=CTRLOSD;

if((CacheOsd & 0x80))
	{
		CacheOsd &= 0x7f;
	}

CTRLOSD = CacheOsd;

}

void SetOsdMode(bool_t _BlcSurNoir_B)
{

U8 CacheOsd;

CacheOsd = CTRLOSD;

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

CacheOsd = CTRLOSD;

_Phase_S8 += 8;

if (_Phase_S8>15) _Phase_S8=15;
else
    {
        if (_Phase_S8<0) _Phase_S8=0;
    }


_Phase_S8 <<= 3;

CacheOsd &= 0x87;

CacheOsd |= _Phase_S8;

CTRLOSD = CacheOsd;

}

void binDispWord(U16 ctWord)
{
    U16 dispWord;
    U16 i;
    U16 wmask;
    wmask = 0x80;
    dispWord=ctWord;
    for (i=16;i>0;i--)
        {
            dispWord &= wmask;
            dispWord >>= (i-1);
            dispWord += 0x30;
            putchar(dispWord);
            printf("  ");
            dispWord=ctWord;
            wmask >>= 1;
        }
    printf("\t");
}

void binDispByte(U8 ctByte)
{
    U8 dispByte;
    U16 i;
    U8 wmask;
    wmask = 0x80;
    dispByte=ctByte;
    for (i=8;i>0;i--)
        {
            dispByte &= wmask;
            dispByte >>= (i-1);
            dispByte += 0x30;
            putchar(dispByte);
            printf("  ");
            dispByte=ctByte;
            wmask >>= 1;
        }
    printf("\t");
}


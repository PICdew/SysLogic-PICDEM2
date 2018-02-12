#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "types.h"


void binDispWord(U16);
void binDispByte(U8);
void MultiStart (U32);
void Start (U16);


U16 PLAYEROSD;

int main()
{

U16 etat;
U16 choix;


U16 PlayerNum=0x0F;

MultiStart (PlayerNum);

return 0;

}



void MultiStart (U32 OsdField_U32)
{

U32 CacheOsdField;
U16 PlayerNum;
U16 i;


CacheOsdField=OsdField_U32;

for (i=0;i<12;i++)
    {
        PlayerNum = CacheOsdField;
        PlayerNum &= 1;
        if(PlayerNum!=0) Start (i);
        CacheOsdField >>= 1;
    }


}


void Start (U16 OsdField_U16)
{
    printf("\nDemarre le player %d",OsdField_U16+1);
}

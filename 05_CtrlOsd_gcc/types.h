/*******************************************************/
/*types.h                                              */
/*definitions de types numériques signés et non signés */
/*******************************************************/
#ifndef TYPES_H_INCLUDED
#define TYPES_H_INCLUDED

typedef unsigned char U8;
typedef unsigned short int U16;
typedef unsigned long U32;

typedef char S8;
typedef short S16;
typedef long S32;

typedef char B8;
typedef short int B16;
typedef long B32;

typedef enum {
        TRUE  = (1==1),
        FALSE = (1==0),
    } bool_t;

#endif

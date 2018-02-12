#line 1 "picdem2p.c"
#line 1 "picdem2p.c"
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 


#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned :1;
    unsigned AN4:1;
    unsigned OSC2:1;
  };
  struct {
    unsigned :2;
    unsigned VREFM:1;
    unsigned VREFP:1;
    unsigned T0CKI:1;
    unsigned SS:1;
    unsigned CLKO:1;
  };
  struct {
    unsigned :5;
    unsigned LVDIN:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned INT0:1;
    unsigned INT1:1;
    unsigned INT2:1;
    unsigned CCP2:1;
    unsigned :1;
    unsigned PGM:1;
    unsigned PGC:1;
    unsigned PGD:1;
  };
  struct {
    unsigned :3;
    unsigned CCP2A:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned :1;
    unsigned SCK:1;
    unsigned SDI:1;
    unsigned SDO:1;
    unsigned TX:1;
    unsigned RX:1;
  };
  struct {
    unsigned T1CKI:1;
    unsigned CCP2:1;
    unsigned CCP1:1;
    unsigned SCL:1;
    unsigned SDA:1;
    unsigned :1;
    unsigned CK:1;
    unsigned DT:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTD;
extern volatile near union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
  struct {
    unsigned PSP0:1;
    unsigned PSP1:1;
    unsigned PSP2:1;
    unsigned PSP3:1;
    unsigned PSP4:1;
    unsigned PSP5:1;
    unsigned PSP6:1;
    unsigned PSP7:1;
  };
} PORTDbits;
extern volatile near unsigned char       PORTE;
extern volatile near union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
  struct {
    unsigned AN5:1;
    unsigned AN6:1;
    unsigned AN7:1;
  };
  struct {
    unsigned RD:1;
    unsigned WR:1;
    unsigned CS:1;
  };
} PORTEbits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned LATA4:1;
  unsigned LATA5:1;
  unsigned LATA6:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned LATC3:1;
  unsigned LATC4:1;
  unsigned LATC5:1;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       LATD;
extern volatile near struct {
  unsigned LATD0:1;
  unsigned LATD1:1;
  unsigned LATD2:1;
  unsigned LATD3:1;
  unsigned LATD4:1;
  unsigned LATD5:1;
  unsigned LATD6:1;
  unsigned LATD7:1;
} LATDbits;
extern volatile near unsigned char       LATE;
extern volatile near struct {
  unsigned LATE0:1;
  unsigned LATE1:1;
  unsigned LATE2:1;
} LATEbits;
extern volatile near unsigned char       DDRA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} DDRAbits;
extern volatile near unsigned char       TRISA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} TRISAbits;
extern volatile near unsigned char       DDRB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned :3;
    unsigned CCP2:1;
  };
} DDRBbits;
extern volatile near unsigned char       TRISB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned :3;
    unsigned CCP2:1;
  };
} TRISBbits;
extern volatile near unsigned char       DDRC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned :1;
    unsigned CCP2:1;
  };
} DDRCbits;
extern volatile near unsigned char       TRISC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned :1;
    unsigned CCP2:1;
  };
} TRISCbits;
extern volatile near unsigned char       DDRD;
extern volatile near union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
  };
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
} DDRDbits;
extern volatile near unsigned char       TRISD;
extern volatile near union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
  };
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
} TRISDbits;
extern volatile near unsigned char       DDRE;
extern volatile near union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned :1;
    unsigned PSPMODE:1;
    unsigned IBOV:1;
    unsigned OBF:1;
    unsigned IBF:1;
  };
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
} DDREbits;
extern volatile near unsigned char       TRISE;
extern volatile near union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned :1;
    unsigned PSPMODE:1;
    unsigned IBOV:1;
    unsigned OBF:1;
    unsigned IBF:1;
  };
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
} TRISEbits;
extern volatile near unsigned char       PIE1;
extern volatile near struct {
  unsigned TMR1IE:1;
  unsigned TMR2IE:1;
  unsigned CCP1IE:1;
  unsigned SSPIE:1;
  unsigned TXIE:1;
  unsigned RCIE:1;
  unsigned ADIE:1;
  unsigned PSPIE:1;
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near struct {
  unsigned TMR1IF:1;
  unsigned TMR2IF:1;
  unsigned CCP1IF:1;
  unsigned SSPIF:1;
  unsigned TXIF:1;
  unsigned RCIF:1;
  unsigned ADIF:1;
  unsigned PSPIF:1;
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near struct {
  unsigned TMR1IP:1;
  unsigned TMR2IP:1;
  unsigned CCP1IP:1;
  unsigned SSPIP:1;
  unsigned TXIP:1;
  unsigned RCIP:1;
  unsigned ADIP:1;
  unsigned PSPIP:1;
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near struct {
  unsigned CCP2IE:1;
  unsigned TMR3IE:1;
  unsigned LVDIE:1;
  unsigned BCLIE:1;
  unsigned EEIE:1;
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near struct {
  unsigned CCP2IF:1;
  unsigned TMR3IF:1;
  unsigned LVDIF:1;
  unsigned BCLIF:1;
  unsigned EEIF:1;
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near struct {
  unsigned CCP2IP:1;
  unsigned TMR3IP:1;
  unsigned LVDIP:1;
  unsigned BCLIP:1;
  unsigned EEIP:1;
} IPR2bits;
extern volatile near unsigned char       EECON1;
extern volatile near struct {
  unsigned RD:1;
  unsigned WR:1;
  unsigned WREN:1;
  unsigned WRERR:1;
  unsigned FREE:1;
  unsigned :1;
  unsigned CFGS:1;
  unsigned EEPGD:1;
} EECON1bits;
extern volatile near unsigned char       EECON2;
extern volatile near unsigned char       EEDATA;
extern volatile near unsigned char       EEADR;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :5;
    unsigned RC8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_RC8:1;
  };
  struct {
    unsigned :6;
    unsigned RC9:1;
  };
} RCSTAbits;
extern volatile near unsigned char       TXSTA;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned :1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned TX8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_TX8:1;
  };
} TXSTAbits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned TMR3CS:1;
    unsigned NOT_T3SYNC:1;
    unsigned T3CCP1:1;
    unsigned T3CKPS:2;
    unsigned T3CCP2:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T3SYNC:1;
    unsigned :1;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T3INSYNC:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       CCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP2Y:1;
    unsigned CCP2X:1;
  };
  struct {
    unsigned :5;
    unsigned DCCPX:1;
  };
} CCP2CONbits;
extern volatile near unsigned            CCPR2;
extern volatile near unsigned char       CCPR2L;
extern volatile near unsigned char       CCPR2H;
extern volatile near unsigned char       CCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} CCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ADCON1;
extern volatile near union {
  struct {
    unsigned PCFG:4;
    unsigned :2;
    unsigned ADCS2:1;
    unsigned ADFM:1;
  };
  struct {
    unsigned PCFG0:1;
    unsigned PCFG1:1;
    unsigned PCFG2:1;
    unsigned PCFG3:1;
  };
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned :1;
    unsigned GO_NOT_DONE:1;
    unsigned CHS:3;
    unsigned ADCS:2;
  };
  struct {
    unsigned :2;
    unsigned GO:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned ADCS0:1;
    unsigned ADCS1:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_DONE:1;
  };
  struct {
    unsigned :2;
    unsigned DONE:1;
  };
  struct {
    unsigned :2;
    unsigned GO_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSPCON2;
extern volatile near struct {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned ACKSTAT:1;
  unsigned GCEN:1;
} SSPCON2bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSPCON1bits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DATA:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :5;
    unsigned I2C_DAT:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSPADD;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near union {
  struct {
    unsigned T2CKPS:2;
    unsigned TMR2ON:1;
    unsigned TOUTPS:4;
  };
  struct {
    unsigned T2CKPS0:1;
    unsigned T2CKPS1:1;
    unsigned :1;
    unsigned TOUTPS0:1;
    unsigned TOUTPS1:1;
    unsigned TOUTPS2:1;
    unsigned TOUTPS3:1;
  };
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned TMR1CS:1;
    unsigned NOT_T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS:2;
    unsigned :1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T1SYNC:1;
    unsigned :1;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T1INSYNC:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned :2;
    unsigned IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
    unsigned :2;
    unsigned NOT_IPEN:1;
  };
} RCONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       LVDCON;
extern volatile near union {
  struct {
    unsigned LVDL:4;
    unsigned LVDEN:1;
    unsigned IRVST:1;
  };
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
  };
} LVDCONbits;
extern volatile near unsigned char       OSCCON;
extern volatile near struct {
  unsigned SCS:1;
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near union {
  struct {
    unsigned T0PS:3;
    unsigned PSA:1;
    unsigned T0SE:1;
    unsigned T0CS:1;
    unsigned T08BIT:1;
    unsigned TMR0ON:1;
  };
  struct {
    unsigned T0PS0:1;
    unsigned T0PS1:1;
    unsigned T0PS2:1;
  };
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       W;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned :1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned :1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned :1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned :1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned :1;
    unsigned TMR0IP:1;
    unsigned :1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :2;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern volatile near unsigned char       INTCON1;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCON1bits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near union {
  struct {
    unsigned STKPTR:5;
    unsigned :1;
    unsigned STKUNF:1;
    unsigned STKFUL:1;
  };
  struct {
    unsigned STKPTR0:1;
    unsigned STKPTR1:1;
    unsigned STKPTR2:1;
    unsigned STKPTR3:1;
    unsigned STKPTR4:1;
    unsigned :2;
    unsigned STKOVF:1;
  };
  struct {
    unsigned SP0:1;
    unsigned SP1:1;
    unsigned SP2:1;
    unsigned SP3:1;
    unsigned SP4:1;
  };
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;



#line 1042 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1044 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1045 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1048 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1050 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1051 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1052 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1053 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1055 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1056 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1057 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1058 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1059 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1063 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1065 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1080 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 

#line 1107 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1108 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1111 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1113 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1114 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1115 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1116 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1117 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1118 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1119 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1120 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1121 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1123 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1124 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1127 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1129 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1130 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1131 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1133 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1134 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1136 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1137 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1138 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1139 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1142 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1144 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1145 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1146 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1148 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1149 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1150 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1151 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1152 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1153 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1154 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1155 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1158 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1160 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1161 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1162 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1165 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1167 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1168 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1169 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1171 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1172 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1174 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1175 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1178 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1180 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1181 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1182 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1184 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1185 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1187 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1188 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1190 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1191 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1194 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1196 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1197 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1198 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1200 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1201 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1204 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1206 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1207 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1208 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1210 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1211 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1213 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1214 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1216 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1217 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1220 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1222 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1223 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1224 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1226 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1227 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1229 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1230 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1233 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1235 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1236 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1237 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1239 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1240 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1242 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1243 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"

#line 1245 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1246 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1249 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
 
#line 1251 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1252 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1253 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"


#line 1256 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18F452.h"
#line 1 "picdem2p.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"


#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"
 

 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"

#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 


#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned T0CKI:1;
    unsigned AN4:1;
    unsigned OSC2:1;
  };
  struct {
    unsigned :2;
    unsigned VREFM:1;
    unsigned VREFP:1;
    unsigned :1;
    unsigned SS:1;
    unsigned CLKOUT:1;
  };
  struct {
    unsigned :5;
    unsigned LVDIN:1;
    unsigned CLKO:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned INT0:1;
    unsigned INT1:1;
    unsigned INT2:1;
    unsigned CCP2:1;
  };
  struct {
    unsigned :3;
    unsigned CCP2A:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned CCP1:1;
    unsigned SCK:1;
    unsigned SDI:1;
    unsigned SDO:1;
    unsigned TX:1;
    unsigned RX:1;
  };
  struct {
    unsigned T1CKI:1;
    unsigned CCP2:1;
    unsigned :1;
    unsigned SCL:1;
    unsigned SDA:1;
    unsigned :1;
    unsigned CK:1;
    unsigned DT:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTD;
extern volatile near union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
  struct {
    unsigned PSP0:1;
    unsigned PSP1:1;
    unsigned PSP2:1;
    unsigned PSP3:1;
    unsigned PSP4:1;
    unsigned PSP5:1;
    unsigned PSP6:1;
    unsigned PSP7:1;
  };
} PORTDbits;
extern volatile near unsigned char       PORTE;
extern volatile near union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
  struct {
    unsigned RD:1;
    unsigned WR:1;
    unsigned CS:1;
  };
  struct {
    unsigned AN5:1;
    unsigned AN6:1;
    unsigned AN7:1;
  };
} PORTEbits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned LATA4:1;
  unsigned LATA5:1;
  unsigned LATA6:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned LATC3:1;
  unsigned LATC4:1;
  unsigned LATC5:1;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       LATD;
extern volatile near struct {
  unsigned LATD0:1;
  unsigned LATD1:1;
  unsigned LATD2:1;
  unsigned LATD3:1;
  unsigned LATD4:1;
  unsigned LATD5:1;
  unsigned LATD6:1;
  unsigned LATD7:1;
} LATDbits;
extern volatile near unsigned char       LATE;
extern volatile near struct {
  unsigned LATE0:1;
  unsigned LATE1:1;
  unsigned LATE2:1;
} LATEbits;
extern volatile near unsigned char       DDRA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} DDRAbits;
extern volatile near unsigned char       TRISA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} TRISAbits;
extern volatile near unsigned char       DDRB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
} DDRBbits;
extern volatile near unsigned char       TRISB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
} TRISBbits;
extern volatile near unsigned char       DDRC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
} DDRCbits;
extern volatile near unsigned char       TRISC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
} TRISCbits;
extern volatile near unsigned char       DDRD;
extern volatile near union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
  };
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
} DDRDbits;
extern volatile near unsigned char       TRISD;
extern volatile near union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
  };
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
} TRISDbits;
extern volatile near unsigned char       DDRE;
extern volatile near union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned :1;
    unsigned PSPMODE:1;
    unsigned IBOV:1;
    unsigned OBF:1;
    unsigned IBF:1;
  };
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
} DDREbits;
extern volatile near unsigned char       TRISE;
extern volatile near union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned :1;
    unsigned PSPMODE:1;
    unsigned IBOV:1;
    unsigned OBF:1;
    unsigned IBF:1;
  };
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
} TRISEbits;
extern volatile near unsigned char       PIE1;
extern volatile near struct {
  unsigned TMR1IE:1;
  unsigned TMR2IE:1;
  unsigned CCP1IE:1;
  unsigned SSPIE:1;
  unsigned TXIE:1;
  unsigned RCIE:1;
  unsigned ADIE:1;
  unsigned PSPIE:1;
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near struct {
  unsigned TMR1IF:1;
  unsigned TMR2IF:1;
  unsigned CCP1IF:1;
  unsigned SSPIF:1;
  unsigned TXIF:1;
  unsigned RCIF:1;
  unsigned ADIF:1;
  unsigned PSPIF:1;
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near struct {
  unsigned TMR1IP:1;
  unsigned TMR2IP:1;
  unsigned CCP1IP:1;
  unsigned SSPIP:1;
  unsigned TXIP:1;
  unsigned RCIP:1;
  unsigned ADIP:1;
  unsigned PSPIP:1;
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near struct {
  unsigned CCP2IE:1;
  unsigned TMR3IE:1;
  unsigned LVDIE:1;
  unsigned BCLIE:1;
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near struct {
  unsigned CCP2IF:1;
  unsigned TMR3IF:1;
  unsigned LVDIF:1;
  unsigned BCLIF:1;
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near struct {
  unsigned CCP2IP:1;
  unsigned TMR3IP:1;
  unsigned LVDIP:1;
  unsigned BCLIP:1;
} IPR2bits;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :5;
    unsigned NOT_RC8:1;
  };
  struct {
    unsigned :6;
    unsigned RC9:1;
  };
  struct {
    unsigned :6;
    unsigned RC8_9:1;
  };
} RCSTAbits;
extern volatile near unsigned char       TXSTA;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned :1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned NOT_TX8:1;
  };
  struct {
    unsigned :6;
    unsigned TX8_9:1;
  };
} TXSTAbits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned TMR3CS:1;
    unsigned NOT_T3SYNC:1;
    unsigned T3CCP1:1;
    unsigned T3CKPS:2;
    unsigned T3CCP2:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T3SYNC:1;
    unsigned :1;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T3INSYNC:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       CCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP2Y:1;
    unsigned CCP2X:1;
  };
} CCP2CONbits;
extern volatile near unsigned            CCPR2;
extern volatile near unsigned char       CCPR2L;
extern volatile near unsigned char       CCPR2H;
extern volatile near unsigned char       CCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} CCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ADCON1;
extern volatile near union {
  struct {
    unsigned PCFG:4;
    unsigned :2;
    unsigned ADCS2:1;
    unsigned ADFM:1;
  };
  struct {
    unsigned PCFG0:1;
    unsigned PCFG1:1;
    unsigned PCFG2:1;
    unsigned PCFG3:1;
  };
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned :1;
    unsigned GO_NOT_DONE:1;
    unsigned CHS:3;
    unsigned ADCS:2;
  };
  struct {
    unsigned :2;
    unsigned GO:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned ADCS0:1;
    unsigned ADCS1:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_DONE:1;
  };
  struct {
    unsigned :2;
    unsigned DONE:1;
  };
  struct {
    unsigned :2;
    unsigned GO_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSPCON2;
extern volatile near struct {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned ACKSTAT:1;
  unsigned GCEN:1;
} SSPCON2bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSPCON1bits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DATA:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :5;
    unsigned I2C_DAT:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSPADD;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near union {
  struct {
    unsigned T2CKPS:2;
    unsigned TMR2ON:1;
    unsigned TOUTPS:4;
  };
  struct {
    unsigned T2CKPS0:1;
    unsigned T2CKPS1:1;
    unsigned :1;
    unsigned TOUTPS0:1;
    unsigned TOUTPS1:1;
    unsigned TOUTPS2:1;
    unsigned TOUTPS3:1;
  };
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned TMR1CS:1;
    unsigned NOT_T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS:2;
    unsigned :1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T1SYNC:1;
    unsigned :1;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T1INSYNC:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned :1;
    unsigned LWRT:1;
    unsigned IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
  };
} RCONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       LVDCON;
extern volatile near union {
  struct {
    unsigned LVDL:4;
    unsigned LVDEN:1;
    unsigned IRVST:1;
  };
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
    unsigned :1;
    unsigned BGST:1;
  };
  struct {
    unsigned LVV0:1;
    unsigned LVV1:1;
    unsigned LVV2:1;
    unsigned LVV3:1;
  };
} LVDCONbits;
extern volatile near unsigned char       OSCCON;
extern volatile near struct {
  unsigned SCS:1;
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near union {
  struct {
    unsigned T0PS:3;
    unsigned PSA:1;
    unsigned T0SE:1;
    unsigned T0CS:1;
    unsigned T08BIT:1;
    unsigned TMR0ON:1;
  };
  struct {
    unsigned T0PS0:1;
    unsigned T0PS1:1;
    unsigned T0PS2:1;
  };
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       W;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned :1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned :1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned :1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned :1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned :1;
    unsigned TMR0IP:1;
    unsigned :1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :2;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern volatile near unsigned char       INTCON1;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCON1bits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near union {
  struct {
    unsigned STKPTR:5;
    unsigned :1;
    unsigned STKUNF:1;
    unsigned STKFUL:1;
  };
  struct {
    unsigned STKPTR0:1;
    unsigned STKPTR1:1;
    unsigned STKPTR2:1;
    unsigned STKPTR3:1;
    unsigned STKPTR4:1;
    unsigned :2;
    unsigned STKOVF:1;
  };
  struct {
    unsigned SP0:1;
    unsigned SP1:1;
    unsigned SP2:1;
    unsigned SP3:1;
    unsigned SP4:1;
  };
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;



#line 1009 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1011 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1012 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1015 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1017 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1018 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1019 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1020 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

#line 1022 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1023 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1024 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1025 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1026 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1030 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1032 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1047 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 

#line 1062 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1063 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1066 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1068 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1069 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1070 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1073 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1075 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1076 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1077 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1078 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1079 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1080 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1081 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1082 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1083 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

#line 1085 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1086 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1089 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1091 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1092 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1093 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

#line 1095 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1096 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

#line 1098 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1099 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1100 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1101 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1104 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1106 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1107 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1108 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"

#line 1110 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1111 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1112 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1113 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1114 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1115 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1116 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1117 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1120 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1122 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1123 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1124 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1127 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
 
#line 1129 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1130 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 1131 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"


#line 1134 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18c452.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"

#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 15 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 17 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 21 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 23 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 29 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 35 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 51 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 53 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 57 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 61 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 63 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 65 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 77 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 85 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 87 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 91 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 99 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 101 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 103 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 105 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 109 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 111 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 115 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 117 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 119 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 121 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 123 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 125 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 127 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 131 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 133 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 135 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 137 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 139 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 143 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 145 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 153 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 157 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 159 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 163 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 165 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 169 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 171 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 173 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 175 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 177 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 179 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 181 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 185 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 187 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 189 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 191 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 193 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 195 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 197 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 205 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 211 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 213 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 215 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 217 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 219 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 221 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 223 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 225 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 227 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 229 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 231 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 233 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 235 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 237 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 239 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 241 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 243 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 245 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 247 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 251 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 253 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 255 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 257 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 261 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 265 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 267 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 271 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 273 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 275 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 277 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 279 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 281 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 283 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 285 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 287 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 289 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 291 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 293 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 295 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 297 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 299 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 301 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 303 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 307 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 309 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 311 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 313 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 315 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 317 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 319 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 323 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 325 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 327 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 329 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 331 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 333 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 335 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 337 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 343 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 345 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 347 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 351 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 353 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 355 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 357 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 359 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 361 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 363 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 365 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 369 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 371 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 373 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 375 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 377 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 381 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 383 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 385 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 387 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 391 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 393 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 395 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 397 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 399 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 401 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 403 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 405 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 409 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 411 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 413 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 415 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 419 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 421 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 423 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 425 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 429 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 431 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 433 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 435 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 437 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 439 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 441 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 445 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 447 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 449 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 453 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 455 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 457 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 459 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 461 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 463 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 465 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 467 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 469 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 471 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 473 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 475 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 477 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 481 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 483 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 485 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 489 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 491 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 493 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 495 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 497 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 499 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 501 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 503 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 505 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 507 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 509 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 515 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 517 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 519 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 521 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 527 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 529 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 531 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 533 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 535 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 537 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 539 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 543 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 545 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 547 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 553 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 555 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 557 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 559 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 561 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"

#line 563 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h"
#line 16 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"


 
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"

#line 22 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"

 
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"


#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"
 
void Delay10TCYx(auto  unsigned char);


#line 38 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"
 
void Delay100TCYx(auto  unsigned char);


#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"
 
void Delay1KTCYx(auto  unsigned char);


#line 52 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"
 
void Delay10KTCYx(auto  unsigned char);

#line 56 "C:/Program Files (x86)/Microchip/mplabc18/v3.40/h/delays.h"
#line 2 "picdem2p.c"

#line 1 "./picdem2p.h"

#line 3 "./picdem2p.h"

#line 1 "./types.h"
 
 
 
 

#line 7 "./types.h"

typedef unsigned char U8;
typedef unsigned short int U16;
typedef unsigned long U32;

typedef char S8;
typedef short S16;
typedef long S32;

typedef char B8;
typedef short int B16;
typedef long B32;

#line 21 "./types.h"
#line 4 "./picdem2p.h"

 
 
 
 
void LcdWrCmd(U8);

 
 
 
 
void LcdWrDat(U8);

 
 
 
 
U8 BusyXLCDx(void);

 
 
 
void OpenXLCDx(void);

 
 
 
 
void Delay10Us(U16);

 
 
 
 
void DelayMs(U16);

#line 3 "picdem2p.c"
#line 4 "picdem2p.c"
#line 1 "./types.h"
 
 
 
 
#line 21 "./types.h"
#line 4 "picdem2p.c"



#line 8 "picdem2p.c"


 
 
 
 

void LcdWrCmd( U8 _Dt_U8)		
{
  TRISD &= 0xf0;									

  PORTA = 0x02;										

  PORTD = (_Dt_U8>>4)&0xF;		Delay10Us(1);		
  PORTA = 0x00;					Delay10Us(1);		
  PORTA = 0x02;					Delay10Us(1);		

  PORTD = (_Dt_U8   )&0xF;		Delay10Us(1);		
  PORTA = 0x00;										
}


 
 
 
 

void LcdWrDat( U8 _Dt_U8)
{
  TRISD &= 0xf0;									
  PORTA= 0;											
  
  PORTAbits.RA3= 1;				Delay10Us(1);		
  PORTAbits.RA1= 1;				Delay10Us(1);		

  PORTD = (_Dt_U8>>4)&0xF;		Delay10Us(1);		
  
  PORTAbits.RA1= 0;				Delay10Us(1);		
  PORTAbits.RA1= 1;				Delay10Us(1);		
  
  PORTD = (_Dt_U8)&0xF;         Delay10Us(1);		
  PORTAbits.RA1= 0;	            Delay10Us(1);		

  PORTAbits.RA3= 0;									
}


 
 
 
 

U8 BusyXLCDx(void)
{
  U8 Ret_U8;
  
  TRISD |= 0x0f;

  PORTA = 0x04|0x00;             Delay10Us(1);					
  PORTA = 0x04|0x02;             Delay10Us(1);					

		
		
  if(PORTD&0x08) Ret_U8 = 1;									
  else           Ret_U8 = 0;

  PORTA = 0x04|0x00;             Delay10Us(1);					
  PORTA = 0x04|0x02;             Delay10Us(1);					
  PORTA = 0x00;
  
  return Ret_U8;												
}


 
 
 

void OpenXLCDx(void)
{
  ADCON1bits.PCFG1 = 1; 		
  ADCON1bits.PCFG2 = 1; 		
  ADCON1bits.PCFG3 = 1;

  TRISAbits.RA1 = 0; 			
  TRISAbits.RA2 = 0; 			
  TRISAbits.RA3 = 0;

  DDREbits.PSPMODE = 0; 		

  TRISD &= 0xf0;				
    
  PORTAbits.RA1 = 0;			
  PORTAbits.RA2 = 0;			
  PORTAbits.RA3 = 0;			

  DelayMs(15);
  
		

  PORTD &= 0xf0;
  PORTD |= 0x03; LATBbits.LATB4  = 1; Delay10Us(1); LATBbits.LATB4  = 0; DelayMs(5);		

  PORTD &= 0xf0;
  PORTD |= 0x03; LATBbits.LATB4  = 1; Delay10Us(1); LATBbits.LATB4  = 0; Delay10Us(11);		

  PORTD &= 0xf0;
  PORTD |= 0x03; LATBbits.LATB4  = 1; Delay10Us(1); LATBbits.LATB4  = 0; Delay10Us(1);		

  PORTD &= 0xf0;
  PORTD |= 0x02; LATBbits.LATB4  = 1; Delay10Us(1); LATBbits.LATB4  = 0; Delay10Us(1);		

  LcdWrCmd(0b00101000); while(BusyXLCDx()); 							
																		
  LcdWrCmd(0b00001110); while(BusyXLCDx()); 							
  LcdWrCmd(0b00000110); while(BusyXLCDx()); 							
  LcdWrCmd(0b00000001); while(BusyXLCDx()); 							

  return;
}

 
 
 
 

void DelayMs(U16 _Tm_U16)
{
	Delay1KTCYx(_Tm_U16);
}

 
 
 
 

void Delay10Us(U16 _Tm_U16)
{
	Delay10TCYx(_Tm_U16);
}
# MPLAB IDE generated this makefile for use with GNU make.
# Project: timer.mcp
# Date: Mon Apr 23 20:09:27 2012

AS = MPASMWIN.exe
CC = mcc18.exe
LD = mplink.exe
AR = mplib.exe
RM = rm

timer.cof : timer.o picdem2p.o
	$(LD) /p18F452 "timer.o" "picdem2p.o" "C:\Users\metouisa\Documents\_sources\_sys log program\picdem2p\picdem2p.lib" /u_CRUNTIME /u_DEBUG /u_DEBUGCODESTART=0x7dc0 /u_DEBUGCODELEN=0x240 /u_DEBUGDATASTART=0x5f6 /u_DEBUGDATALEN=0xa /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /z__MPLAB_DEBUGGER_PK3=1 /z__ICD2RAM=1 /o"timer.cof" /M"timer.map" /W

timer.o : timer.c ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/delays.h ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/stdio.h timer.c ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/p18f452.h ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/stdarg.h ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/stddef.h types.h
	$(CC) -p=18F452 "timer.c" -fo="timer.o" -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-

picdem2p.o : ../picdem2p/picdem2p.c ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/delays.h ../picdem2p/picdem2p.h ../picdem2p/picdem2p.c ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/p18F452.h ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/p18cxxx.h ../../../../../../Program\ Files\ (x86)/Microchip/mplabc18/v3.40/h/p18f452.h ../picdem2p/types.h
	$(CC) -p=18F452 "C:\Users\metouisa\Documents\_sources\_sys log program\picdem2p\picdem2p.c" -fo="picdem2p.o" -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-

clean : 
	$(RM) "timer.o" "picdem2p.o" "timer.cof" "timer.hex"


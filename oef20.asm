org 0000h
lcall tftinit
mov sp,#80h

mov timecon,#01010011b
mov hour,#23
mov min,#59
mov sec,#56

main:
    mov tftxpos,#0
    mov tftypos,#0
    mov a,hour
    lcall hexbcd8
    lcall tftoutbyte
    mov a,#':'
    lcall tftoutchar
    mov a,min
    lcall hexbcd8
    lcall tftoutbyte
    mov a,#':'
    lcall tftoutchar
    mov a,sec
    lcall hexbcd8
    lcall tftoutbyte
    ljmp main

#include "C:\aducgd1.inc"
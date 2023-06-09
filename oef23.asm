teller equ 11h
org 0000h
ljmp main

org 0053h
push acc
push psw
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
pop psw
pop acc
reti

main:
	mov sp,#80h
	lcall tftinit
	lcall initrtc
	lcall initcpu
    mov p2,#01111111b
here:	
	mov a,p2
    rr a 
    mov p2,a
    ljmp here

initrtc:
    mov timecon,#01000011b
    mov hour,#23
    mov min,#59
    mov sec,#56
    mov intval,#64

initcpu:
	setb ea
	mov ieip2,#00000100b
	ret

#include "C:\aducgd1.inc"
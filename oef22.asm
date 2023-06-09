teller equ 11h

org 0000h

ljmp inits

org 0053h
push acc
push psw
mov a,p2
cpl a
mov p2, a
pop psw
pop acc
reti

inits:
	mov sp,#80h
	lcall tftinit
	lcall initrtc
	lcall initcpu
	lcall default

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
default:
	mov p2,#01111111b
	mov teller,#0
	ret

#include "C:\aducgd1.inc"
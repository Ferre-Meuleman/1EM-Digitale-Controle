teller equ 11h
org 0000h
ljmp main

org 0053h
push acc
push psw
mov a,p2
rr a
mov p2, a
pop psw
pop acc
reti

main:
	mov sp,#80h
	lcall tftinit
	lcall initrtc
	lcall initcpu
	lcall default

lus:
	lcall plus
	lcall print
	mov a,#10
	lcall delaya0k05s
	ljmp lus

initrtc:
	mov timecon,#01010011b
	mov intval,#1
	ret

initcpu:
	setb ea
	mov ieip2,#00000100b
	ret

default:
	mov p2,#01111111b
	mov teller,#0
	ret

plus:
	inc teller
	ret

print: 
	mov tftxpos,#0
	mov tftypos,#0
	mov A,teller
	lcall tftoutbyte
	ret

#include "C:\aducgd1.inc"
org	0000h
mov sp,#80h

lus0:
	mov	dptr,#tabel		
lus:	
	mov	a,#000h		
	movc	a,@a+dptr
	cjne	a,#00000000b,next		
	ljmp

next:	
	mov p2,a
	mov a, P0
	lcall delaya0k05s
	inc dptr
	ljmp

tabel:	
	db	01111110b
	db	10111101b
	db	11011011b
	db	11100111b
	db	11111111b
	db	00000000b
#include	"c:\aducgd1.inc"

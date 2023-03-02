org	0000h					;start adres van het programma

lus0:		
	mov	b,#8				;gebruiken het b register als lusteller

mov	dptr,#tabel				;startadres tabel in dptr laden

lus:		
	mov	a,#000h				;noodzakelijk goede werking volgende instructie
	movc a,@a+dptr			;lees waarde uit tabl
	mov P2, a 

	mov a, P0				;schakelaars in de accu steken	
	lcall delaya0k05s		;tijdsvertraging oproepen
	inc dptr
		
	

tabel:	db	01111110b
		db	10111101b
		db	11011011b
		db	11100111b
		db 	11011011b
		db	10111101b
		db	01111110b
		db	11111111b

#include	"c:\aducgd1.inc"

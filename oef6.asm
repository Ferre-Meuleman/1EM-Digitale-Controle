org	0000h					;start adres van het programma

lus0:		
	mov	b,#3				;gebruiken het b register als lusteller (andere registers kunnen ook)
lus:
	mov	p2,#01010101b		;LED's activeren

	mov	A,#3				;schakelaars in de accu steken	
	lcall	delaya0k05s		;tijdsvertraging oproepen

	mov	p2,#11111111b		;LED's doven

	mov	A,#3				;schakelaars in de accu steken	
	lcall	delaya0k05s		;tijdsvertraging oproepen
	
djnz b,lus					;herhaal de code van "lus" tot hier b keer

mov	b,#3					;gebruiken het b register als lusteller

lus1:		
	mov	p2,#10101010b		;LED's activeren

	mov	A,#6				;schakelaars in de accu steken	
	lcall	delaya0k05s		;tijdsvertraging oproepen

	mov	p2,#11111111b		;LED's doven

	mov	A,#3				;schakelaars in de accu steken	
	lcall	delaya0k05s		;tijdsvertraging oproepen

djnz	b,lus1				;herhaal code van "lus1" tot hier b keer

ljmp	lus0				;herneem het programma vanaf lus0

#include	"c:\aducgd1.inc"

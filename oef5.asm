org	0000h					;start adres van het programma

mov	a,#01111111b			;startwaarde looplicht in accu laden

lus:	
	mov	p2,a				;LED's activeren met waarde uit accu	
	mov	A,P0				;schakelaars in de accu steken	
	lcall	delaya0k05s		;tijdsvertraging oproepen	
	mov	a,p2				;De accu herladen met de waarde uit het andere register	
	rr	a					;schuiven kan enkel in de accu

ljmp	lus					;blijf alles herhalen vanaf lus tot hier

#include	"c:\aducgd1.inc"

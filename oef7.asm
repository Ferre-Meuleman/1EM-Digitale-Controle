org	0000h				;start adres van het programma

mov	a,#01111111B		;startwaarde voor de LED's in de accu laden

lus0:	
	mov	b,#7			;tellen hoe dikwijls de lus doorlopen wordt

lus:	
	mov	p2, a			;LED's activeren met waarde uit accu
	
	mov a, P0			;schakelaars in de accu steken	
	lcall delaya0k05s	;tijdsvertraging oproepen

	mov a, P2
	rr	a				;schuiven kan enkel in de accu

djnz b,lus				;herhaal even veel keer als de waarde in b register

mov	b,#7				;waarde in b opnieuw instellen
		
lus1:		
	mov	p2, a			;LED's activeren met waarde uit accu
	
	mov a, P0			;schakelaars in de accu steken	
	lcall delaya0k05s	;tijdsvertraging oproepen

	mov a, P2
	rl	a				;schuiven kan enkel in de accu

djnz b,lus1			;herhaal even veel keer als de waarde in b register
	
ljmp lus0			;blijf alles herhalen vanaf lus tot hier

#include	"c:\aducgd1.inc"

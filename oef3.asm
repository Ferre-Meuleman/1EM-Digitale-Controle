org	0000h					;start adres van het programma

lus:		
	mov	p2,#10101010b		;LED's activeren
   
    mov	A,#10				;aantal keer dat de je 0,5s wilt wachten in de accu steken
	lcall	delaya0k05s		;oproepen delay functie
	
	mov	p2,#01010101b		;LED's doven
	
	mov	A,#10				;aantal keer dat de je 0,5s wilt wachten in de accu steken
	lcall	delaya0k05s		;oproepen delay functie

ljmp lus			;blijf alles herhalen vanaf lus tot hier

#include	"c:\aducgd1.inc"

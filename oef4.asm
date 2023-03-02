org	0000h					;start adres van het programma

lus:		
	mov	p2,#00h				;LED's activeren (kies ook eens iets anders dan 00h)
	mov	A,P0				;de waarde in de accu x0,05s is de tijdsvertraging	
	lcall	delaya0k05s		;oproepen delay functie		
	mov	p2,#ffh				;LED's doven
	mov	A,P0
	lcall	delaya0k05s 	;hier moet terug een tijdsvertraging komen (denk aan de schakelaars)

ljmp lus					;blijf alles herhalen vanaf lus tot hier

; LET OP!! DE WAARDE 00h HEEFT VOOR delaya0k05s DE WAARDE 256 !!!

#include	"c:\aducgd1.inc"

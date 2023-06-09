tellerl	equ	10h			;geheugenplaats voor lage deel 16 bit teller

org	0000h			;startadres programma
mov	sp,#80h		;startadres stack pointer laden (NOODZAKELIJK IN ELK PROGRAMMA)
lcall	inits			;functie aanroepen waarin alles klaar gezet wordt

wacht:	
	jb	p0.7,wacht		;wacht tot schakelaar ingedrukt wordt
	lcall	incteller		;functie oproepen die de teller met 1 verhoogt
	lcall	printteller
	mov a,#1
	lcall delaya0k05s			;hier de tijdsvertraging plaatsen om te ontdenderen (probeer eerst zonder)

wacht1:	
	jnb	p0.7,wacht1	
	ljmp	wacht	

inits:		
	lcall	tftinit		
	mov	tellerl,#0		
	ret				

incteller:
	inc tellerl
	ret

printteller:
	mov tftxpos, #10
	mov tftypos, #3
	mov a, tellerl
	lcall tftoutbyte
	ret

#include	"c:\aducgd1.inc"



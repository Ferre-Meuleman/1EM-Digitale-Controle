    
org 0000h			;startadres programma
mov sp,#80h			;initialisatie van de stackpointer
lcall	inits			;alles initialiseren

lus:
	lcall	meet	
	lcall	drukaf	
	lcall	meet1
	lcall	drukaf1		
	ljmp	lus			

	
inits:
	lcall tftinit	
	ret

meet:	
	mov	a,#7
	lcall	getadc			
	ret

meet1:	
	mov	a,#6
	lcall	getadc			
	ret


drukaf:
	mov tftxpos,#0
	mov tftypos,#0
	lcall tftoutbyte
	
	mov tftxpos,#0
	mov tftypos,#1
	mov r3,#01h
	mov r2,#f4h
	mov r1,#0
	mov r0,a 
	lcall mul16
	mov 00h,r1
	mov 01h,r2
	lcall hexbcd16
	mov a,r1
	lcall tftoutnib
	mov a,#','
	lcall tftoutchar
	mov a,r0
	lcall tftoutbyte
	mov a,#'V'
	lcall tftoutchar
	ret

drukaf1:
	mov tftxpos,#0
	mov tftypos,#3
	lcall tftoutbyte
	
	mov tftxpos,#0
	mov tftypos,#4
	mov r3,#01h
	mov r2,#f4h
	mov r1,#0
	mov r0,a 
	lcall mul16
	mov 00h,r1
	mov 01h,r2
	lcall hexbcd16
	mov a,r1
	lcall tftoutnib
	mov a,r0
	lcall tftoutbyte
	mov a,#'K'
	lcall tftoutchar
	ret

#include	"c:\aducgd1.inc"




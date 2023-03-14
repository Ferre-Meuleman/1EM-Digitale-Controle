org	0000h	
mov sp,#80h		
lcall	tftinit		

lus0:
	mov	r0,#000h		
	mov	r1,#000h		

lus:		
	mov	tftxpos,#0		
	mov	tftypos,#0		
	mov	a,r0
	lcall	tftoutbyte
	mov	tftxpos,#10		
	mov	a,r0
	lcall hexbcd8
	lcall tftoutbyte
	
	mov	tftxpos,#0		
	mov	tftypos,#1		
	mov	a,r1
	lcall	tftoutbyte
	mov	tftxpos,#10		
	mov	a,r1
	lcall hexbcd8
	lcall tftoutbyte
	inc	r0		
	cjne r0,#64h,next
	ljmp lus0

next: 	
	dec	r1			
	ljmp	lus			

#include	"c:\aducgd1.inc"

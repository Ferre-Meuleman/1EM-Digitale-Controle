org	0000h			;start adres van het programma
mov sp,#80h
lcall	tftinit		;we gaan ook het LCD scherm gebruiken

lus:	
	mov	tftxpos,#0		;zet cursor eerste karakter lijn
	mov	tftypos,#0		;selecteer eerste lijn
	mov	dptr,#naam			;in DPTR adres tabel laden
	lcall	tftoutmsga
	mov	tftxpos,#0		;zet cursor eerste karakter lijn
	mov	tftypos,#1		;selecteer eerste lijn
	mov	dptr,#naam1			;in DPTR adres tabel laden
	lcall	tftoutmsga			;afdrukken wat in de tabel staat

lus1:		
	ljmp lus1			;de CPU moet bezig blijven, dus laten hem in een lus hangen


naam:		db	"Jan X",00h		;waarom staat de 00 in de tabel?
naam1:		db	"Ferre !",00h
#include	"c:\aducgd1.inc"

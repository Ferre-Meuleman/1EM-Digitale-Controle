uren		equ	10h			;adres waar we de ueren opslaan
minuten		equ	11h			;idem minuten
seconden	equ	12h			;idem seconden

org	0000h			;start adres van het programma
mov sp,#80h
lcall	tftinit		;we gaan ook het LCD scherm gebruiken

mov	uren,#23		;startwaarde uurwerk laden
mov	minuten,#59		;idem
mov	seconden,#56		;idem

lus:	
	mov	tftxpos,#0		;zet cursor op eerste karakter lijn
	mov	tftypos,#0		;selecteer bovenste lijn
	
    mov	a,uren			;drukken uren af
	lcall	hexbcd8		;moet decimaal gebeuren
	lcall	tftoutbyte
    
    mov	a,#':'			;ascii code : in accu laden
    lcall	tftoutchar		;afdrukken
	
    mov	a,minuten			;drukken uren af
	lcall	hexbcd8		;moet decimaal gebeuren
	lcall	tftoutbyte
    
    mov	a,#':'			;ascii code : in accu laden
	lcall	tftoutchar		;afdrukken
	
    mov	a,seconden			;drukken uren af
	lcall	hexbcd8		;moet decimaal gebeuren
	lcall	tftoutbyte

	inc	seconden		
	mov	a,seconden		
	cjne a,#60,verder
	mov seconden,#0
	
	inc	minuten
	mov	a,minuten
	cjne a,#60,verder
	mov minuten, #0
	
	inc	uren
	mov	a,uren
	cjne a,#24,verder	
	Mov uren,#0	
verder:	
	   mov a,#20
	   lcall delaya0k05s
	   ljmp	lus			;blijf dit herhalen

#include	"c:\aducgd1.inc"


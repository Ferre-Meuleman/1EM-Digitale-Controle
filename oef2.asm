org	0000h					;start adres van het programma

lus:	
	mov	p2,#10101010b 		; schrijf #10101010b naar LEDs
    mov	p2,#01010101b		; schrijf #01010101b naar LEDs

ljmp lus					;blijf alles herhalen vanaf lus tot hier

; WAAROM ZIE JE NIET WAT JE VERWACHT?
; Zit geen delay dus leds flikkeren enorm snel --> altijd aan voor menselijk oog

#include	"c:\aducgd1.inc"

org	0000h				;start adres van het programma

lus:
    MOV P2,P0           ; kopieer schakelaars naar LED

ljmp lus			; spring naar label lus en blijf alles herhalen tot hier

#include	"c:\aducgd1.inc"

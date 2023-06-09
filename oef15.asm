overname equ 10h
org	0000h

mov sp,#80h
mov overname,#0

main:
	jb	p0.7,main1
	mov	overname,#1
	
leds1:
	
	lcall looplicht1
	ljmp main

main1:
	jb	p0.6,main2
	mov	overname,#2

leds2:
	lcall looplicht2
	ljmp main

main2:
	jb	p0.5,main3	
	mov	overname,#3

leds3:
	lcall looplicht3
	ljmp main

main3:
	jb	p0.4,main4
	mov	overname,#4

leds4:
	lcall looplicht4
	ljmp main	

main4:
	mov a,overname
	cjne a,#1,main5
	ljmp leds1

main5:
	mov a,overname
	cjne a,#2,main6
	ljmp leds2

main6:
	mov a,overname
	cjne a,#3,main7
	ljmp leds3

main7:
	mov a,overname
	cjne a,#4,main
	ljmp leds4



looplicht1:
	mov p2,#11111111b
	mov a,#2
	lcall delaya0k05s
	mov p2,#00000000b
	mov a,#2
	lcall delaya0k05s
	ret

looplicht2:
	mov p2,#10101010b
	mov a,#2
	lcall delaya0k05s
	mov p2,#01010101b
	mov a,#2
	lcall delaya0k05s
	ret

looplicht3:
	
	ret
looplicht4:
	ret
#include	"c:\aducgd1.inc"

	.file	"rc4_drop3072.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 15 */
/* stack size = 17 */
.L__stack_usage = 17
	std Y+11,r25
	std Y+10,r24
	std Y+13,r23
	std Y+12,r22
	std Y+15,r21
	std Y+14,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .L3
	brlt .L3
	std Y+3,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	rjmp .L4
.L6:
	ldd r24,Y+3
	mov r18,r24
	ldi r19,0
	ldd r24,Y+4
	ldd r25,Y+5
	ldd r20,Y+10
	ldd r21,Y+11
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	add r18,r24
	adc r19,r25
	ldd r24,Y+4
	ldd r25,Y+5
	ldd r20,Y+14
	ldd r21,Y+15
	movw r22,r20
	call __udivmodhi4
	movw r20,r24
	ldd r24,Y+12
	ldd r25,Y+13
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	add r24,r18
	adc r25,r19
	andi r25,128
	tst r25
	brge .L5
	sbiw r24,1
	ori r25,255
	adiw r24,1
.L5:
	std Y+3,r24
	ldd r24,Y+4
	ldd r25,Y+5
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+9,r24
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	ldd r18,Y+10
	ldd r19,Y+11
	add r18,r24
	adc r19,r25
	ldd r24,Y+4
	ldd r25,Y+5
	ldd r20,Y+10
	ldd r21,Y+11
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	ldd r18,Y+9
	movw r30,r24
	st Z,r18
	ldd r24,Y+4
	ldd r25,Y+5
	adiw r24,1
	std Y+5,r25
	std Y+4,r24
.L4:
	ldd r24,Y+4
	ldd r25,Y+5
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .+2
	brge .+2
	rjmp .L6
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	rjmp .L7
.L9:
	ldd r24,Y+6
	ldd r25,Y+7
	andi r25,128
	tst r25
	brge .L8
	sbiw r24,1
	ori r25,255
	adiw r24,1
.L8:
	movw r18,r24
	ldd r24,Y+10
	ldd r25,Y+11
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+8,r24
	ldd r24,Y+6
	ldd r25,Y+7
	adiw r24,1
	std Y+7,r25
	std Y+6,r24
.L7:
	ldd r24,Y+6
	ldd r25,Y+7
	cp r24,__zero_reg__
	sbci r25,12
	brlt .L9
	nop
/* epilogue start */
	adiw r28,15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (GNU) 7.3.0"

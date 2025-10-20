	.file	"prng_mersenne.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+8,r25
	std Y+7,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L4:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r16,r24
	movw r18,r26
	clr r16
	clr r17
	clr r18
	andi r19,128
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	ldi r20,lo8(112)
	ldi r21,lo8(2)
	movw r22,r20
	call __divmodhi4
	ldd r20,Y+7
	ldd r21,Y+8
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	andi r27,127
	or r24,r16
	or r25,r17
	or r26,r18
	or r27,r19
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,115
	sbci r25,-2
	ldi r18,lo8(112)
	ldi r19,lo8(2)
	movw r22,r18
	call __divmodhi4
	ldd r18,Y+7
	ldd r19,Y+8
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	lsr r27
	ror r26
	ror r25
	ror r24
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r18,r20
	adc r19,r21
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	andi r24,1
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L3
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	ldi r31,223
	eor r24,r31
	ldi r31,176
	eor r25,r31
	ldi r31,8
	eor r26,r31
	ldi r31,153
	eor r27,r31
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r18,r20
	adc r19,r21
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,112
	sbci r25,2
	brge .+2
	rjmp .L4
	ldd r24,Y+7
	ldd r25,Y+8
	subi r24,64
	sbci r25,-10
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	nop
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (GNU) 7.3.0"

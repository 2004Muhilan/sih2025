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
	push r4
	push r5
	push r6
	push r7
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r12,r24
	movw r14,r24
	ldi r29,0
	ldi r28,0
	ldi r19,lo8(112)
	mov r10,r19
	ldi r19,lo8(2)
	mov r11,r19
.L4:
	movw r30,r14
	ld r4,Z+
	ld r5,Z+
	ld r6,Z+
	ld r7,Z+
	movw r14,r30
	adiw r28,1
	movw r24,r28
	movw r22,r10
	call __divmodhi4
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r12
	adc r31,r13
	ld r16,Z
	ldd r17,Z+1
	ldd r18,Z+2
	ldd r19,Z+3
	andi r19,127
	clr r4
	clr r5
	clr r6
	ldi r31,128
	and r7,r31
	or r16,r4
	or r17,r5
	or r18,r6
	or r19,r7
	movw r24,r28
	subi r24,116
	sbci r25,-2
	movw r22,r10
	call __divmodhi4
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r12
	adc r31,r13
	movw r26,r18
	movw r24,r16
	lsr r27
	ror r26
	ror r25
	ror r24
	ld r20,Z
	ldd r21,Z+1
	ldd r22,Z+2
	ldd r23,Z+3
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	movw r30,r14
	sbiw r30,4
	sbrs r16,0
	rjmp .L6
	ldi r18,223
	eor r24,r18
	ldi r18,176
	eor r25,r18
	ldi r18,8
	eor r26,r18
	ldi r18,153
	eor r27,r18
.L6:
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	cpi r28,112
	ldi r24,2
	cpc r29,r24
	breq .+2
	rjmp .L4
	movw r30,r12
	subi r30,64
	sbci r31,-10
	std Z+1,__zero_reg__
	st Z,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (GNU) 7.3.0"

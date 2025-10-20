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
	push r6
	push r7
	push r8
	push r9
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
	movw r18,r24
	movw r6,r24
	ldi r31,0
	ldi r30,0
	ldi r16,lo8(112)
	ldi r17,lo8(2)
.L4:
	movw r26,r6
	ld r8,X+
	ld r9,X+
	ld r10,X+
	ld r11,X+
	movw r6,r26
	adiw r30,1
	movw r24,r30
	movw r22,r16
	call __divmodhi4
	movw r26,r24
	lsl r26
	rol r27
	lsl r26
	rol r27
	add r26,r18
	adc r27,r19
	ld r12,X+
	ld r13,X+
	ld r14,X+
	ld r15,X
	clt
	bld r15,7
	clr r8
	clr r9
	clr r10
	ldi r27,128
	and r11,r27
	or r12,r8
	or r13,r9
	or r14,r10
	or r15,r11
	movw r24,r30
	subi r24,116
	sbci r25,-2
	movw r22,r16
	call __divmodhi4
	movw r20,r24
	lsl r20
	rol r21
	lsl r20
	rol r21
	add r20,r18
	adc r21,r19
	movw r8,r12
	movw r10,r14
	lsr r11
	ror r10
	ror r9
	ror r8
	movw r28,r20
	ld r20,Y
	ldd r21,Y+1
	ldd r22,Y+2
	ldd r23,Y+3
	movw r26,r10
	movw r24,r8
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	movw r20,r6
	subi r20,4
	sbc r21,__zero_reg__
	sbrc r12,0
	rjmp .L2
.L6:
	movw r28,r20
	st Y,r24
	std Y+1,r25
	std Y+2,r26
	std Y+3,r27
	cpi r30,112
	ldi r29,2
	cpc r31,r29
	breq .+2
	rjmp .L4
	subi r18,64
	sbci r19,-10
	movw r30,r18
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
	pop r9
	pop r8
	pop r7
	pop r6
	ret
.L2:
	ldi r29,223
	eor r24,r29
	ldi r29,176
	eor r25,r29
	ldi r29,8
	eor r26,r29
	ldi r29,153
	eor r27,r29
	rjmp .L6
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (GNU) 7.3.0"

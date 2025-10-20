	.file	"prng_pcg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__muldi3
.global	prng_pcg
	.type	prng_pcg, @function
prng_pcg:
	push r2
	push r3
	push r4
	push r5
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
/* stack size = 18 */
.L__stack_usage = 18
	movw r28,r24
	ld r2,Y
	ldd r3,Y+1
	ldd r4,Y+2
	ldd r5,Y+3
	ldd r6,Y+4
	ldd r7,Y+5
	ldd r8,Y+6
	ldd r9,Y+7
	ldi r24,lo8(45)
	mov r10,r24
	ldi r25,lo8(127)
	mov r11,r25
	ldi r18,lo8(-107)
	mov r12,r18
	ldi r19,lo8(76)
	mov r13,r19
	ldi r20,lo8(45)
	mov r14,r20
	ldi r21,lo8(-12)
	mov r15,r21
	ldi r16,lo8(81)
	ldi r17,lo8(88)
	movw r18,r2
	movw r20,r4
	movw r22,r6
	movw r24,r8
	call __muldi3
	ldi r26,lo8(1)
	call __adddi3_s8
	st Y,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+4,r22
	std Y+5,r23
	std Y+6,r24
	std Y+7,r25
	movw r18,r2
	movw r20,r4
	movw r22,r6
	movw r24,r8
	ldi r16,lo8(18)
	call __lshrdi3
	eor r18,r2
	eor r19,r3
	eor r20,r4
	eor r21,r5
	eor r22,r6
	eor r23,r7
	eor r24,r8
	eor r25,r9
	ldi r16,lo8(27)
	call __lshrdi3
	mov r27,r18
	mov r26,r19
	mov r31,r20
	mov r30,r21
	movw r18,r2
	movw r20,r4
	movw r22,r6
	movw r24,r8
	ldi r16,lo8(59)
	call __lshrdi3
	movw r8,r18
	mov r20,r27
	mov r21,r26
	mov r22,r31
	mov r23,r30
	movw r4,r20
	movw r6,r22
	mov r0,r8
	rjmp 2f
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	2:
	dec r0
	brpl 1b
	clr r24
	clr r25
	sub r24,r8
	sbc r25,r9
	andi r24,lo8(31)
	movw r16,r20
	movw r18,r22
	rjmp 2f
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	2:
	dec r24
	brpl 1b
	movw r24,r18
	movw r22,r16
	or r22,r4
	or r23,r5
	or r24,r6
	or r25,r7
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
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (GNU) 7.3.0"

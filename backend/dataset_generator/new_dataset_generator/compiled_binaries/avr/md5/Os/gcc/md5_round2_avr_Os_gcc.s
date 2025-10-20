	.file	"md5_round2.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	md5_round2
	.type	md5_round2, @function
md5_round2:
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	ldd r30,Y+19
	ldd r4,Y+23
	ldd r5,Y+24
	ldd r6,Y+25
	ldd r7,Y+26
	add r4,r8
	adc r5,r9
	adc r6,r10
	adc r7,r11
	movw r26,r24
	ld r8,X+
	ld r9,X+
	ld r10,X+
	ld r11,X
	add r8,r4
	adc r9,r5
	adc r10,r6
	adc r11,r7
	movw r4,r20
	movw r6,r22
	eor r4,r16
	eor r5,r17
	eor r6,r18
	eor r7,r19
	and r12,r4
	and r13,r5
	and r14,r6
	and r15,r7
	eor r16,r12
	eor r17,r13
	eor r18,r14
	eor r19,r15
	add r16,r8
	adc r17,r9
	adc r18,r10
	adc r19,r11
	rjmp 2f
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	2:
	dec r30
	brpl 1b
	add r20,r16
	adc r21,r17
	adc r22,r18
	adc r23,r19
	movw r30,r24
	st Z,r20
	std Z+1,r21
	std Z+2,r22
	std Z+3,r23
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
	ret
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (GNU) 7.3.0"

	.file	"md5_round3.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	md5_round3
	.type	md5_round3, @function
md5_round3:
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
/* stack size = 12 */
.L__stack_usage = 12
	ldd r30,Y+15
	eor r16,r12
	eor r17,r13
	eor r18,r14
	eor r19,r15
	eor r16,r20
	eor r17,r21
	eor r18,r22
	eor r19,r23
	ldd r12,Y+19
	ldd r13,Y+20
	ldd r14,Y+21
	ldd r15,Y+22
	add r8,r12
	adc r9,r13
	adc r10,r14
	adc r11,r15
	add r16,r8
	adc r17,r9
	adc r18,r10
	adc r19,r11
	movw r26,r24
	ld r8,X+
	ld r9,X+
	ld r10,X+
	ld r11,X
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
	ret
	.size	md5_round3, .-md5_round3
	.ident	"GCC: (GNU) 7.3.0"

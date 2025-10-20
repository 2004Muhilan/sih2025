	.file	"md5_round1.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	md5_round1
	.type	md5_round1, @function
md5_round1:
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
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 30 */
.L__stack_usage = 30
	std Y+2,r25
	std Y+1,r24
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r16
	std Y+8,r17
	std Y+9,r18
	std Y+10,r19
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r8
	std Y+16,r9
	std Y+17,r10
	std Y+18,r11
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r14,Y+3
	ldd r15,Y+4
	ldd r16,Y+5
	ldd r17,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	and r14,r24
	and r15,r25
	and r16,r26
	and r17,r27
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	movw r10,r24
	movw r12,r26
	com r10
	com r11
	com r12
	com r13
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	and r24,r10
	and r25,r11
	and r26,r12
	and r27,r13
	or r24,r14
	or r25,r15
	or r26,r16
	or r27,r17
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldd r24,Y+37
	ldd r25,Y+38
	ldd r26,Y+39
	ldd r27,Y+40
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	ldd r18,Y+33
	ldd r19,Y+34
	movw r14,r24
	movw r16,r26
	rjmp 2f
	1:
	lsl r14
	rol r15
	rol r16
	rol r17
	2:
	dec r18
	brpl 1b
	movw r20,r16
	movw r18,r14
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	nop
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	.size	md5_round1, .-md5_round1
	.ident	"GCC: (GNU) 7.3.0"

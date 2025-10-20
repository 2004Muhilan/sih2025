	.file	"sha1_round1.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round1
	.type	sha1_round1, @function
sha1_round1:
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
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 24 */
.L__stack_usage = 24
	movw r4,r22
	movw r6,r24
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	movw r26,r22
	movw r24,r20
	subi r24,103
	sbci r25,-122
	sbci r26,125
	sbci r27,-91
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r20,Y+29
	ldd r21,Y+30
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	movw r26,r6
	movw r24,r4
	ldi r22,5
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r22
	brne 1b
	ldi r23,27
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r23
	brne 1b
	or r24,r4
	or r25,r5
	or r26,r6
	or r27,r7
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	eor r14,r10
	eor r15,r11
	eor r16,r12
	eor r17,r13
	ldd r6,Y+5
	ldd r7,Y+6
	ldd r8,Y+7
	ldd r9,Y+8
	and r14,r6
	and r15,r7
	and r16,r8
	and r17,r9
	eor r10,r14
	eor r11,r15
	eor r12,r16
	eor r13,r17
	movw r22,r24
	movw r24,r26
	add r22,r10
	adc r23,r11
	adc r24,r12
	adc r25,r13
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
	.size	sha1_round1, .-sha1_round1
	.ident	"GCC: (GNU) 7.3.0"

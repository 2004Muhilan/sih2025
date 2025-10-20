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
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 26 */
.L__stack_usage = 26
	movw r4,r22
	movw r6,r24
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	ldd r20,Y+33
	ldd r21,Y+34
	ldd r22,Y+35
	ldd r23,Y+36
	movw r26,r22
	movw r24,r20
	subi r24,103
	sbci r25,-122
	sbci r26,125
	sbci r27,-91
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	movw r22,r6
	movw r20,r4
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	mov r0,r19
	ldi r19,27
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r19
	brne 1b
	mov r19,r0
	or r4,r20
	or r5,r21
	or r6,r22
	or r7,r23
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
	eor r14,r10
	eor r15,r11
	eor r16,r12
	eor r17,r13
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	and r14,r18
	and r15,r19
	and r16,r20
	and r17,r21
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
	adiw r28,12
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	sha1_round1, .-sha1_round1
	.ident	"GCC: (GNU) 7.3.0"

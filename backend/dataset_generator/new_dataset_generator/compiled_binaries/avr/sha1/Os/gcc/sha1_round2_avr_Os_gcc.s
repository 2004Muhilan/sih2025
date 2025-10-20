	.file	"sha1_round2.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round2
	.type	sha1_round2, @function
sha1_round2:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r4,r22
	movw r6,r24
	eor r14,r10
	eor r15,r11
	eor r16,r12
	eor r17,r13
	eor r14,r18
	eor r15,r19
	eor r16,r20
	eor r17,r21
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
	subi r24,95
	sbci r25,20
	sbci r26,38
	sbci r27,-111
	ldd r20,Y+17
	ldd r21,Y+18
	ldd r22,Y+19
	ldd r23,Y+20
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	movw r22,r24
	movw r24,r26
	add r22,r14
	adc r23,r15
	adc r24,r16
	adc r25,r17
	movw r18,r6
	movw r16,r4
	ldi r20,5
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	dec r20
	brne 1b
	ldi r21,27
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r21
	brne 1b
	or r4,r16
	or r5,r17
	or r6,r18
	or r7,r19
	add r22,r4
	adc r23,r5
	adc r24,r6
	adc r25,r7
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
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (GNU) 7.3.0"

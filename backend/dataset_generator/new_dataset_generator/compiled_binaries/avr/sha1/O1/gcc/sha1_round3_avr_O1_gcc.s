	.file	"sha1_round3.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round3
	.type	sha1_round3, @function
sha1_round3:
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
	movw r26,r16
	movw r24,r14
	or r24,r10
	or r25,r11
	or r26,r12
	or r27,r13
	and r24,r18
	and r25,r19
	and r26,r20
	and r27,r21
	and r14,r10
	and r15,r11
	and r16,r12
	and r17,r13
	or r14,r24
	or r15,r25
	or r16,r26
	or r17,r27
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
	subi r24,36
	sbci r25,67
	sbci r26,-28
	sbci r27,112
	ldd r20,Y+17
	ldd r21,Y+18
	ldd r22,Y+19
	ldd r23,Y+20
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	movw r26,r6
	movw r24,r4
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
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
	or r24,r4
	or r25,r5
	or r26,r6
	or r27,r7
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	movw r24,r22
	movw r22,r20
	add r22,r14
	adc r23,r15
	adc r24,r16
	adc r25,r17
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
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (GNU) 7.3.0"

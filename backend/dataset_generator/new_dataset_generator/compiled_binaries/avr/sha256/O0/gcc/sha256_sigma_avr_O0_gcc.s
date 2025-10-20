	.file	"sha256_sigma.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_sigma0
	.type	sha256_sigma0, @function
sha256_sigma0:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r14,r24
	movw r16,r26
	lsr r17
	ror r16
	ror r15
	ror r14
	lsr r17
	ror r16
	ror r15
	ror r14
	movw r18,r24
	movw r20,r26
	mov r0,r17
	ldi r17,30
	1:
	lsl r18
	rol r19
	rol r20
	rol r21
	dec r17
	brne 1b
	mov r17,r0
	or r18,r14
	or r19,r15
	or r20,r16
	or r21,r17
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r14,r24
	movw r16,r26
	mov r0,r29
	ldi r29,13
	1:
	lsr r17
	ror r16
	ror r15
	ror r14
	dec r29
	brne 1b
	mov r29,r0
	mov r0,r23
	ldi r23,19
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r23
	brne 1b
	mov r23,r0
	or r24,r14
	or r25,r15
	or r26,r16
	or r27,r17
	eor r18,r24
	eor r19,r25
	eor r20,r26
	eor r21,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r14,r24
	movw r16,r26
	mov r0,r29
	ldi r29,10
	1:
	lsl r14
	rol r15
	rol r16
	rol r17
	dec r29
	brne 1b
	mov r29,r0
	mov r0,r23
	ldi r23,22
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	or r24,r14
	or r25,r15
	or r26,r16
	or r27,r17
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	movw r22,r24
	movw r24,r26
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	sha256_sigma0, .-sha256_sigma0
.global	sha256_sigma1
	.type	sha256_sigma1, @function
sha256_sigma1:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r14,r24
	movw r16,r26
	set
	bld __zero_reg__,6-1
	1:
	lsr r17
	ror r16
	ror r15
	ror r14
	lsr __zero_reg__
	brne 1b
	movw r18,r24
	movw r20,r26
	mov r0,r17
	ldi r17,26
	1:
	lsl r18
	rol r19
	rol r20
	rol r21
	dec r17
	brne 1b
	mov r17,r0
	or r18,r14
	or r19,r15
	or r20,r16
	or r21,r17
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r14,r24
	movw r16,r26
	mov r0,r29
	ldi r29,11
	1:
	lsr r17
	ror r16
	ror r15
	ror r14
	dec r29
	brne 1b
	mov r29,r0
	mov r0,r23
	ldi r23,21
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r23
	brne 1b
	mov r23,r0
	or r24,r14
	or r25,r15
	or r26,r16
	or r27,r17
	movw r14,r18
	movw r16,r20
	eor r14,r24
	eor r15,r25
	eor r16,r26
	eor r17,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r18,r24
	movw r20,r26
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	mov r0,r23
	ldi r23,25
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	or r24,r18
	or r25,r19
	or r26,r20
	or r27,r21
	eor r24,r14
	eor r25,r15
	eor r26,r16
	eor r27,r17
	movw r22,r24
	movw r24,r26
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (GNU) 7.3.0"

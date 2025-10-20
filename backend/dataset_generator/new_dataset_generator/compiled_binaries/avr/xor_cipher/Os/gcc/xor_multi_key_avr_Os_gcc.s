	.file	"xor_multi_key.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r14,r22
	movw r12,r20
	movw r28,r24
	ldi r31,0
	ldi r30,0
.L2:
	cp r30,r14
	cpc r31,r15
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L3:
	movw r24,r30
	movw r22,r16
	call __udivmodhi4
	movw r20,r24
	movw r26,r12
	add r26,r24
	adc r27,r25
	ld r25,X
	ld r24,Y
	eor r25,r24
	st Y,r25
	add r20,r18
	adc r21,r19
	movw r26,r20
	ld r24,X
	eor r25,r24
	st Y+,r25
	adiw r30,1
	rjmp .L2
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (GNU) 7.3.0"

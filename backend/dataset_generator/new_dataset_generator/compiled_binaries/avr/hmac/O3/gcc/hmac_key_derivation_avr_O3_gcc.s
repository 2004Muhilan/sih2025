	.file	"hmac_key_derivation.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_key_derive
	.type	hmac_key_derive, @function
hmac_key_derive:
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
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	movw r12,r22
	movw r14,r20
	movw r28,r16
	ldi r31,0
	ldi r30,0
.L2:
	movw r24,r30
	movw r22,r12
	call __udivmodhi4
	movw r16,r10
	add r16,r24
	adc r17,r25
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r20,r14
	add r20,r24
	adc r21,r25
	movw r26,r16
	ld r24,X
	movw r26,r20
	ld r25,X
	eor r24,r25
	st Y+,r24
	adiw r30,1
	cpi r30,32
	cpc r31,__zero_reg__
	brne .L2
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
	ret
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (GNU) 7.3.0"

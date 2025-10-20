	.file	"ecc_avr_add_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_add_16bit_avr
	.type	ecc_add_16bit_avr, @function
ecc_add_16bit_avr:
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
	movw r12,r18
	movw r30,r24
	add r30,r20
	adc r31,r21
	ldi r28,lo8(1)
	ldi r29,0
	cpi r30,-15
	ldi r16,-1
	cpc r31,r16
	brsh .L2
	ldi r29,0
	ldi r28,0
.L2:
	ldi r19,lo8(-15)
	movw r20,r28
	mulsu r19,r20
	movw r26,r0
	mul r19,r21
	add r27,r0
	clr __zero_reg__
	movw r28,r30
	sub r28,r26
	sbc r29,r27
	movw r18,r12
	add r18,r22
	adc r19,r23
	ldi r22,lo8(1)
	ldi r23,0
	cpi r18,-15
	ldi r21,-1
	cpc r19,r21
	brsh .L3
	ldi r23,0
	ldi r22,0
.L3:
	ldi r17,lo8(-15)
	mulsu r17,r22
	movw r30,r0
	mul r17,r23
	add r31,r0
	clr __zero_reg__
	movw r22,r18
	sub r22,r30
	sbc r23,r31
	movw r24,r28
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
	.size	ecc_add_16bit_avr, .-ecc_add_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"

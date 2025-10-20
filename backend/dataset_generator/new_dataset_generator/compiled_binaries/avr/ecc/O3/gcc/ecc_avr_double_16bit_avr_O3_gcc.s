	.file	"ecc_avr_double_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_double_16bit_avr
	.type	ecc_double_16bit_avr, @function
ecc_double_16bit_avr:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r20,r24
	lsl r20
	rol r21
	ldi r18,lo8(1)
	ldi r19,0
	cpi r20,-15
	ldi r30,-1
	cpc r21,r30
	brsh .L2
	ldi r19,0
	ldi r18,0
.L2:
	ldi r17,lo8(-15)
	mulsu r17,r18
	movw r30,r0
	mul r17,r19
	add r31,r0
	clr __zero_reg__
	movw r18,r20
	sub r18,r30
	sbc r19,r31
	movw r26,r22
	lsl r26
	rol r27
	ldi r20,lo8(1)
	ldi r21,0
	cpi r26,-15
	ldi r24,-1
	cpc r27,r24
	brsh .L3
	ldi r21,0
	ldi r20,0
.L3:
	ldi r22,lo8(-15)
	mulsu r22,r20
	movw r30,r0
	mul r22,r21
	add r31,r0
	clr __zero_reg__
	movw r22,r26
	sub r22,r30
	sbc r23,r31
	movw r24,r18
/* epilogue start */
	pop r17
	ret
	.size	ecc_double_16bit_avr, .-ecc_double_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"

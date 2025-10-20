	.file	"ecc_avr_shared_secret.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_shared_avr
	.type	ecc_shared_avr, @function
ecc_shared_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r21,0
	mul r20,r22
	movw r30,r0
	mul r20,r23
	add r31,r0
	mul r21,r22
	add r31,r0
	clr r1
	ldi r18,lo8(1)
	ldi r19,0
	cpi r30,-15
	ldi r24,-1
	cpc r31,r24
	brsh .L2
	ldi r19,0
	ldi r18,0
.L2:
	ldi r22,lo8(-15)
	mulsu r22,r18
	movw r20,r0
	mul r22,r19
	add r21,r0
	clr __zero_reg__
	movw r24,r30
	sub r24,r20
	sbc r25,r21
/* epilogue start */
	ret
	.size	ecc_shared_avr, .-ecc_shared_avr
	.ident	"GCC: (GNU) 7.3.0"

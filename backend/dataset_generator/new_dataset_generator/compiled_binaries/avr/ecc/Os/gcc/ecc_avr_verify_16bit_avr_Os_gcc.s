	.file	"ecc_avr_verify_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_verify_avr
	.type	ecc_verify_avr, @function
ecc_verify_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,r18
	cpc r23,r19
	brne .L4
	ldi r30,lo8(1)
	cp r24,r20
	cpc r25,r21
	breq .L3
	ldi r30,0
.L3:
	mov r24,r30
	ret
.L4:
	ldi r24,0
/* epilogue start */
	ret
	.size	ecc_verify_avr, .-ecc_verify_avr
	.ident	"GCC: (GNU) 7.3.0"

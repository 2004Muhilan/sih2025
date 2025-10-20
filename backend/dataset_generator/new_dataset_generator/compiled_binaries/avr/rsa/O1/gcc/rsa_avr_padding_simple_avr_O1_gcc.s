	.file	"rsa_avr_padding_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_pad_avr
	.type	rsa_pad_avr, @function
rsa_pad_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r22,lo8(16)
	brsh .L1
	mov r18,r22
	ldi r19,0
	movw r30,r24
	add r30,r18
	adc r31,r19
	adiw r24,1
	add r18,r24
	adc r19,r25
	ldi r24,lo8(15)
	sub r24,r22
	add r24,r18
	mov r25,r19
	adc r25,__zero_reg__
	ldi r18,lo8(-1)
.L3:
	st Z+,r18
	cp r30,r24
	cpc r31,r25
	brne .L3
.L1:
/* epilogue start */
	ret
	.size	rsa_pad_avr, .-rsa_pad_avr
	.ident	"GCC: (GNU) 7.3.0"

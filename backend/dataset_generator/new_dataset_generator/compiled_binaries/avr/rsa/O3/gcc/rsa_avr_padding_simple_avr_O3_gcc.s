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
	movw r18,r24
	mov r24,r22
	cpi r22,lo8(16)
	brsh .L1
	ldi r20,lo8(15)
	sub r20,r22
	ldi r21,0
	subi r20,-1
	sbci r21,-1
	ldi r22,lo8(-1)
	ldi r23,0
	add r24,r18
	mov r25,r19
	adc r25,__zero_reg__
	jmp memset
.L1:
/* epilogue start */
	ret
	.size	rsa_pad_avr, .-rsa_pad_avr
	.ident	"GCC: (GNU) 7.3.0"

	.file	"des_avr_feistel.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_feistel_avr
	.type	des_feistel_avr, @function
des_feistel_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r20
	ld r18,Z
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+1
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+2
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+3
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+4
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+5
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+6
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	ldd r18,Z+7
	eor r22,r18
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
/* epilogue start */
	ret
	.size	des_feistel_avr, .-des_feistel_avr
	.ident	"GCC: (GNU) 7.3.0"

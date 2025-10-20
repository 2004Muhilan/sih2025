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
	movw r18,r20
	subi r18,-8
	sbci r19,-1
.L2:
	movw r26,r20
	ld r30,X+
	movw r20,r26
	eor r22,r30
	lsl r22
	rol r23
	rol r24
	rol r25
	adc r22,__zero_reg__
	cp r26,r18
	cpc r27,r19
	brne .L2
/* epilogue start */
	ret
	.size	des_feistel_avr, .-des_feistel_avr
	.ident	"GCC: (GNU) 7.3.0"

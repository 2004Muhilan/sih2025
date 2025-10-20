	.file	"sha1_avr_update_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_update_avr
	.type	sha1_update_avr, @function
sha1_update_avr:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r30,r22
	movw r18,r24
	subi r18,-20
	sbci r19,-1
.L2:
	movw r26,r24
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X+
	movw r24,r26
	ld r28,Z+
	sbiw r26,4
	add r20,r28
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	st X+,r20
	st X+,r21
	st X+,r22
	st X,r23
	sbiw r26,3
	cp r24,r18
	cpc r25,r19
	brne .L2
/* epilogue start */
	pop r28
	ret
	.size	sha1_update_avr, .-sha1_update_avr
	.ident	"GCC: (GNU) 7.3.0"

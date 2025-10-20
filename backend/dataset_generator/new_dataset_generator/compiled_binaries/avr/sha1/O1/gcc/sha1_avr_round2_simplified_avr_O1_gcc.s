	.file	"sha1_avr_round2_simplified.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round2_avr
	.type	sha1_round2_avr, @function
sha1_round2_avr:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r16,Z+4
	ldd r17,Z+5
	ldd r18,Z+6
	ldd r19,Z+7
	ldd r24,Z+8
	ldd r25,Z+9
	ldd r26,Z+10
	ldd r27,Z+11
	eor r24,r16
	eor r25,r17
	eor r26,r18
	eor r27,r19
	ldd r16,Z+12
	ldd r17,Z+13
	ldd r18,Z+14
	ldd r19,Z+15
	eor r16,r24
	eor r17,r25
	eor r18,r26
	eor r19,r27
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	movw r22,r18
	movw r20,r16
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	st Z,r20
	std Z+1,r21
	std Z+2,r22
	std Z+3,r23
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	sha1_round2_avr, .-sha1_round2_avr
	.ident	"GCC: (GNU) 7.3.0"

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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	movw r26,r22
	ld r24,X
	ld r20,Z
	ldd r21,Z+1
	ldd r22,Z+2
	ldd r23,Z+3
	add r20,r24
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	st Z,r20
	std Z+1,r21
	std Z+2,r22
	std Z+3,r23
	adiw r26,1
	ld r24,X
	sbiw r26,1
	ldd r20,Z+4
	ldd r21,Z+5
	ldd r22,Z+6
	ldd r23,Z+7
	add r20,r24
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	std Z+4,r20
	std Z+5,r21
	std Z+6,r22
	std Z+7,r23
	adiw r26,2
	ld r24,X
	sbiw r26,2
	ldd r20,Z+8
	ldd r21,Z+9
	ldd r22,Z+10
	ldd r23,Z+11
	add r20,r24
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	std Z+8,r20
	std Z+9,r21
	std Z+10,r22
	std Z+11,r23
	adiw r26,3
	ld r24,X
	sbiw r26,3
	ldd r20,Z+12
	ldd r21,Z+13
	ldd r22,Z+14
	ldd r23,Z+15
	add r20,r24
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	std Z+12,r20
	std Z+13,r21
	std Z+14,r22
	std Z+15,r23
	adiw r26,4
	ld r18,X
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	add r24,r18
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	std Z+16,r24
	std Z+17,r25
	std Z+18,r26
	std Z+19,r27
/* epilogue start */
	ret
	.size	sha1_update_avr, .-sha1_update_avr
	.ident	"GCC: (GNU) 7.3.0"

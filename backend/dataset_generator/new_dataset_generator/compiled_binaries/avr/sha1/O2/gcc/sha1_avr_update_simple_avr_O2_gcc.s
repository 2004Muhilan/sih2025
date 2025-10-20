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
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	movw r16,r22
	movw r22,r24
	subi r22,-20
	sbci r23,-1
.L2:
	ld r24,Z+
	ld r25,Z+
	ld r26,Z+
	ld r27,Z+
	movw r28,r16
	ld r20,Y+
	movw r16,r28
	movw r18,r30
	subi r18,4
	sbc r19,__zero_reg__
	add r24,r20
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	movw r28,r18
	st Y,r24
	std Y+1,r25
	std Y+2,r26
	std Y+3,r27
	cp r30,r22
	cpc r31,r23
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	sha1_update_avr, .-sha1_update_avr
	.ident	"GCC: (GNU) 7.3.0"

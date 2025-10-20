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
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	mov r26,r22
	mov r27,r23
	movw r18,r24
	subi r18,-20
	sbci r19,-1
.L2:
	ld r20,Z+
	ld r21,Z+
	ld r22,Z+
	ld r23,Z+
	ld r25,X+
	movw r28,r30
	sbiw r28,4
	add r20,r25
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	st Y,r20
	std Y+1,r21
	std Y+2,r22
	std Y+3,r23
	cp r30,r18
	cpc r31,r19
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	sha1_update_avr, .-sha1_update_avr
	.ident	"GCC: (GNU) 7.3.0"

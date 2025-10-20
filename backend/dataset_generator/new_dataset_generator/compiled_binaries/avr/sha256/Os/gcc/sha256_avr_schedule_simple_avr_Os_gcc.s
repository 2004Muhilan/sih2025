	.file	"sha256_avr_schedule_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_schedule_avr
	.type	sha256_schedule_avr, @function
sha256_schedule_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	movw r18,r24
	subi r18,-64
	sbci r19,-1
.L2:
	movw r26,r24
	adiw r26,2
	ld r20,X
	sbiw r26,2
	adiw r26,3
	ld r21,X
	eor r20,r21
	eor r21,r20
	eor r20,r21
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	st Z+,r20
	st Z+,r21
	st Z+,r22
	st Z+,r23
	adiw r24,4
	cp r18,r24
	cpc r19,r25
	brne .L2
/* epilogue start */
	ret
	.size	sha256_schedule_avr, .-sha256_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"

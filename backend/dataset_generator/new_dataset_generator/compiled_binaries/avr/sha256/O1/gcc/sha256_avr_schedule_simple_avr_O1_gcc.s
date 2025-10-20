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
	movw r30,r24
	adiw r30,2
	mov r26,r22
	mov r27,r23
	movw r18,r24
	subi r18,-66
	sbci r19,-1
.L2:
	ld r20,Z
	ldd r25,Z+1
	mov r21,r20
	mov r20,r25
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	st X+,r20
	st X+,r21
	st X+,r22
	st X+,r23
	adiw r30,4
	cp r30,r18
	cpc r31,r19
	brne .L2
/* epilogue start */
	ret
	.size	sha256_schedule_avr, .-sha256_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"

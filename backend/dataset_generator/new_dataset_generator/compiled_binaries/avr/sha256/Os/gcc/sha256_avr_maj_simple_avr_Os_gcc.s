	.file	"sha256_avr_maj_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_maj_avr
	.type	sha256_maj_avr, @function
sha256_maj_avr:
	push r8
	push r9
	push r10
	push r11
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r8,r18
	movw r10,r20
	eor r8,r14
	eor r9,r15
	eor r10,r16
	eor r11,r17
	movw r26,r24
	movw r24,r22
	and r24,r8
	and r25,r9
	and r26,r10
	and r27,r11
	and r18,r14
	and r19,r15
	and r20,r16
	and r21,r17
	movw r22,r24
	movw r24,r26
	eor r22,r18
	eor r23,r19
	eor r24,r20
	eor r25,r21
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	sha256_maj_avr, .-sha256_maj_avr
	.ident	"GCC: (GNU) 7.3.0"

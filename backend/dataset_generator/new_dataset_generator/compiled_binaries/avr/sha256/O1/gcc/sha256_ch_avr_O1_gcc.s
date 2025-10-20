	.file	"sha256_ch.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_ch
	.type	sha256_ch, @function
sha256_ch:
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
	movw r8,r22
	movw r10,r24
	movw r26,r24
	movw r24,r22
	com r24
	com r25
	com r26
	com r27
	and r24,r14
	and r25,r15
	and r26,r16
	and r27,r17
	and r8,r18
	and r9,r19
	and r10,r20
	and r11,r21
	movw r22,r24
	movw r24,r26
	eor r22,r8
	eor r23,r9
	eor r24,r10
	eor r25,r11
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
	.size	sha256_ch, .-sha256_ch
	.ident	"GCC: (GNU) 7.3.0"

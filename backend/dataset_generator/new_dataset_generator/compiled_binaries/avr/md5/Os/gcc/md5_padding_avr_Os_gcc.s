	.file	"md5_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	md5_padding
	.type	md5_padding, @function
md5_padding:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r22
	movw r28,r20
	movw r20,r22
	movw r22,r24
	movw r24,r28
	call memcpy
	movw r30,r28
	add r30,r16
	adc r31,r17
	ldi r24,lo8(-128)
	st Z,r24
	ldi r30,lo8(55)
	ldi r31,0
	sub r30,r16
	sbc r31,r17
	movw r14,r30
	ldi r24,63
	and r14,r24
	clr r15
	movw r30,r16
	adiw r30,1
	add r28,r30
	adc r29,r31
	movw r20,r14
	ldi r23,0
	ldi r22,0
	movw r24,r28
	call memset
	add r28,r14
	adc r29,r15
	ldi r24,3
	1:
	lsl r16
	rol r17
	dec r24
	brne 1b
	st Y,r16
	std Y+1,r17
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (GNU) 7.3.0"

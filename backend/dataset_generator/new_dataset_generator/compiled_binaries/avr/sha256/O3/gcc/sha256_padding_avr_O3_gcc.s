	.file	"sha256_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_padding
	.type	sha256_padding, @function
sha256_padding:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r16,r22
	movw r14,r20
	movw r20,r22
	movw r22,r24
	movw r24,r14
	call memcpy
	movw r30,r14
	add r30,r16
	adc r31,r17
	ldi r24,lo8(-128)
	st Z,r24
	ldi r28,lo8(55)
	ldi r29,0
	sub r28,r16
	sbc r29,r17
	andi r28,63
	clr r29
	movw r12,r16
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	movw r20,r28
	ldi r23,0
	ldi r22,0
	movw r24,r14
	add r24,r12
	adc r25,r13
	call memset
	movw r26,r16
	lsl r26
	rol r27
	lsl r26
	rol r27
	lsl r26
	rol r27
	movw r30,r12
	add r30,r28
	adc r31,r29
	add r30,r14
	adc r31,r15
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	movw r18,r26
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(8)
	call __lshrdi3
	std Z+6,r18
	std Z+7,r26
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (GNU) 7.3.0"

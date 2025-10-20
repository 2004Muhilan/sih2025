	.file	"sha1_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_padding
	.type	sha1_padding, @function
sha1_padding:
	push r4
	push r5
	push r6
	push r7
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
/* stack size = 16 */
.L__stack_usage = 16
	movw r6,r22
	movw r4,r20
	movw r20,r22
	movw r22,r24
	movw r24,r4
	call memcpy
	movw r30,r4
	add r30,r6
	adc r31,r7
	ldi r24,lo8(-128)
	st Z,r24
	ldi r16,lo8(55)
	ldi r17,0
	sub r16,r6
	sbc r17,r7
	andi r16,63
	clr r17
	movw r28,r6
	adiw r28,1
	movw r20,r16
	ldi r23,0
	ldi r22,0
	movw r24,r4
	add r24,r28
	adc r25,r29
	call memset
	lsl r6
	rol r7
	lsl r6
	rol r7
	lsl r6
	rol r7
	movw r8,r6
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	add r28,r16
	adc r29,r17
	add r28,r4
	adc r29,r5
	ldi r30,lo8(56)
	ldi r31,0
.L2:
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	mov r16,r30
	call __lshrdi3
	st Y+,r18
	sbiw r30,8
	cpi r30,-8
	ldi r24,-1
	cpc r31,r24
	brne .L2
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (GNU) 7.3.0"

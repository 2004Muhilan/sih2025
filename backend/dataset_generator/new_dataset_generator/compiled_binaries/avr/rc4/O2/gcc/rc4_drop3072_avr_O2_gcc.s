	.file	"rc4_drop3072.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
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
/* stack size = 9 */
.L__stack_usage = 9
	movw r16,r24
	movw r14,r22
	movw r12,r20
	movw r20,r24
	inc r21
	movw r18,r24
	ldi r24,0
.L2:
	movw r30,r18
	st Z+,r24
	movw r18,r30
	subi r24,lo8(-(1))
	cp r20,r30
	cpc r21,r31
	brne .L2
	movw r28,r16
	mov r11,__zero_reg__
.L3:
	movw r24,r28
	sub r24,r16
	sbc r25,r17
	ld r20,Y+
	movw r22,r12
	call __udivmodhi4
	movw r26,r14
	add r26,r24
	adc r27,r25
	ld r30,X
	mov r22,r11
	add r22,r20
	clr r23
	rol r23
	add r30,r22
	mov r31,r23
	adc r31,__zero_reg__
	mov r11,r30
	add r30,r16
	mov r31,r17
	adc r31,__zero_reg__
	ld r24,Z
	movw r26,r28
	sbiw r26,1
	st X,r24
	st Z,r20
	cp r18,r28
	cpc r19,r29
	brne .L3
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
	ret
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (GNU) 7.3.0"

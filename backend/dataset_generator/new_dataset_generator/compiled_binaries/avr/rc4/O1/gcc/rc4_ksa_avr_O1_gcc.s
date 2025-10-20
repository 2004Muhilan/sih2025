	.file	"rc4_ksa.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_ksa
	.type	rc4_ksa, @function
rc4_ksa:
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
/* stack size = 11 */
.L__stack_usage = 11
	movw r16,r24
	movw r12,r22
	movw r10,r20
	movw r14,r24
	movw r20,r24
	inc r21
	movw r18,r24
	ldi r24,0
.L2:
	movw r30,r18
	st Z+,r24
	movw r18,r30
	subi r24,lo8(-(1))
	cp r30,r20
	cpc r31,r21
	brne .L2
	movw r28,r16
	ldi r20,0
.L4:
	movw r24,r28
	sub r24,r14
	sbc r25,r15
	ld r9,Y+
	movw r22,r10
	call __udivmodhi4
	movw r30,r12
	add r30,r24
	adc r31,r25
	ld r30,Z
	add r20,r9
	clr r21
	rol r21
	add r30,r20
	mov r31,r21
	adc r31,__zero_reg__
	andi r31,128
	mov r20,r30
	add r30,r16
	mov r31,r17
	adc r31,__zero_reg__
	ld r24,Z
	movw r26,r28
	sbiw r26,1
	st X,r24
	st Z,r9
	cp r28,r18
	cpc r29,r19
	brne .L4
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
	ret
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (GNU) 7.3.0"

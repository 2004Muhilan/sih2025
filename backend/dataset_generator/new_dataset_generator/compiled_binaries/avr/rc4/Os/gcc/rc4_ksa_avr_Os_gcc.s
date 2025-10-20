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
	movw r28,r24
	movw r30,r24
	ldi r25,0
	ldi r24,0
.L2:
	st Z+,r24
	adiw r24,1
	cp r24,__zero_reg__
	ldi r18,1
	cpc r25,r18
	brne .L2
	ldi r19,0
	ldi r18,0
	ldi r20,0
.L3:
	ld r11,Y+
	movw r24,r18
	movw r22,r12
	call __udivmodhi4
	movw r30,r14
	add r30,r24
	adc r31,r25
	ld r30,Z
	add r20,r11
	clr r21
	rol r21
	add r30,r20
	mov r31,r21
	adc r31,__zero_reg__
	mov r20,r30
	add r30,r16
	mov r31,r17
	adc r31,__zero_reg__
	ld r24,Z
	movw r26,r28
	sbiw r26,1
	st X,r24
	st Z,r11
	subi r18,-1
	sbci r19,-1
	cp r18,__zero_reg__
	ldi r24,1
	cpc r19,r24
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
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (GNU) 7.3.0"

	.file	"rc4_vmpc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_vmpc_variant
	.type	rc4_vmpc_variant, @function
rc4_vmpc_variant:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	dec r29
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 256 */
/* stack size = 262 */
.L__stack_usage = 262
	movw r30,r28
	adiw r30,1
	ldi r21,0
	ldi r20,0
	movw r18,r30
.L2:
	st Z+,r20
	subi r20,-1
	sbci r21,-1
	cp r20,__zero_reg__
	ldi r26,1
	cpc r21,r26
	brne .L2
	movw r30,r24
	add r22,r24
	adc r23,r25
	mov r14,__zero_reg__
.L3:
	cp r30,r22
	cpc r31,r23
	brne .L4
/* epilogue start */
	inc r29
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L4:
	ld r15,Z+
	movw r24,r18
	add r24,r15
	adc r25,__zero_reg__
	movw r26,r24
	ld r24,X
	mov r26,r14
	add r26,r24
	add r26,r18
	mov r27,r19
	adc r27,__zero_reg__
	ld r14,X
	movw r16,r30
	subi r16,1
	sbc r17,__zero_reg__
	movw r24,r18
	add r24,r14
	adc r25,__zero_reg__
	movw r26,r24
	ld r20,X
	add r20,r18
	mov r21,r19
	adc r21,__zero_reg__
	movw r26,r20
	ld r24,X
	subi r24,lo8(-(1))
	add r24,r18
	mov r25,r19
	adc r25,__zero_reg__
	movw r26,r24
	ld r24,X
	eor r24,r15
	movw r26,r16
	st X,r24
	rjmp .L3
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (GNU) 7.3.0"

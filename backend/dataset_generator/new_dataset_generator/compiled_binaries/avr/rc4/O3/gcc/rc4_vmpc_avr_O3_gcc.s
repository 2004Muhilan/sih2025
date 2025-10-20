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
/* stack size = 260 */
.L__stack_usage = 260
	movw r30,r28
	adiw r30,1
	movw r20,r28
	subi r20,-1
	sbci r21,-2
	ldi r18,0
.L2:
	st Z+,r18
	subi r18,lo8(-(1))
	cp r20,r30
	cpc r21,r31
	brne .L2
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1
	movw r18,r24
	add r22,r24
	adc r23,r25
	ldi r30,0
.L4:
	movw r26,r18
	ld r25,X+
	movw r18,r26
	ldi r26,lo8(1)
	ldi r27,0
	add r26,r28
	adc r27,r29
	add r26,r25
	adc r27,__zero_reg__
	ld r24,X
	add r30,r24
	ldi r16,lo8(1)
	ldi r17,0
	add r16,r28
	adc r17,r29
	add r16,r30
	adc r17,__zero_reg__
	movw r30,r16
	ld r30,Z
	movw r20,r18
	subi r20,1
	sbc r21,__zero_reg__
	ldi r26,lo8(1)
	ldi r27,0
	add r26,r28
	adc r27,r29
	add r26,r30
	adc r27,__zero_reg__
	ld r26,X
	ldi r16,lo8(1)
	ldi r17,0
	add r16,r28
	adc r17,r29
	add r16,r26
	adc r17,__zero_reg__
	movw r26,r16
	ld r26,X
	subi r26,lo8(-(1))
	ldi r16,lo8(1)
	ldi r17,0
	add r16,r28
	adc r17,r29
	add r16,r26
	adc r17,__zero_reg__
	movw r26,r16
	ld r24,X
	eor r24,r25
	movw r26,r20
	st X,r24
	cp r22,r18
	cpc r23,r19
	brne .L4
.L1:
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
	ret
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (GNU) 7.3.0"

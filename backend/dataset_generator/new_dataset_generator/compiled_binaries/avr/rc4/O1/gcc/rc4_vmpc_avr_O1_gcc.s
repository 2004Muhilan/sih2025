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
/* stack size = 258 */
.L__stack_usage = 258
	movw r20,r24
	movw r30,r28
	adiw r30,1
	movw r18,r28
	subi r18,-1
	sbci r19,-2
	ldi r25,0
.L2:
	st Z+,r25
	subi r25,lo8(-(1))
	cp r30,r18
	cpc r31,r19
	brne .L2
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1
	movw r26,r20
	add r22,r20
	adc r23,r21
	ldi r25,0
.L5:
	ld r24,X+
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,__zero_reg__
	ld r30,Z
	add r30,r25
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r18,r30
	adc r19,__zero_reg__
	movw r30,r18
	ld r25,Z
	movw r20,r26
	subi r20,1
	sbc r21,__zero_reg__
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r25
	adc r31,__zero_reg__
	ld r30,Z
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r18,r30
	adc r19,__zero_reg__
	movw r30,r18
	ld r30,Z
	subi r30,lo8(-(1))
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r30,r18
	adc r31,r19
	ld r18,Z
	eor r18,r24
	movw r30,r20
	st Z,r18
	cp r26,r22
	cpc r27,r23
	brne .L5
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
	ret
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (GNU) 7.3.0"

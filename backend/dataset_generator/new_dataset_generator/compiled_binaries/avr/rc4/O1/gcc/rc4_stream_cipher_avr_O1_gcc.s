	.file	"rc4_stream_cipher.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
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
/* stack size = 261 */
.L__stack_usage = 261
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
	movw r18,r20
	add r22,r20
	adc r23,r21
	ldi r21,0
	ldi r25,0
.L5:
	subi r25,lo8(-(1))
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r25
	adc r31,__zero_reg__
	movw r26,r30
	ld r15,Z
	add r21,r15
	ldi r16,lo8(1)
	ldi r17,0
	add r16,r28
	adc r17,r29
	add r16,r21
	adc r17,__zero_reg__
	movw r30,r16
	ld r24,Z
	st X,r24
	st Z,r15
	movw r30,r18
	ld r24,Z+
	movw r18,r30
	movw r16,r30
	subi r16,1
	sbc r17,__zero_reg__
	ld r20,X
	mov r30,r15
	add r30,r20
	ldi r26,lo8(1)
	ldi r27,0
	add r26,r28
	adc r27,r29
	add r26,r30
	adc r27,__zero_reg__
	movw r30,r26
	ld r20,Z
	eor r20,r24
	movw r30,r16
	st Z,r20
	cp r22,r18
	cpc r23,r19
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
	pop r17
	pop r16
	pop r15
	ret
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (GNU) 7.3.0"

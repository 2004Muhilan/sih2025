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
	movw r30,r28
	adiw r30,1
	movw r20,r28
	subi r20,-1
	sbci r21,-2
	ldi r18,0
.L2:
	st Z+,r18
	subi r18,lo8(-(1))
	cp r30,r20
	cpc r31,r21
	brne .L2
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1
	movw r18,r24
	movw r16,r24
	add r16,r22
	adc r17,r23
	ldi r20,0
	ldi r25,0
.L4:
	ldi r26,lo8(1)
	add r26,r25
	ldi r22,lo8(1)
	ldi r23,0
	add r22,r28
	adc r23,r29
	add r22,r26
	adc r23,__zero_reg__
	movw r26,r22
	subi r25,lo8(-(1))
	ld r15,X
	add r20,r15
	ldi r22,lo8(1)
	ldi r23,0
	add r22,r28
	adc r23,r29
	add r22,r20
	adc r23,__zero_reg__
	movw r30,r22
	ld r24,Z
	st X,r24
	st Z,r15
	movw r30,r18
	ld r21,Z+
	movw r18,r30
	movw r22,r30
	subi r22,1
	sbc r23,__zero_reg__
	ld r24,X
	mov r30,r15
	add r30,r24
	ldi r26,lo8(1)
	ldi r27,0
	add r26,r28
	adc r27,r29
	add r26,r30
	adc r27,__zero_reg__
	movw r30,r26
	ld r24,Z
	eor r24,r21
	movw r30,r22
	st Z,r24
	cp r16,r18
	cpc r17,r19
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
	pop r15
	ret
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (GNU) 7.3.0"

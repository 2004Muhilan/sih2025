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
	push r13
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
/* stack size = 263 */
.L__stack_usage = 263
	movw r30,r28
	adiw r30,1
	ldi r19,0
	ldi r18,0
	movw r16,r30
.L2:
	st Z+,r18
	subi r18,-1
	sbci r19,-1
	cp r18,__zero_reg__
	ldi r20,1
	cpc r19,r20
	brne .L2
	movw r26,r24
	ldi r19,0
	ldi r18,0
	ldi r20,0
.L3:
	cp r18,r22
	cpc r19,r23
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
	pop r13
	ret
.L4:
	ldi r24,lo8(1)
	add r24,r18
	add r24,r16
	mov r25,r17
	adc r25,__zero_reg__
	movw r30,r24
	ld r13,Z
	add r20,r13
	movw r14,r16
	add r14,r20
	adc r15,__zero_reg__
	movw r30,r14
	ld r21,Z
	movw r30,r24
	st Z,r21
	movw r30,r14
	st Z,r13
	ld r21,X+
	movw r14,r26
	ldi r31,1
	sub r14,r31
	sbc r15,__zero_reg__
	movw r30,r24
	ld r24,Z
	mov r30,r13
	add r30,r24
	add r30,r16
	mov r31,r17
	adc r31,__zero_reg__
	ld r24,Z
	eor r24,r21
	movw r30,r14
	st Z,r24
	subi r18,-1
	sbci r19,-1
	rjmp .L3
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (GNU) 7.3.0"

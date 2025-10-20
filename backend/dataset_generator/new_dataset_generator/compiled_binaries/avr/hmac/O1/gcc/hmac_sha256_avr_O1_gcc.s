	.file	"hmac_sha256.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
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
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,-128
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 128 */
/* stack size = 140 */
.L__stack_usage = 140
	movw r12,r28
	ldi r18,65
	add r12,r18
	adc r13,__zero_reg__
	movw r30,r24
	movw r24,r28
	adiw r24,1
	movw r14,r24
	movw r20,r24
	movw r8,r12
	ldi r19,0
	ldi r18,0
	mov __tmp_reg__,r31
	ldi r31,lo8(54)
	mov r11,r31
	mov r31,__tmp_reg__
	ldi r24,lo8(92)
	rjmp .L3
.L9:
	mov r30,r16
	mov r31,r17
	movw r18,r14
	subi r18,-32
	sbci r19,-1
.L4:
	movw r26,r14
	ld r24,X+
	movw r14,r26
	movw r26,r12
	ld r25,X+
	movw r12,r26
	eor r24,r25
	st Z+,r24
	cp r14,r18
	cpc r15,r19
	brne .L4
/* epilogue start */
	subi r28,-128
	sbci r29,-1
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
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L2:
	movw r26,r20
	st X+,r11
	movw r20,r26
	mov r25,r24
.L5:
	movw r26,r8
	st X+,r25
	movw r8,r26
	subi r18,-1
	sbci r19,-1
	adiw r30,1
	cpi r18,64
	cpc r19,__zero_reg__
	breq .L9
.L3:
	cp r18,r22
	cpc r19,r23
	brsh .L2
	ld r25,Z
	mov r10,r25
	eor r10,r11
	movw r26,r20
	st X+,r10
	movw r20,r26
	eor r25,r24
	rjmp .L5
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (GNU) 7.3.0"

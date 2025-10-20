	.file	"hmac_md5.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_md5
	.type	hmac_md5, @function
hmac_md5:
	push r8
	push r9
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
/* stack size = 139 */
.L__stack_usage = 139
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r8,r18
	movw r14,r28
	ldi r19,65
	add r14,r19
	adc r15,__zero_reg__
	movw r12,r14
	movw r26,r8
	ldi r19,0
	ldi r18,0
	ldi r21,lo8(54)
	ldi r20,lo8(92)
	mov r11,r20
.L4:
	ldi r20,lo8(54)
	cp r18,r22
	cpc r19,r23
	brsh .L2
	movw r30,r24
	ld r20,Z
	eor r20,r21
.L2:
	movw r30,r12
	st Z+,r20
	movw r12,r30
	ldi r20,lo8(92)
	cp r18,r22
	cpc r19,r23
	brsh .L3
	movw r30,r24
	ld r20,Z
	eor r20,r11
.L3:
	st X+,r20
	subi r18,-1
	sbci r19,-1
	adiw r24,1
	cpi r18,64
	cpc r19,__zero_reg__
	brne .L4
	movw r30,r16
	movw r18,r16
	subi r18,-16
	sbci r19,-1
.L5:
	movw r26,r14
	ld r24,X+
	movw r14,r26
	movw r26,r8
	ld r25,X+
	movw r8,r26
	eor r24,r25
	st Z+,r24
	cp r30,r18
	cpc r31,r19
	brne .L5
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
	pop r9
	pop r8
	ret
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (GNU) 7.3.0"

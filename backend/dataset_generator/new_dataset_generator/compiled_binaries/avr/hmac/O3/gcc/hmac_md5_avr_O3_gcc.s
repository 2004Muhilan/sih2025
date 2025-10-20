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
/* stack size = 136 */
.L__stack_usage = 136
	movw r14,r22
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r26,r24
	movw r24,r28
	subi r24,-65
	sbci r25,-1
	movw r12,r24
	ldi r19,0
	ldi r18,0
	ldi r23,lo8(54)
	ldi r24,lo8(92)
.L2:
	cp r18,r14
	cpc r19,r15
	brlo .+2
	rjmp .L3
	ld r25,X+
	mov r22,r25
	eor r22,r23
	movw r30,r12
	st Z+,r22
	movw r12,r30
	eor r25,r24
	movw r30,r20
	st Z+,r25
	movw r20,r30
	subi r18,-1
	sbci r19,-1
	cpi r18,64
	cpc r19,__zero_reg__
	brne .L2
.L5:
	ldd r24,Y+1
	adiw r28,65-63
	ldd r25,Y+63
	sbiw r28,65-63
	eor r24,r25
	movw r30,r16
	st Z,r24
	adiw r28,66-63
	ldd r24,Y+63
	sbiw r28,66-63
	ldd r25,Y+2
	eor r24,r25
	std Z+1,r24
	adiw r28,67-63
	ldd r24,Y+63
	sbiw r28,67-63
	ldd r25,Y+3
	eor r24,r25
	std Z+2,r24
	adiw r28,68-63
	ldd r24,Y+63
	sbiw r28,68-63
	ldd r25,Y+4
	eor r24,r25
	std Z+3,r24
	adiw r28,69-63
	ldd r24,Y+63
	sbiw r28,69-63
	ldd r25,Y+5
	eor r24,r25
	std Z+4,r24
	adiw r28,70-63
	ldd r24,Y+63
	sbiw r28,70-63
	ldd r25,Y+6
	eor r24,r25
	std Z+5,r24
	adiw r28,71-63
	ldd r24,Y+63
	sbiw r28,71-63
	ldd r25,Y+7
	eor r24,r25
	std Z+6,r24
	adiw r28,72-63
	ldd r24,Y+63
	sbiw r28,72-63
	ldd r25,Y+8
	eor r24,r25
	std Z+7,r24
	adiw r28,73-63
	ldd r24,Y+63
	sbiw r28,73-63
	ldd r25,Y+9
	eor r24,r25
	std Z+8,r24
	adiw r28,74-63
	ldd r24,Y+63
	sbiw r28,74-63
	ldd r25,Y+10
	eor r24,r25
	std Z+9,r24
	adiw r28,75-63
	ldd r24,Y+63
	sbiw r28,75-63
	ldd r25,Y+11
	eor r24,r25
	std Z+10,r24
	adiw r28,76-63
	ldd r24,Y+63
	sbiw r28,76-63
	ldd r25,Y+12
	eor r24,r25
	std Z+11,r24
	adiw r28,77-63
	ldd r24,Y+63
	sbiw r28,77-63
	ldd r25,Y+13
	eor r24,r25
	std Z+12,r24
	adiw r28,78-63
	ldd r24,Y+63
	sbiw r28,78-63
	ldd r25,Y+14
	eor r24,r25
	std Z+13,r24
	adiw r28,79-63
	ldd r24,Y+63
	sbiw r28,79-63
	ldd r25,Y+15
	eor r24,r25
	std Z+14,r24
	adiw r28,80-63
	ldd r24,Y+63
	sbiw r28,80-63
	ldd r25,Y+16
	eor r24,r25
	std Z+15,r24
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
	ret
.L3:
	movw r30,r12
	st Z+,r23
	movw r12,r30
	movw r30,r20
	st Z+,r24
	movw r20,r30
	subi r18,-1
	sbci r19,-1
	adiw r26,1
	cpi r18,64
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L2
	rjmp .L5
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (GNU) 7.3.0"

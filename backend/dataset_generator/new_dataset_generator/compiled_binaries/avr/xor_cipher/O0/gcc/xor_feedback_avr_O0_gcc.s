	.file	"xor_feedback.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 15 */
/* stack size = 19 */
.L__stack_usage = 19
	std Y+7,r25
	std Y+6,r24
	std Y+9,r23
	std Y+8,r22
	std Y+11,r21
	std Y+10,r20
	std Y+13,r19
	std Y+12,r18
	std Y+15,r17
	std Y+14,r16
	ldd r24,Y+14
	ldd r25,Y+15
	or r24,r25
	breq .L2
	ldd r24,Y+14
	ldd r25,Y+15
	movw r30,r24
	ld r24,Z
	rjmp .L3
.L2:
	ldi r24,0
.L3:
	std Y+1,r24
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	rjmp .L4
.L5:
	ldd r24,Y+2
	ldd r25,Y+3
	ldd r18,Y+12
	ldd r19,Y+13
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+10
	ldd r25,Y+11
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Y+1
	eor r24,r25
	std Y+4,r24
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+5,r24
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	ldd r18,Y+4
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+5
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,1
	std Y+3,r25
	std Y+2,r24
.L4:
	ldd r18,Y+2
	ldd r19,Y+3
	ldd r24,Y+8
	ldd r25,Y+9
	cp r18,r24
	cpc r19,r25
	brlo .L5
	nop
/* epilogue start */
	adiw r28,15
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
	.size	xor_cipher_feedback, .-xor_cipher_feedback
.global	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 11 */
/* stack size = 17 */
.L__stack_usage = 17
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	std Y+8,r19
	std Y+7,r18
	std Y+9,r16
	std Y+11,r15
	std Y+10,r14
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+10
	ldd r25,Y+11
	movw r22,r18
	call memcpy
	movw r30,r28
	adiw r30,9
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+10
	ldd r25,Y+11
	movw r16,r30
	call xor_cipher_feedback
	nop
/* epilogue start */
	adiw r28,11
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
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
.global	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
	push r14
	push r15
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 15 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	std Y+12,r19
	std Y+11,r18
	std Y+13,r16
	std Y+15,r15
	std Y+14,r14
	ldd r24,Y+13
	std Y+1,r24
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	rjmp .L8
.L9:
	ldd r24,Y+2
	ldd r25,Y+3
	ldd r18,Y+11
	ldd r19,Y+12
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Y+1
	eor r24,r25
	std Y+4,r24
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+1,r24
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r18,Y+14
	ldd r19,Y+15
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	ldd r18,Y+4
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,1
	std Y+3,r25
	std Y+2,r24
.L8:
	ldd r18,Y+2
	ldd r19,Y+3
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L9
	nop
/* epilogue start */
	adiw r28,15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	ret
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (GNU) 7.3.0"

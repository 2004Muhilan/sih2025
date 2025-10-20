	.file	"xor_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	std Y+10,r19
	std Y+9,r18
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+9
	ldd r19,Y+10
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r20,X
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	mov r18,r30
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .L3
	nop
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	xor_cipher_simple, .-xor_cipher_simple
.global	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	std Y+8,r19
	std Y+7,r18
	std Y+10,r17
	std Y+9,r16
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+9
	ldd r25,Y+10
	movw r22,r18
	call memcpy
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	call xor_cipher_simple
	nop
/* epilogue start */
	adiw r28,10
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
	.size	xor_encrypt_simple, .-xor_encrypt_simple
.global	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	std Y+8,r19
	std Y+7,r18
	std Y+10,r17
	std Y+9,r16
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+9
	ldd r25,Y+10
	movw r22,r18
	call memcpy
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	call xor_cipher_simple
	nop
/* epilogue start */
	adiw r28,10
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
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (GNU) 7.3.0"

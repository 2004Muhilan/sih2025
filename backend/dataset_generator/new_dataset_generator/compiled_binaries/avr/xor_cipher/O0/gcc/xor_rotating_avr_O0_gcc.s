	.file	"xor_rotating.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.type	rotate_left, @function
rotate_left:
	push r28
	push r29
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r24
	std Y+3,r23
	std Y+2,r22
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldd r0,Y+2
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	mov r22,r24
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldi r20,lo8(8)
	ldi r21,0
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r20
	sub r30,r18
	sbc r31,r19
	movw r18,r30
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r18
	brpl 1b
	or r24,r22
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotate_left, .-rotate_left
.global	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
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
/* stack size = 15 */
.L__stack_usage = 15
	std Y+5,r25
	std Y+4,r24
	std Y+7,r23
	std Y+6,r22
	std Y+9,r21
	std Y+8,r20
	std Y+11,r19
	std Y+10,r18
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L4
.L5:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+8
	ldd r25,Y+9
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+3,r24
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	ldd r18,Y+3
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+8
	ldd r25,Y+9
	movw r16,r24
	add r16,r18
	adc r17,r19
	ldi r22,lo8(1)
	ldi r23,0
	ldd r24,Y+3
	call rotate_left
	movw r30,r16
	st Z,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L4:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+6
	ldd r25,Y+7
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L5
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
	ret
	.size	xor_cipher_rotating, .-xor_cipher_rotating
.global	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,10
	sbci r29,1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 266 */
/* stack size = 270 */
.L__stack_usage = 270
	movw r30,r28
	subi r30,-1
	sbci r31,-2
	std Z+1,r25
	st Z,r24
	movw r24,r28
	subi r24,-3
	sbci r25,-2
	movw r30,r24
	std Z+1,r23
	st Z,r22
	movw r24,r28
	subi r24,-5
	sbci r25,-2
	movw r30,r24
	std Z+1,r21
	st Z,r20
	movw r24,r28
	subi r24,-7
	sbci r25,-2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	movw r24,r28
	subi r24,-9
	sbci r25,-2
	movw r30,r24
	std Z+1,r17
	st Z,r16
	movw r24,r28
	subi r24,-3
	sbci r25,-2
	movw r30,r24
	ld r20,Z
	ldd r21,Z+1
	movw r24,r28
	subi r24,-1
	sbci r25,-2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	movw r24,r28
	subi r24,-9
	sbci r25,-2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	movw r22,r18
	call memcpy
	movw r24,r28
	subi r24,-7
	sbci r25,-2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	movw r24,r28
	subi r24,-5
	sbci r25,-2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	movw r20,r18
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call memcpy
	movw r24,r28
	subi r24,-7
	sbci r25,-2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	movw r24,r28
	subi r24,-3
	sbci r25,-2
	movw r30,r24
	ld r22,Z
	ldd r23,Z+1
	movw r24,r28
	subi r24,-9
	sbci r25,-2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call xor_cipher_rotating
	nop
/* epilogue start */
	subi r28,-10
	sbci r29,-2
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
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
.global	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
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
	ldd r30,Y+9
	ldd r31,Y+10
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	movw r16,r30
	call xor_encrypt_rotating
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
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (GNU) 7.3.0"

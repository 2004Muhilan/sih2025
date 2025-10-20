	.file	"tinycrypt_ecc_dh.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
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
	sbiw r28,48
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 48 */
/* stack size = 58 */
.L__stack_usage = 58
	movw r12,r24
	movw r10,r22
	movw r14,r18
	movw r16,r28
	subi r16,-33
	sbci r17,-1
	ldi r24,lo8(32)
	movw r30,r20
	movw r26,r16
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	movw r20,r18
	movw r22,r16
	movw r24,r28
	adiw r24,1
	call EccPoint_compute_public_key
	or r24,r25
	brne .+2
	rjmp .L4
	movw r30,r14
	ldd r24,Z+2
	ldd r25,Z+3
	movw r22,r24
	subi r22,-7
	sbci r23,-1
	sbrs r23,7
	rjmp .L3
	subi r22,-7
	sbci r23,-1
.L3:
	ldi r24,3
	1:
	asr r23
	ror r22
	dec r24
	brne 1b
	movw r20,r16
	movw r24,r10
	call uECC_vli_nativeToBytes
	movw r30,r14
	ldd r22,Z+1
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r12
	call uECC_vli_nativeToBytes
	movw r30,r14
	ldd r24,Z+1
	ld r20,Z
	lsl r20
	sbc r21,r21
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r20,r18
	adc r21,r19
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	movw r22,r24
	add r24,r12
	adc r25,r13
	call uECC_vli_nativeToBytes
	ldi r24,lo8(32)
	movw r30,r16
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	ldi r24,lo8(1)
	ldi r25,0
.L1:
/* epilogue start */
	adiw r28,48
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
	ret
.L4:
	ldi r25,0
	ldi r24,0
	rjmp .L1
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
.global	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
	push r6
	push r7
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
	subi r28,80
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 80 */
/* stack size = 94 */
.L__stack_usage = 94
	movw r10,r24
	movw r8,r22
	movw r16,r20
	ldi r18,lo8(64)
	mov r12,r18
	mov r13,__zero_reg__
	movw r6,r20
	ldi r18,20
	add r6,r18
	adc r7,__zero_reg__
	movw r14,r28
	ldi r19,65
	add r14,r19
	adc r15,__zero_reg__
.L11:
	call uECC_get_rng
	movw r30,r24
	or r24,r25
	brne .+2
	rjmp .L6
	ldi r22,lo8(64)
	ldi r23,0
	movw r24,r28
	adiw r24,33
	icall
	or r24,r25
	brne .+2
	rjmp .L6
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	movw r18,r24
	subi r18,-31
	sbci r19,-1
	sbrs r19,7
	rjmp .L7
	subi r18,-31
	sbci r19,-1
.L7:
	ldi r25,5
	1:
	asr r19
	ror r18
	dec r25
	brne 1b
	movw r20,r6
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r14
	call uECC_vli_mmod
	movw r20,r16
	movw r22,r14
	movw r24,r28
	adiw r24,1
	call EccPoint_compute_public_key
	or r24,r25
	brne .+2
	rjmp .L8
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	movw r22,r24
	subi r22,-7
	sbci r23,-1
	sbrs r23,7
	rjmp .L9
	subi r22,-7
	sbci r23,-1
.L9:
	ldi r24,3
	1:
	asr r23
	ror r22
	dec r24
	brne 1b
	movw r20,r14
	movw r24,r8
	call uECC_vli_nativeToBytes
	movw r30,r16
	ldd r22,Z+1
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r10
	call uECC_vli_nativeToBytes
	movw r30,r16
	ldd r24,Z+1
	ld r20,Z
	lsl r20
	sbc r21,r21
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r20,r18
	adc r21,r19
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	movw r22,r24
	add r24,r10
	adc r25,r11
	call uECC_vli_nativeToBytes
	ldi r24,lo8(32)
	movw r30,r14
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	ldi r24,lo8(1)
	ldi r25,0
.L5:
/* epilogue start */
	subi r28,-80
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
	pop r7
	pop r6
	ret
.L8:
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	breq .+2
	rjmp .L11
.L6:
	ldi r25,0
	ldi r24,0
	rjmp .L5
	.size	uECC_make_key, .-uECC_make_key
.global	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
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
	subi r28,69
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 69 */
/* stack size = 87 */
.L__stack_usage = 87
	movw r16,r24
	movw r2,r20
	movw r12,r18
	movw r8,r28
	ldi r18,65
	add r8,r18
	adc r9,__zero_reg__
	movw r10,r28
	ldi r19,49
	add r10,r19
	adc r11,__zero_reg__
	movw r30,r8
	std Z+1,r11
	st Z,r10
	movw r4,r28
	ldi r31,33
	add r4,r31
	adc r5,__zero_reg__
	movw r30,r8
	std Z+3,r5
	std Z+2,r4
	movw r30,r12
	ld r31,Z
	adiw r28,69-63
	std Y+63,r31
	sbiw r28,69-63
	movw r30,r12
	ldd r6,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	movw r20,r24
	subi r20,-7
	sbci r21,-1
	sbrs r21,7
	rjmp .L20
	subi r20,-7
	sbci r21,-1
.L20:
	ldi r30,3
	1:
	asr r21
	ror r20
	dec r30
	brne 1b
	movw r24,r10
	call uECC_vli_bytesToNative
	mov __tmp_reg__,r6
	lsl r0
	sbc r7,r7
	movw r20,r6
	movw r22,r16
	movw r24,r28
	adiw r24,1
	call uECC_vli_bytesToNative
	movw r22,r16
	add r22,r6
	adc r23,r7
	movw r20,r6
	adiw r28,69-63
	ldd r31,Y+63
	sbiw r28,69-63
	mov r24,r31
	lsl r24
	sbc r25,r25
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r24,r18
	adc r25,r19
	call uECC_vli_bytesToNative
	movw r18,r12
	movw r20,r4
	movw r22,r10
	movw r24,r10
	call regularize_k
	movw r14,r24
	call uECC_get_rng
	or r24,r25
	brne .+2
	rjmp .L25
	movw r16,r14
	lsl r16
	rol r17
	add r16,r8
	adc r17,r9
	adiw r28,69-63
	ldd r20,Y+63
	sbiw r28,69-63
	movw r22,r12
	subi r22,-4
	sbci r23,-1
	movw r30,r16
	ld r24,Z
	ldd r25,Z+1
	call uECC_generate_random_int
	sbiw r24,0
	breq .L22
	movw r30,r16
	ld r18,Z
	ldd r19,Z+1
.L21:
	movw r30,r12
	ldd r16,Z+2
	ldd r17,Z+3
	subi r16,-1
	sbci r17,-1
	ldi r24,lo8(1)
	ldi r25,0
	or r14,r15
	breq .L23
	ldi r25,0
	ldi r24,0
.L23:
	lsl r24
	rol r25
	movw r30,r8
	add r30,r24
	adc r31,r25
	ld r20,Z
	ldd r21,Z+1
	movw r14,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call EccPoint_mult
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r6
	movw r24,r2
	call uECC_vli_nativeToBytes
	movw r22,r12
	movw r24,r28
	adiw r24,1
	call EccPoint_isZero
	ldi r19,lo8(1)
	ldi r18,0
	or r24,r25
	breq .L24
	ldi r19,0
.L24:
	mov r24,r19
	mov r25,r18
.L22:
	ldi r18,lo8(4)
	movw r30,r8
	0:
	st Z+,__zero_reg__
	dec r18
	brne 0b
	ldi r18,lo8(16)
	movw r30,r4
	mov r19,r18
	0:
	st Z+,__zero_reg__
	dec r19
	brne 0b
	movw r30,r10
	0:
	st Z+,__zero_reg__
	dec r18
	brne 0b
/* epilogue start */
	subi r28,-69
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
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L25:
	ldi r19,0
	ldi r18,0
	rjmp .L21
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (GNU) 7.3.0"

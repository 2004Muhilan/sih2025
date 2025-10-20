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
	movw r14,r24
	movw r12,r22
	movw r16,r18
	ldi r24,lo8(32)
	movw r30,r20
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	movw r20,r18
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call EccPoint_compute_public_key
	or r24,r25
	brne .L5
	ldi r25,0
	ldi r24,0
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
.L5:
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r24,7
	movw r22,r24
	brmi .L6
.L3:
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r10,r18
	movw r20,r18
	movw r24,r12
	call uECC_vli_nativeToBytes
	movw r30,r16
	ldd r22,Z+1
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r24,r14
	call uECC_vli_nativeToBytes
	movw r30,r16
	ldd r24,Z+1
	ld r20,Z
	lsl r20
	sbc r21,r21
	ldi r18,lo8(17)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r20,r18
	adc r21,r19
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	movw r22,r24
	add r24,r14
	adc r25,r15
	call uECC_vli_nativeToBytes
	ldi r24,lo8(32)
	movw r30,r10
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L1
.L6:
	subi r22,-7
	sbci r23,-1
	rjmp .L3
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
.global	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
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
/* stack size = 92 */
.L__stack_usage = 92
	movw r10,r24
	movw r8,r22
	movw r14,r20
	ldi r16,lo8(64)
	ldi r17,0
	movw r12,r20
	ldi r18,20
	add r12,r18
	adc r13,__zero_reg__
	rjmp .L12
.L9:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	movw r20,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,33
	call uECC_vli_mmod
	movw r20,r14
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,49
	call EccPoint_compute_public_key
	or r24,r25
	brne .L15
	subi r16,1
	sbc r17,__zero_reg__
	brne .+2
	rjmp .L16
.L12:
	call uECC_get_rng
	movw r30,r24
	or r24,r25
	brne .+2
	rjmp .L13
	ldi r22,lo8(64)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	icall
	sbiw r24,0
	brne .+2
	rjmp .L7
	movw r26,r14
	adiw r26,2
	ld r24,X+
	ld r25,X
	adiw r24,31
	movw r18,r24
	brpl .L9
	subi r18,-31
	sbci r19,-1
	rjmp .L9
.L15:
	movw r30,r14
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r24,7
	movw r22,r24
	brmi .L17
.L11:
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	movw r20,r28
	subi r20,-33
	sbci r21,-1
	movw r24,r8
	call uECC_vli_nativeToBytes
	movw r26,r14
	adiw r26,1
	ld r22,X
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r20,r28
	subi r20,-49
	sbci r21,-1
	movw r24,r10
	call uECC_vli_nativeToBytes
	movw r30,r14
	ldd r24,Z+1
	ld r20,Z
	lsl r20
	sbc r21,r21
	ldi r18,lo8(49)
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
	movw r30,r28
	adiw r30,33
	ldi r24,lo8(32)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L7
.L17:
	subi r22,-7
	sbci r23,-1
	rjmp .L11
.L16:
	ldi r25,0
	ldi r24,0
	rjmp .L7
.L13:
	ldi r25,0
	ldi r24,0
.L7:
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
	ret
	.size	uECC_make_key, .-uECC_make_key
.global	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
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
	subi r28,68
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 68 */
/* stack size = 82 */
.L__stack_usage = 82
	movw r16,r24
	movw r8,r20
	movw r12,r18
	movw r24,r28
	adiw r24,33
	adiw r28,65-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,65-62
	adiw r24,16
	adiw r28,67-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,67-62
	movw r26,r18
	ld r15,X
	adiw r26,1
	ld r10,X
	sbiw r26,1
	adiw r26,2
	ld r24,X+
	ld r25,X
	adiw r24,7
	movw r20,r24
	brpl .+2
	rjmp .L25
.L19:
	asr r21
	ror r20
	asr r21
	ror r20
	asr r21
	ror r20
	movw r24,r28
	adiw r24,33
	call uECC_vli_bytesToNative
	mov __tmp_reg__,r10
	lsl r0
	sbc r11,r11
	movw r20,r10
	movw r22,r16
	movw r24,r28
	adiw r24,1
	call uECC_vli_bytesToNative
	movw r22,r16
	add r22,r10
	adc r23,r11
	movw r20,r10
	mov r24,r15
	lsl r24
	sbc r25,r25
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r24,r30
	adc r25,r31
	call uECC_vli_bytesToNative
	movw r18,r12
	movw r20,r28
	subi r20,-49
	sbci r21,-1
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r22
	call regularize_k
	movw r6,r24
	call uECC_get_rng
	or r24,r25
	brne .+2
	rjmp .L24
	movw r30,r6
	lsl r30
	rol r31
	ldi r18,lo8(65)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r30,r18
	adc r31,r19
	mov r20,r15
	movw r22,r12
	subi r22,-4
	sbci r23,-1
	ld r24,Z
	ldd r25,Z+1
	call uECC_generate_random_int
	sbiw r24,0
	breq .L21
	movw r30,r6
	lsl r30
	rol r31
	ldi r20,lo8(65)
	ldi r21,0
	add r20,r28
	adc r21,r29
	add r30,r20
	adc r31,r21
	ld r18,Z
	ldd r19,Z+1
.L20:
	movw r26,r12
	adiw r26,2
	ld r16,X+
	ld r17,X
	subi r16,-1
	sbci r17,-1
	ldi r24,lo8(1)
	ldi r25,0
	or r6,r7
	breq .L22
	ldi r25,0
	ldi r24,0
.L22:
	lsl r24
	rol r25
	ldi r30,lo8(65)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r24,r30
	adc r25,r31
	movw r26,r24
	ld r20,X+
	ld r21,X
	movw r14,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call EccPoint_mult
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r10
	movw r24,r8
	call uECC_vli_nativeToBytes
	movw r22,r12
	movw r24,r28
	adiw r24,1
	call EccPoint_isZero
	ldi r19,lo8(1)
	ldi r18,0
	or r24,r25
	breq .L23
	ldi r19,0
.L23:
	mov r24,r19
	mov r25,r18
.L21:
	movw r30,r28
	subi r30,-65
	sbci r31,-1
	ldi r18,lo8(4)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r18
	brne 0b
	sbiw r30,16
	ldi r18,lo8(16)
	movw r26,r30
	mov r19,r18
	0:
	st X+,__zero_reg__
	dec r19
	brne 0b
	sbiw r30,16
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r18
	brne 0b
/* epilogue start */
	subi r28,-68
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
.L25:
	subi r20,-7
	sbci r21,-1
	rjmp .L19
.L24:
	ldi r19,0
	ldi r18,0
	rjmp .L20
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (GNU) 7.3.0"

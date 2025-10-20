	.file	"tinycrypt_ecc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r22
	lsl r30
	sbc r31,r31
	add r30,r24
	adc r31,r25
	cp r24,r30
	cpc r25,r31
	brsh .L1
.L3:
	ld r19,-Z
	ld r18,-Z
	lsr r19
	ror r18
	std Z+1,r19
	st Z,r18
	cp r24,r30
	cpc r25,r31
	brlo .L3
.L1:
/* epilogue start */
	ret
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
.global	__muldi3
	.type	uECC_vli_mult, @function
uECC_vli_mult:
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
	sbiw r28,37
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 37 */
/* stack size = 55 */
.L__stack_usage = 55
	std Y+28,r25
	std Y+27,r24
	std Y+21,r23
	std Y+20,r22
	std Y+23,r21
	std Y+22,r20
	std Y+26,r18
	cp __zero_reg__,r18
	brlt .+2
	rjmp .L16
	std Y+19,r25
	std Y+18,r24
	std Y+17,__zero_reg__
	std Y+16,__zero_reg__
	mov r9,__zero_reg__
	mov r8,__zero_reg__
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	std Y+15,__zero_reg__
	rjmp .L7
.L8:
	add r4,r30
	adc r5,r31
	mov r18,r27
	mov r19,r26
	mov r20,r2
	ldd r21,Y+1
	mov r22,r8
	mov r23,r9
	ldd r24,Y+25
	ldd r25,Y+24
	ldi r16,lo8(32)
	call __lshrdi3
	mov r8,r18
	mov r9,r19
	std Y+29,r27
	std Y+30,r26
	inc r7
	ldd r23,Y+15
	cp r23,r7
	brge .+2
	rjmp .L22
.L9:
	mov r24,r7
	mov __tmp_reg__,r7
	lsl r0
	sbc r25,r25
	ldd r30,Y+16
	ldd r31,Y+17
	sub r30,r24
	sbc r31,r25
	lsl r30
	rol r31
	ldd r14,Y+22
	ldd r15,Y+23
	add r30,r14
	adc r31,r15
	ld r18,Z
	ldd r19,Z+1
	movw r10,r18
	mov r13,__zero_reg__
	mov r12,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	movw r16,r14
	std Y+1,r18
	std Y+2,r11
	std Y+3,r12
	std Y+4,r13
	std Y+5,r14
	std Y+6,r15
	std Y+7,r16
	std Y+8,r17
	lsl r24
	rol r25
	ldd r30,Y+20
	ldd r31,Y+21
	add r30,r24
	adc r31,r25
	ld r16,Z
	ldd r17,Z+1
	mov r10,r16
	mov r11,r17
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	ldd r18,Y+1
	ldd r19,Y+2
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call __muldi3
	mov r3,r18
	std Y+9,r19
	std Y+10,r20
	mov r6,r21
	std Y+11,r22
	std Y+12,r23
	std Y+13,r24
	std Y+14,r25
	mov r18,r8
	mov r19,r9
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(32)
	call __ashldi3
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	ldd r22,Y+29
	ldd r23,Y+30
	movw r20,r22
	ldi r23,0
	ldi r22,0
	ldi r24,0
	ldi r25,0
	movw r26,r24
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	mov r10,r20
	or r10,r18
	mov r11,r21
	or r11,r19
	mov r18,r3
	ldd r19,Y+9
	ldd r20,Y+10
	mov r21,r6
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	call __adddi3
	mov r27,r18
	mov r26,r19
	mov r2,r20
	std Y+1,r21
	mov r8,r22
	mov r9,r23
	std Y+25,r24
	std Y+24,r25
	ldi r30,lo8(1)
	ldi r31,0
	mov r18,r3
	ldd r19,Y+9
	ldd r20,Y+10
	mov r21,r6
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	mov r10,r27
	mov r11,r26
	mov r12,r2
	ldd r13,Y+1
	mov r14,r8
	mov r15,r9
	ldd r16,Y+25
	ldd r17,Y+24
	call __cmpdi2
	breq .+4
	brlo .+2
	rjmp .L8
	ldi r30,0
	rjmp .L8
.L22:
	ldd r24,Y+29
	ldd r25,Y+30
	std Y+2,r25
	std Y+1,r24
.L10:
	ldd r26,Y+18
	ldd r27,Y+19
	ldd r10,Y+1
	ldd r11,Y+2
	st X+,r10
	st X+,r11
	std Y+19,r27
	std Y+18,r26
	ldd r16,Y+15
	subi r16,lo8(-(1))
	std Y+15,r16
	ldd r18,Y+16
	ldd r19,Y+17
	subi r18,-1
	sbci r19,-1
	std Y+17,r19
	std Y+16,r18
	std Y+2,r9
	std Y+1,r8
	ldd r19,Y+26
	cp r19,r16
	breq .L6
	movw r8,r4
.L7:
	ldd r20,Y+15
	mov r5,__zero_reg__
	mov r4,__zero_reg__
	tst r20
	brlt .L10
	mov r5,__zero_reg__
	mov r4,__zero_reg__
	mov r7,__zero_reg__
	ldd r12,Y+1
	ldd r13,Y+2
	std Y+30,r13
	std Y+29,r12
	rjmp .L9
.L16:
	mov r5,__zero_reg__
	mov r4,__zero_reg__
	mov r9,__zero_reg__
	mov r8,__zero_reg__
.L6:
	ldd r22,Y+26
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	std Y+35,r23
	std Y+34,r22
	movw r24,r22
	lsl r24
	rol r25
	movw r26,r24
	sbiw r26,1
	std Y+30,r27
	std Y+29,r26
	cp r22,r26
	cpc r23,r27
	brlt .+2
	rjmp .L11
	ldd r27,Y+26
	std Y+25,r27
	movw r18,r22
	ldi r30,lo8(1)
	std Y+24,r30
	mov r31,r27
	subi r31,lo8(-(-1))
	std Y+31,r31
	ldd r16,Y+20
	ldd r17,Y+21
	subi r16,-2
	sbci r17,-1
	std Y+33,r17
	std Y+32,r16
	movw r6,r4
	rjmp .L15
.L13:
	add r6,r30
	adc r7,r31
	mov r18,r27
	mov r19,r26
	mov r20,r8
	mov r21,r9
	ldd r22,Y+37
	ldd r23,Y+36
	ldd r24,Y+1
	ldd r25,Y+9
	ldi r16,lo8(32)
	call __lshrdi3
	mov r8,r18
	mov r9,r19
	std Y+1,r27
	std Y+2,r26
	ldd r24,Y+18
	ldd r25,Y+19
	cp r4,r24
	cpc r5,r25
	brne .+2
	rjmp .L12
.L14:
	movw r26,r4
	ld r12,X+
	ld r13,X+
	movw r4,r26
	ldd r30,Y+16
	ldd r31,Y+17
	ld r21,-Z
	ld r20,-Z
	std Y+17,r31
	std Y+16,r30
	mov r10,r12
	mov r11,r13
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	mov r18,r20
	mov r19,r21
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call __muldi3
	std Y+10,r18
	std Y+11,r19
	mov r2,r20
	mov r3,r21
	std Y+12,r22
	std Y+13,r23
	std Y+14,r24
	std Y+15,r25
	mov r18,r8
	mov r19,r9
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(32)
	call __ashldi3
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	ldd r22,Y+1
	ldd r23,Y+2
	movw r20,r22
	ldi r23,0
	ldi r22,0
	ldi r24,0
	ldi r25,0
	movw r26,r24
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	mov r10,r20
	or r10,r18
	mov r11,r21
	or r11,r19
	ldd r18,Y+10
	ldd r19,Y+11
	mov r20,r2
	mov r21,r3
	ldd r22,Y+12
	ldd r23,Y+13
	ldd r24,Y+14
	ldd r25,Y+15
	call __adddi3
	mov r27,r18
	mov r26,r19
	mov r8,r20
	mov r9,r21
	std Y+37,r22
	std Y+36,r23
	std Y+1,r24
	std Y+9,r25
	ldi r30,lo8(1)
	ldi r31,0
	ldd r18,Y+10
	ldd r19,Y+11
	mov r20,r2
	mov r21,r3
	ldd r22,Y+12
	ldd r23,Y+13
	ldd r24,Y+14
	ldd r25,Y+15
	mov r10,r27
	mov r11,r26
	mov r12,r8
	mov r13,r9
	ldd r14,Y+37
	ldd r15,Y+36
	ldd r16,Y+1
	ldd r17,Y+9
	call __cmpdi2
	breq .+4
	brlo .+2
	rjmp .L13
	ldi r30,0
	rjmp .L13
.L18:
	std Y+2,r9
	std Y+1,r8
	movw r8,r6
	mov r7,__zero_reg__
	mov r6,__zero_reg__
.L12:
	ldd r27,Y+25
	mov r30,r27
	lsl r30
	sbc r31,r31
	ldd r10,Y+27
	ldd r11,Y+28
	add r30,r10
	adc r31,r11
	ldd r12,Y+1
	ldd r13,Y+2
	std Z+1,r13
	st Z,r12
	subi r27,lo8(-(1))
	std Y+25,r27
	mov r18,r27
	lsl r27
	sbc r19,r19
	ldd r16,Y+24
	subi r16,lo8(-(1))
	std Y+24,r16
	ldd r20,Y+29
	ldd r21,Y+30
	cp r18,r20
	cpc r19,r21
	brge .L11
.L15:
	ldd r17,Y+26
	ldd r20,Y+24
	cp r20,r17
	brge .L18
	mov __tmp_reg__,r20
	lsl r0
	sbc r21,r21
	sub r18,r20
	sbc r19,r21
	subi r18,-1
	sbci r19,-1
	lsl r18
	rol r19
	ldd r22,Y+22
	ldd r23,Y+23
	add r22,r18
	adc r23,r19
	std Y+17,r23
	std Y+16,r22
	movw r4,r20
	lsl r4
	rol r5
	ldd r24,Y+20
	ldd r25,Y+21
	add r4,r24
	adc r5,r25
	ldd r24,Y+31
	ldd r25,Y+24
	sub r24,r25
	add r24,r20
	mov r25,r21
	adc r25,__zero_reg__
	lsl r24
	rol r25
	ldd r26,Y+32
	ldd r27,Y+33
	add r26,r24
	adc r27,r25
	std Y+19,r27
	std Y+18,r26
	std Y+2,r9
	std Y+1,r8
	movw r8,r6
	mov r7,__zero_reg__
	mov r6,__zero_reg__
	rjmp .L14
.L11:
	ldd r30,Y+34
	ldd r31,Y+35
	lsl r30
	rol r31
	lsl r30
	rol r31
	ldd r22,Y+27
	ldd r23,Y+28
	add r30,r22
	adc r31,r23
	sbiw r30,2
	std Z+1,r9
	st Z,r8
/* epilogue start */
	adiw r28,37
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
	.size	uECC_vli_mult, .-uECC_vli_mult
	.type	uECC_vli_add, @function
uECC_vli_add:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	cp __zero_reg__,r18
	brlt .+2
	rjmp .L29
	movw r26,r22
	mov r16,r20
	mov r17,r21
	mov r6,r24
	mov r7,r25
	subi r18,lo8(-(-1))
	ldi r19,0
	lsl r18
	rol r19
	subi r22,-2
	sbci r23,-1
	add r22,r18
	adc r23,r19
	ldi r25,0
	ldi r24,0
	clr r10
	inc r10
	mov r11,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	rjmp .L28
.L31:
	mov r12,r8
	mov r13,r9
	rjmp .L25
.L26:
	mul r12,r20
	movw r14,r0
	mul r12,r21
	add r15,r0
	mul r13,r20
	add r15,r0
	clr r1
	mov r20,r10
	mov r21,r11
	cp r30,r18
	cpc r31,r19
	breq .L27
	mov r20,r8
	mov r21,r9
.L27:
	mul r20,r24
	movw r30,r0
	mul r20,r25
	add r31,r0
	mul r21,r24
	add r31,r0
	clr r1
	movw r24,r14
	or r24,r30
	or r25,r31
	movw r30,r6
	st Z+,r18
	st Z+,r19
	movw r6,r30
	cp r26,r22
	cpc r27,r23
	breq .L23
.L28:
	ld r30,X+
	ld r31,X+
	movw r28,r16
	ld r18,Y+
	ld r19,Y+
	movw r16,r28
	add r18,r30
	adc r19,r31
	add r18,r24
	adc r19,r25
	mov r12,r10
	mov r13,r11
	cp r30,r18
	cpc r31,r19
	breq .L31
.L25:
	mov r20,r10
	mov r21,r11
	cp r18,r30
	cpc r19,r31
	brlo .L26
	mov r20,r8
	mov r21,r9
	rjmp .L26
.L29:
	ldi r25,0
	ldi r24,0
.L23:
/* epilogue start */
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
	.size	uECC_vli_add, .-uECC_vli_add
	.type	vli_modInv_update, @function
vli_modInv_update:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r20
	ld r24,Y
	sbrc r24,0
	rjmp .L34
.L33:
	mov r22,r17
	movw r24,r28
	call uECC_vli_rshift1
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L34:
	mov r18,r20
	movw r20,r22
	movw r22,r28
	movw r24,r28
	call uECC_vli_add
	rjmp .L33
	.size	vli_modInv_update, .-vli_modInv_update
.global	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts g_rng_function+1,r25
	sts g_rng_function,r24
/* epilogue start */
	ret
	.size	uECC_set_rng, .-uECC_set_rng
.global	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,g_rng_function
	lds r25,g_rng_function+1
/* epilogue start */
	ret
	.size	uECC_get_rng, .-uECC_get_rng
.global	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+2
	ldd r19,Z+3
	subi r18,-7
	sbci r19,-1
	movw r24,r18
	tst r25
	brlt .L39
.L38:
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
/* epilogue start */
	ret
.L39:
	adiw r24,7
	rjmp .L38
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
.global	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+1
	lsl r24
	sbc r25,r25
/* epilogue start */
	ret
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
.global	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp __zero_reg__,r22
	brge .L41
	movw r30,r24
	subi r22,lo8(-(-1))
	ldi r23,0
	lsl r22
	rol r23
	adiw r24,2
	add r24,r22
	adc r25,r23
.L43:
	st Z+,__zero_reg__
	st Z+,__zero_reg__
	cp r30,r24
	cpc r31,r25
	brne .L43
.L41:
/* epilogue start */
	ret
	.size	uECC_vli_clear, .-uECC_vli_clear
.global	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp __zero_reg__,r22
	brge .L49
	movw r30,r24
	subi r22,lo8(-(-1))
	ldi r23,0
	lsl r22
	rol r23
	adiw r24,2
	add r24,r22
	adc r25,r23
	ldi r19,0
	ldi r18,0
.L47:
	ld r20,Z+
	ld r21,Z+
	or r18,r20
	or r19,r21
	cp r30,r24
	cpc r31,r25
	brne .L47
.L46:
	ldi r24,lo8(1)
	ldi r25,0
	or r18,r19
	breq .L48
	ldi r25,0
	ldi r24,0
.L48:
/* epilogue start */
	ret
.L49:
	ldi r19,0
	ldi r18,0
	rjmp .L46
	.size	uECC_vli_isZero, .-uECC_vli_isZero
.global	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r22
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
	lsl r18
	rol r19
	add r18,r24
	adc r19,r25
	andi r22,31
	clr r23
	ldi r24,lo8(1)
	ldi r25,0
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r22
	brpl 1b
	movw r30,r18
	ld r18,Z
	ldd r19,Z+1
	and r24,r18
	and r25,r19
/* epilogue start */
	ret
	.size	uECC_vli_testBit, .-uECC_vli_testBit
.global	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r24
	ldi r25,lo8(-1)
	add r25,r22
	brmi .L53
	mov r30,r25
	lsl r30
	sbc r31,r31
	add r30,r20
	adc r31,r21
	ld r18,Z
	ldd r19,Z+1
	or r18,r19
	brne .L53
	ldi r30,lo8(-2)
	add r30,r22
	mov __tmp_reg__,r30
	lsl r0
	sbc r31,r31
	adiw r30,1
	lsl r30
	rol r31
	add r30,r20
	adc r31,r21
.L54:
	subi r25,lo8(-(-1))
	brmi .L53
	ld r19,-Z
	ld r18,-Z
	or r18,r19
	breq .L54
.L53:
	subi r25,lo8(-(1))
	breq .L58
	mov r18,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r19,r19
	subi r18,1
	sbci r19,-128
	lsl r18
	rol r19
	add r20,r18
	adc r21,r19
	movw r30,r20
	ld r18,Z
	ldd r19,Z+1
	movw r20,r18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L56
	ldi r21,0
	ldi r20,0
.L57:
	lsr r19
	ror r18
	subi r20,-1
	sbci r21,-1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L57
.L56:
	mov r24,r25
	lsl r25
	sbc r25,r25
	sbiw r24,1
	lsl r24
	rol r25
	swap r24
	swap r25
	andi r25,0xf0
	eor r25,r24
	andi r24,0xf0
	eor r25,r24
	add r24,r20
	adc r25,r21
	ret
.L58:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	uECC_vli_numBits, .-uECC_vli_numBits
.global	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp __zero_reg__,r20
	brge .L62
	movw r30,r22
	mov r26,r24
	mov r27,r25
	subi r20,lo8(-(-1))
	ldi r21,0
	lsl r20
	rol r21
	subi r22,-2
	sbci r23,-1
	add r22,r20
	adc r23,r21
.L64:
	ld r24,Z+
	ld r25,Z+
	st X+,r24
	st X+,r25
	cp r30,r22
	cpc r31,r23
	brne .L64
.L62:
/* epilogue start */
	ret
	.size	uECC_vli_set, .-uECC_vli_set
.global	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	ldi r25,lo8(-1)
	add r25,r20
	brmi .L70
	mov r18,r25
	lsl r18
	sbc r19,r19
	movw r30,r26
	add r30,r18
	adc r31,r19
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	add r18,r22
	adc r19,r23
	movw r28,r18
	ld r18,Y
	ldd r19,Y+1
	cp r18,r30
	cpc r19,r31
	brlo .L71
	cp r30,r18
	cpc r31,r19
	brlo .L72
	ldi r30,lo8(-2)
	add r30,r20
	mov __tmp_reg__,r30
	lsl r0
	sbc r31,r31
	adiw r30,1
	lsl r30
	rol r31
	add r26,r30
	adc r27,r31
	add r30,r22
	adc r31,r23
.L68:
	subi r25,lo8(-(-1))
	brmi .L75
	ld r21,-X
	ld r20,-X
	ld r19,-Z
	ld r18,-Z
	cp r18,r20
	cpc r19,r21
	brlo .L73
	cp r20,r18
	cpc r21,r19
	brsh .L68
	ldi r24,lo8(-1)
	rjmp .L66
.L75:
	ldi r24,0
.L66:
/* epilogue start */
	pop r29
	pop r28
	ret
.L70:
	ldi r24,0
	rjmp .L66
.L71:
	ldi r24,lo8(1)
	rjmp .L66
.L72:
	ldi r24,lo8(-1)
	rjmp .L66
.L73:
	ldi r24,lo8(1)
	rjmp .L66
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
.global	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	subi r20,lo8(-(-1))
	brmi .L80
	mov r30,r20
	mov __tmp_reg__,r20
	lsl r0
	sbc r31,r31
	adiw r30,1
	lsl r30
	rol r31
	movw r26,r24
	add r26,r30
	adc r27,r31
	add r30,r22
	adc r31,r23
	ldi r23,0
	ldi r22,0
.L78:
	ld r19,-X
	ld r18,-X
	ld r25,-Z
	ld r24,-Z
	eor r18,r24
	eor r19,r25
	or r22,r18
	or r23,r19
	subi r20,lo8(-(-1))
	brpl .L78
.L77:
	ldi r24,lo8(1)
	ldi r25,0
	or r22,r23
	brne .L79
	ldi r25,0
	ldi r24,0
.L79:
/* epilogue start */
	ret
.L80:
	ldi r23,0
	ldi r22,0
	rjmp .L77
	.size	uECC_vli_equal, .-uECC_vli_equal
.global	cond_set
	.type	cond_set, @function
cond_set:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(1)
	ldi r19,0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L83
	ldi r19,0
	ldi r18,0
.L83:
	mul r18,r22
	movw r30,r0
	mul r18,r23
	add r31,r0
	mul r19,r22
	add r31,r0
	clr r1
	mul r24,r20
	movw r18,r0
	mul r24,r21
	add r19,r0
	mul r25,r20
	add r19,r0
	clr r1
	movw r24,r30
	or r24,r18
	or r25,r19
/* epilogue start */
	ret
	.size	cond_set, .-cond_set
.global	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	cp __zero_reg__,r18
	brlt .+2
	rjmp .L90
	movw r26,r22
	mov r16,r20
	mov r17,r21
	mov r6,r24
	mov r7,r25
	subi r18,lo8(-(-1))
	ldi r19,0
	lsl r18
	rol r19
	subi r22,-2
	sbci r23,-1
	add r22,r18
	adc r23,r19
	ldi r25,0
	ldi r24,0
	clr r10
	inc r10
	mov r11,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	rjmp .L89
.L92:
	mov r12,r8
	mov r13,r9
	rjmp .L86
.L87:
	mul r12,r20
	movw r14,r0
	mul r12,r21
	add r15,r0
	mul r13,r20
	add r15,r0
	clr r1
	mov r20,r10
	mov r21,r11
	cp r30,r18
	cpc r31,r19
	breq .L88
	mov r20,r8
	mov r21,r9
.L88:
	mul r20,r24
	movw r30,r0
	mul r20,r25
	add r31,r0
	mul r21,r24
	add r31,r0
	clr r1
	movw r24,r14
	or r24,r30
	or r25,r31
	movw r28,r6
	st Y+,r18
	st Y+,r19
	movw r6,r28
	cp r26,r22
	cpc r27,r23
	breq .L84
.L89:
	ld r30,X+
	ld r31,X+
	movw r28,r16
	ld r18,Y+
	ld r19,Y+
	movw r16,r28
	movw r20,r30
	sub r20,r18
	sbc r21,r19
	movw r18,r20
	sub r18,r24
	sbc r19,r25
	mov r12,r10
	mov r13,r11
	cp r30,r18
	cpc r31,r19
	breq .L92
.L86:
	mov r20,r10
	mov r21,r11
	cp r30,r18
	cpc r31,r19
	brlo .L87
	mov r20,r8
	mov r21,r9
	rjmp .L87
.L90:
	ldi r25,0
	ldi r24,0
.L84:
/* epilogue start */
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
	.size	uECC_vli_sub, .-uECC_vli_sub
.global	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
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
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 24 */
.L__stack_usage = 24
	movw r12,r24
	movw r16,r22
	ldi r20,lo8(8)
	call uECC_vli_set
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	movw r30,r16
	ldd r24,Z+22
	ldd r25,Z+23
	std Y+8,r25
	std Y+7,r24
	ldd r24,Z+24
	ldd r25,Z+25
	std Y+10,r25
	std Y+9,r24
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+12,r25
	std Y+11,r24
	ldd r24,Z+28
	ldd r25,Z+29
	std Y+14,r25
	std Y+13,r24
	ldd r24,Z+30
	ldd r25,Z+31
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r20
	movw r24,r20
	call uECC_vli_add
	movw r14,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	movw r30,r16
	ldd r24,Z+24
	ldd r25,Z+25
	std Y+8,r25
	std Y+7,r24
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+10,r25
	std Y+9,r24
	ldd r24,Z+28
	ldd r25,Z+29
	std Y+12,r25
	std Y+11,r24
	ldd r24,Z+30
	ldd r25,Z+31
	std Y+14,r25
	std Y+13,r24
	std Y+16,__zero_reg__
	std Y+15,__zero_reg__
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r20
	movw r24,r20
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	movw r30,r16
	ldd r24,Z+16
	ldd r25,Z+17
	std Y+2,r25
	std Y+1,r24
	ldd r24,Z+18
	ldd r25,Z+19
	std Y+4,r25
	std Y+3,r24
	ldd r24,Z+20
	ldd r25,Z+21
	std Y+6,r25
	std Y+5,r24
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	std Y+8,__zero_reg__
	std Y+7,__zero_reg__
	ldd r24,Z+28
	ldd r25,Z+29
	std Y+14,r25
	std Y+13,r24
	ldd r24,Z+30
	ldd r25,Z+31
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	movw r30,r16
	ldd r24,Z+18
	ldd r25,Z+19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Z+20
	ldd r25,Z+21
	std Y+4,r25
	std Y+3,r24
	ldd r24,Z+22
	ldd r25,Z+23
	std Y+6,r25
	std Y+5,r24
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+8,r25
	std Y+7,r24
	ldd r18,Z+28
	ldd r19,Z+29
	std Y+10,r19
	std Y+9,r18
	ldd r18,Z+30
	ldd r19,Z+31
	std Y+12,r19
	std Y+11,r18
	std Y+14,r25
	std Y+13,r24
	ldd r24,Z+16
	ldd r25,Z+17
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	movw r30,r16
	ldd r24,Z+22
	ldd r25,Z+23
	std Y+2,r25
	std Y+1,r24
	ldd r24,Z+24
	ldd r25,Z+25
	std Y+4,r25
	std Y+3,r24
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+6,r25
	std Y+5,r24
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	std Y+8,__zero_reg__
	std Y+7,__zero_reg__
	ldd r24,Z+16
	ldd r25,Z+17
	std Y+14,r25
	std Y+13,r24
	ldd r24,Z+20
	ldd r25,Z+21
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_sub
	sub r14,r24
	sbc r15,r25
	movw r30,r16
	ldd r24,Z+24
	ldd r25,Z+25
	std Y+2,r25
	std Y+1,r24
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+4,r25
	std Y+3,r24
	ldd r24,Z+28
	ldd r25,Z+29
	std Y+6,r25
	std Y+5,r24
	ldd r24,Z+30
	ldd r25,Z+31
	std Y+8,r25
	std Y+7,r24
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	ldd r24,Z+18
	ldd r25,Z+19
	std Y+14,r25
	std Y+13,r24
	ldd r24,Z+22
	ldd r25,Z+23
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_sub
	sub r14,r24
	sbc r15,r25
	movw r30,r16
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+2,r25
	std Y+1,r24
	ldd r24,Z+28
	ldd r25,Z+29
	std Y+4,r25
	std Y+3,r24
	ldd r24,Z+30
	ldd r25,Z+31
	std Y+6,r25
	std Y+5,r24
	ldd r24,Z+16
	ldd r25,Z+17
	std Y+8,r25
	std Y+7,r24
	ldd r24,Z+18
	ldd r25,Z+19
	std Y+10,r25
	std Y+9,r24
	ldd r24,Z+20
	ldd r25,Z+21
	std Y+12,r25
	std Y+11,r24
	std Y+14,__zero_reg__
	std Y+13,__zero_reg__
	ldd r24,Z+24
	ldd r25,Z+25
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_sub
	sub r14,r24
	sbc r15,r25
	movw r30,r16
	ldd r24,Z+28
	ldd r25,Z+29
	std Y+2,r25
	std Y+1,r24
	ldd r24,Z+30
	ldd r25,Z+31
	std Y+4,r25
	std Y+3,r24
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	ldd r24,Z+18
	ldd r25,Z+19
	std Y+8,r25
	std Y+7,r24
	ldd r24,Z+20
	ldd r25,Z+21
	std Y+10,r25
	std Y+9,r24
	ldd r24,Z+22
	ldd r25,Z+23
	std Y+12,r25
	std Y+11,r24
	std Y+14,__zero_reg__
	std Y+13,__zero_reg__
	ldd r24,Z+26
	ldd r25,Z+27
	std Y+16,r25
	std Y+15,r24
	ldi r18,lo8(8)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_sub
	sub r14,r24
	sbc r15,r25
	brpl .L94
.L95:
	ldi r18,lo8(8)
	ldi r20,lo8(curve_secp256r1+4)
	ldi r21,hi8(curve_secp256r1+4)
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	tst r15
	brlt .L95
	rjmp .L93
.L97:
	ldi r18,lo8(8)
	ldi r20,lo8(curve_secp256r1+4)
	ldi r21,hi8(curve_secp256r1+4)
	movw r22,r12
	movw r24,r12
	call uECC_vli_sub
	sub r14,r24
	sbc r15,r25
.L94:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L97
	ldi r20,lo8(8)
	movw r22,r12
	ldi r24,lo8(curve_secp256r1+4)
	ldi r25,hi8(curve_secp256r1+4)
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	brne .L97
.L93:
/* epilogue start */
	adiw r28,16
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
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
.global	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
	push r14
	push r15
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 21 */
.L__stack_usage = 21
	mov r17,r20
	mov r18,r20
	movw r20,r22
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call uECC_vli_sub
	movw r14,r24
	mov r22,r17
	movw r24,r28
	adiw r24,1
	call uECC_vli_isZero
	ldi r18,lo8(1)
	or r24,r25
	breq .L101
	ldi r18,0
.L101:
	ldi r24,lo8(1)
	or r14,r15
	brne .L102
	ldi r24,0
.L102:
	lsl r24
	sub r18,r24
	mov r24,r18
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
	.size	uECC_vli_cmp, .-uECC_vli_cmp
.global	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
	push r14
	push r15
	push r16
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r14,r18
	mov r18,r16
	call uECC_vli_add
	or r24,r25
	brne .L104
	mov r20,r16
	movw r22,r28
	movw r24,r14
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	breq .L103
.L104:
	mov r18,r16
	movw r20,r14
	movw r22,r28
	movw r24,r28
	call uECC_vli_sub
.L103:
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	ret
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
.global	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
	push r14
	push r15
	push r16
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r14,r18
	mov r18,r16
	call uECC_vli_sub
	or r24,r25
	brne .L108
.L106:
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	ret
.L108:
	mov r18,r16
	movw r20,r14
	movw r22,r28
	movw r24,r28
	call uECC_vli_add
	rjmp .L106
	.size	uECC_vli_modSub, .-uECC_vli_modSub
.global	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
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
	subi r28,76
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 76 */
/* stack size = 94 */
.L__stack_usage = 94
	adiw r28,73-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,73-62
	movw r10,r20
	mov r13,r18
	movw r24,r28
	adiw r24,33
	adiw r28,65-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,65-62
	adiw r28,67-62
	std Y+63,r23
	std Y+62,r22
	sbiw r28,67-62
	mov r16,r18
	mov __tmp_reg__,r18
	lsl r0
	sbc r17,r17
	mov r22,r18
	movw r24,r20
	call uECC_vli_numBits
	movw r6,r16
	clr __tmp_reg__
	lsr r7
	ror r6
	ror __tmp_reg__
	lsr r7
	ror r6
	ror __tmp_reg__
	mov r7,r6
	mov r6,__tmp_reg__
	sub r6,r24
	sbc r7,r25
	movw r8,r6
	brpl .+2
	rjmp .L127
.L110:
	asr r9
	ror r8
	asr r9
	ror r8
	asr r9
	ror r8
	asr r9
	ror r8
	asr r9
	ror r8
	movw r24,r6
	andi r24,31
	andi r25,128
	tst r25
	brge .+2
	rjmp .L128
.L111:
	mov r15,r24
	mov r22,r8
	movw r24,r28
	adiw r24,1
	call uECC_vli_clear
	cp __zero_reg__,r15
	brlt .+2
	rjmp .L112
	mov r20,r13
	mov __tmp_reg__,r13
	lsl r0
	sbc r21,r21
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L113
	movw r30,r10
	mov r24,r8
	lsl r24
	sbc r25,r25
	ldi r22,lo8(1)
	ldi r23,0
	add r22,r28
	adc r23,r29
	add r24,r22
	adc r25,r23
	lsl r20
	rol r21
	add r20,r10
	adc r21,r11
	ldi r19,0
	ldi r18,0
	ldi r22,lo8(32)
	ldi r23,0
	movw r10,r22
	sub r10,r15
	sbc r11,__zero_reg__
	sbrc r15,7
	inc r11
.L114:
	ld r8,Z+
	ld r9,Z+
	movw r22,r8
	mov r0,r15
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r0
	brpl 1b
	or r18,r22
	or r19,r23
	movw r26,r24
	st X+,r18
	st X+,r19
	movw r24,r26
	movw r18,r8
	mov r0,r10
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r0
	brpl 1b
	cp r20,r30
	cpc r21,r31
	brne .L114
.L113:
	clr r14
	inc r14
	mov r15,__zero_reg__
	tst r7
	brge .+2
	rjmp .L115
	lsl r16
	rol r17
	mov r24,r13
	lsl r24
	sbc r25,r25
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r18,r24
	adc r19,r25
	adiw r28,71-62
	std Y+63,r19
	std Y+62,r18
	sbiw r28,71-62
	clr r14
	inc r14
	mov r15,__zero_reg__
	mov r5,__zero_reg__
	mov r4,__zero_reg__
	clr r8
	inc r8
	mov r9,__zero_reg__
	mov r11,r8
	mov r10,r9
	adiw r28,69-63
	std Y+63,r5
	sbiw r28,69-63
	adiw r28,70-63
	std Y+63,r4
	sbiw r28,70-63
	rjmp .L116
.L127:
	ldi r18,31
	add r8,r18
	adc r9,__zero_reg__
	rjmp .L110
.L128:
	sbiw r24,1
	ori r24,224
	ori r25,255
	adiw r24,1
	rjmp .L111
.L112:
	mov r24,r8
	lsl r24
	sbc r25,r25
	mov r20,r13
	movw r22,r10
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r24,r30
	adc r25,r31
	call uECC_vli_set
	rjmp .L113
.L118:
	mov r20,r2
	mov r21,r3
.L117:
	adiw r28,75-62
	ldd r22,Y+62
	ldd r23,Y+63
	sbiw r28,75-62
	add r18,r22
	adc r19,r23
	movw r30,r18
	std Z+1,r25
	st Z,r24
	inc r12
	mov r24,r12
	mov __tmp_reg__,r12
	lsl r0
	sbc r25,r25
	cp r24,r16
	cpc r25,r17
	brge .L122
.L119:
	mov r18,r12
	lsl r18
	sbc r19,r19
	movw r22,r26
	add r22,r18
	adc r23,r19
	movw r30,r22
	ld r22,Z
	ldd r23,Z+1
	lsl r24
	rol r25
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r24,r30
	adc r25,r31
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	movw r30,r22
	sub r30,r24
	sbc r31,r25
	movw r24,r30
	sub r24,r20
	sbc r25,r21
	cp r22,r24
	cpc r23,r25
	breq .L117
	mov r2,r11
	mov r3,r10
	cp r22,r24
	cpc r23,r25
	brlo .L118
	adiw r28,69-63
	ldd r2,Y+63
	sbiw r28,69-63
	adiw r28,70-63
	ldd r3,Y+63
	sbiw r28,70-63
	rjmp .L118
.L122:
	ldi r24,lo8(1)
	cp r14,r20
	cpc r15,r21
	breq .L120
	ldi r24,0
.L120:
	mov r14,r24
	mov r15,__zero_reg__
	mov r22,r13
	movw r24,r28
	adiw r24,1
	call uECC_vli_rshift1
	mov r22,r13
	adiw r28,71-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,71-62
	call uECC_vli_rshift1
	ldi r31,1
	sub r6,r31
	sbc r7,__zero_reg__
	brcs .L115
.L116:
	mov r20,r5
	mov r21,r4
	cp __zero_reg__,r16
	cpc __zero_reg__,r17
	brge .L122
	movw r30,r14
	lsl r30
	rol r31
	ldi r22,lo8(65)
	ldi r23,0
	add r22,r28
	adc r23,r29
	add r30,r22
	adc r31,r23
	ld r26,Z
	ldd r27,Z+1
	movw r30,r8
	sub r30,r14
	sbc r31,r15
	lsl r30
	rol r31
	add r30,r22
	adc r31,r23
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r12,__zero_reg__
	mov r20,r5
	mov r21,r4
	mov r24,r5
	mov r25,r4
	adiw r28,75-62
	std Y+63,r31
	std Y+62,r30
	sbiw r28,75-62
	rjmp .L119
.L115:
	lsl r14
	rol r15
	ldi r22,lo8(65)
	ldi r23,0
	add r22,r28
	adc r23,r29
	add r14,r22
	adc r15,r23
	movw r26,r14
	ld r22,X+
	ld r23,X
	mov r20,r13
	adiw r28,73-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,73-62
	call uECC_vli_set
/* epilogue start */
	subi r28,-76
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
	.size	uECC_vli_mmod, .-uECC_vli_mmod
.global	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 39 */
.L__stack_usage = 39
	movw r14,r24
	movw r12,r18
	mov r18,r16
	movw r24,r28
	adiw r24,1
	call uECC_vli_mult
	mov r18,r16
	movw r20,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	call uECC_vli_mmod
/* epilogue start */
	adiw r28,32
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
	pop r13
	pop r12
	ret
	.size	uECC_vli_modMult, .-uECC_vli_modMult
.global	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 38 */
.L__stack_usage = 38
	movw r14,r24
	movw r16,r18
	movw r30,r18
	ld r18,Z
	movw r24,r28
	adiw r24,1
	call uECC_vli_mult
	movw r30,r16
	subi r30,-88
	sbci r31,-1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	icall
/* epilogue start */
	adiw r28,32
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
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	movw r20,r22
	call uECC_vli_modMult_fast
/* epilogue start */
	ret
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
.global	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
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
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 46 */
.L__stack_usage = 46
	movw r12,r24
	movw r6,r22
	movw r14,r20
	movw r10,r18
	movw r30,r18
	ld r17,Z
	mov r22,r17
	movw r24,r20
	call uECC_vli_isZero
	or r24,r25
	breq .L137
.L132:
/* epilogue start */
	adiw r28,32
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
.L137:
	movw r20,r10
	movw r22,r6
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSquare_fast
	movw r18,r10
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r28
	adiw r24,17
	call uECC_vli_modMult_fast
	movw r20,r10
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSquare_fast
	movw r18,r10
	movw r20,r14
	movw r22,r6
	movw r24,r6
	call uECC_vli_modMult_fast
	movw r20,r10
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSquare_fast
	movw r8,r10
	ldi r31,4
	add r8,r31
	adc r9,__zero_reg__
	mov r16,r17
	movw r18,r8
	movw r20,r14
	movw r22,r12
	movw r24,r12
	call uECC_vli_modAdd
	movw r18,r8
	movw r20,r14
	movw r22,r14
	movw r24,r14
	call uECC_vli_modAdd
	movw r18,r8
	movw r20,r14
	movw r22,r12
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r10
	movw r20,r14
	movw r22,r12
	movw r24,r12
	call uECC_vli_modMult_fast
	movw r18,r8
	movw r20,r12
	movw r22,r12
	movw r24,r14
	call uECC_vli_modAdd
	movw r18,r8
	movw r20,r14
	movw r22,r12
	movw r24,r12
	call uECC_vli_modAdd
	ldi r23,0
	ldi r22,0
	movw r24,r12
	call uECC_vli_testBit
	or r24,r25
	brne .+2
	rjmp .L134
	mov r18,r17
	movw r20,r8
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	mov r22,r17
	movw r24,r12
	call uECC_vli_rshift1
.L135:
	movw r20,r10
	movw r22,r12
	movw r24,r14
	call uECC_vli_modSquare_fast
	mov r16,r17
	movw r18,r8
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r8
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r8
	movw r20,r14
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSub
	movw r18,r10
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_modMult_fast
	movw r18,r8
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r20
	call uECC_vli_modSub
	mov r20,r17
	movw r22,r14
	movw r24,r12
	call uECC_vli_set
	mov r20,r17
	movw r22,r6
	movw r24,r14
	call uECC_vli_set
	mov r20,r17
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r6
	call uECC_vli_set
	rjmp .L132
.L134:
	mov r22,r17
	movw r24,r12
	call uECC_vli_rshift1
	rjmp .L135
	.size	double_jacobian_default, .-double_jacobian_default
.global	x_side_default
	.type	x_side_default, @function
x_side_default:
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
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 28 */
.L__stack_usage = 28
	movw r14,r24
	movw r8,r22
	movw r12,r20
	movw r30,r28
	adiw r30,3
	ldi r24,lo8(14)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	ldi r24,lo8(3)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	movw r30,r20
	ld r17,Z
	movw r24,r14
	call uECC_vli_modSquare_fast
	movw r10,r12
	ldi r31,4
	add r10,r31
	adc r11,__zero_reg__
	mov r16,r17
	movw r18,r10
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r8
	movw r22,r14
	movw r24,r14
	call uECC_vli_modMult_fast
	movw r20,r12
	subi r20,-68
	sbci r21,-1
	movw r18,r10
	movw r22,r14
	movw r24,r14
	call uECC_vli_modAdd
/* epilogue start */
	adiw r28,16
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
	.size	x_side_default, .-x_side_default
	.type	XYcZ_addC, @function
XYcZ_addC:
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
	sbiw r28,48
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 48 */
/* stack size = 64 */
.L__stack_usage = 64
	movw r8,r24
	movw r4,r22
	movw r10,r20
	movw r6,r18
	movw r12,r16
	movw r30,r16
	ld r17,Z
	movw r14,r12
	ldi r31,4
	add r14,r31
	adc r15,__zero_reg__
	mov r16,r17
	movw r18,r14
	movw r20,r24
	movw r22,r10
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSub
	movw r20,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSquare_fast
	movw r18,r12
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r8
	movw r24,r8
	call uECC_vli_modMult_fast
	movw r18,r12
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r10
	movw r24,r10
	call uECC_vli_modMult_fast
	movw r18,r14
	movw r20,r4
	movw r22,r6
	movw r24,r28
	adiw r24,1
	call uECC_vli_modAdd
	movw r18,r14
	movw r20,r4
	movw r22,r6
	movw r24,r6
	call uECC_vli_modSub
	movw r18,r14
	movw r20,r8
	movw r22,r10
	movw r24,r28
	adiw r24,17
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r4
	movw r24,r4
	call uECC_vli_modMult_fast
	movw r18,r14
	movw r20,r10
	movw r22,r8
	movw r24,r28
	adiw r24,17
	call uECC_vli_modAdd
	movw r20,r12
	movw r22,r6
	movw r24,r10
	call uECC_vli_modSquare_fast
	movw r18,r14
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r10
	movw r24,r10
	call uECC_vli_modSub
	movw r18,r14
	movw r20,r10
	movw r22,r8
	movw r24,r28
	adiw r24,33
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r28
	subi r20,-33
	sbci r21,-1
	movw r22,r6
	movw r24,r6
	call uECC_vli_modMult_fast
	movw r18,r14
	movw r20,r4
	movw r22,r6
	movw r24,r6
	call uECC_vli_modSub
	movw r20,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,33
	call uECC_vli_modSquare_fast
	movw r18,r14
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSub
	movw r18,r14
	movw r20,r8
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	movw r18,r14
	movw r20,r4
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r4
	call uECC_vli_modSub
	mov r20,r17
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r8
	call uECC_vli_set
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	XYcZ_addC, .-XYcZ_addC
.global	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,64
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 64 */
/* stack size = 73 */
.L__stack_usage = 73
	movw r10,r24
	movw r12,r22
	movw r14,r20
	mov r17,r18
	mov r22,r18
	movw r24,r12
	call uECC_vli_isZero
	or r24,r25
	brne .L151
	mov r20,r17
	movw r22,r12
	movw r24,r28
	adiw r24,1
	call uECC_vli_set
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,17
	call uECC_vli_set
	mov r22,r17
	movw r24,r28
	adiw r24,33
	call uECC_vli_clear
	ldi r24,lo8(1)
	ldi r25,0
	std Y+34,r25
	std Y+33,r24
	mov r22,r17
	movw r24,r28
	adiw r24,49
	call uECC_vli_clear
	rjmp .L143
.L151:
	mov r22,r17
	movw r24,r10
	call uECC_vli_clear
	rjmp .L140
.L153:
	mov r22,r17
	movw r24,r28
	adiw r24,1
	call uECC_vli_rshift1
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,33
	call vli_modInv_update
.L143:
	mov r20,r17
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call uECC_vli_cmp_unsafe
	tst r24
	brne .+2
	rjmp .L152
	ldd r25,Y+1
	sbrs r25,0
	rjmp .L153
	ldd r25,Y+17
	sbrs r25,0
	rjmp .L154
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L147
	mov r18,r17
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	mov r22,r17
	movw r24,r28
	adiw r24,1
	call uECC_vli_rshift1
	mov r20,r17
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r28
	adiw r24,33
	call uECC_vli_cmp_unsafe
	tst r24
	brlt .L155
.L148:
	mov r18,r17
	movw r20,r28
	subi r20,-49
	sbci r21,-1
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,33
	call vli_modInv_update
	rjmp .L143
.L154:
	mov r22,r17
	movw r24,r28
	adiw r24,17
	call uECC_vli_rshift1
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,49
	call vli_modInv_update
	rjmp .L143
.L155:
	mov r18,r17
	movw r20,r14
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r22
	call uECC_vli_add
	rjmp .L148
.L147:
	mov r18,r17
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	mov r22,r17
	movw r24,r28
	adiw r24,17
	call uECC_vli_rshift1
	mov r20,r17
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,49
	call uECC_vli_cmp_unsafe
	tst r24
	brlt .L156
.L149:
	mov r18,r17
	movw r20,r28
	subi r20,-33
	sbci r21,-1
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,49
	call vli_modInv_update
	rjmp .L143
.L156:
	mov r18,r17
	movw r20,r14
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r22
	call uECC_vli_add
	rjmp .L149
.L152:
	mov r20,r17
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r10
	call uECC_vli_set
.L140:
/* epilogue start */
	subi r28,-64
	sbci r29,-1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	uECC_vli_modInv, .-uECC_vli_modInv
.global	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(curve_secp256r1)
	ldi r25,hi8(curve_secp256r1)
/* epilogue start */
	ret
	.size	uECC_secp256r1, .-uECC_secp256r1
.global	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	ld r22,Z
	lsl r22
	call uECC_vli_isZero
/* epilogue start */
	ret
	.size	EccPoint_isZero, .-EccPoint_isZero
.global	apply_z
	.type	apply_z, @function
apply_z:
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
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 26 */
.L__stack_usage = 26
	movw r10,r24
	movw r14,r22
	movw r12,r20
	movw r16,r18
	movw r20,r18
	movw r22,r12
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSquare_fast
	movw r18,r16
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r10
	movw r24,r10
	call uECC_vli_modMult_fast
	movw r18,r16
	movw r20,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	movw r18,r16
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modMult_fast
/* epilogue start */
	adiw r28,16
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
	.size	apply_z, .-apply_z
.global	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
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
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 32 */
.L__stack_usage = 32
	movw r6,r24
	movw r4,r22
	movw r14,r20
	movw r10,r18
	movw r12,r16
	movw r30,r16
	ld r17,Z
	movw r8,r12
	ldi r31,4
	add r8,r31
	adc r9,__zero_reg__
	mov r16,r17
	movw r18,r8
	movw r20,r24
	movw r22,r14
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSub
	movw r20,r12
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSquare_fast
	movw r18,r12
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r6
	movw r24,r6
	call uECC_vli_modMult_fast
	movw r18,r12
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modMult_fast
	movw r18,r8
	movw r20,r4
	movw r22,r10
	movw r24,r10
	call uECC_vli_modSub
	movw r20,r12
	movw r22,r10
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSquare_fast
	movw r18,r8
	movw r20,r6
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSub
	movw r18,r8
	movw r20,r14
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSub
	movw r18,r8
	movw r20,r6
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r14
	movw r22,r4
	movw r24,r4
	call uECC_vli_modMult_fast
	movw r18,r8
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r6
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r14
	movw r22,r10
	movw r24,r10
	call uECC_vli_modMult_fast
	movw r18,r8
	movw r20,r4
	movw r22,r10
	movw r24,r10
	call uECC_vli_modSub
	mov r20,r17
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	call uECC_vli_set
/* epilogue start */
	adiw r28,16
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
	ret
	.size	XYcZ_add, .-XYcZ_add
.global	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
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
	subi r28,107
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 107 */
/* stack size = 125 */
.L__stack_usage = 125
	adiw r28,106-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,106-62
	adiw r28,100-62
	std Y+63,r23
	std Y+62,r22
	sbiw r28,100-62
	adiw r28,98-62
	std Y+63,r21
	std Y+62,r20
	sbiw r28,98-62
	movw r12,r18
	movw r4,r14
	movw r30,r14
	ld r31,Z
	adiw r28,97-63
	std Y+63,r31
	sbiw r28,97-63
	mov r20,r31
	movw r24,r28
	adiw r24,17
	call uECC_vli_set
	adiw r28,97-63
	ldd r18,Y+63
	sbiw r28,97-63
	lsl r18
	sbc r19,r19
	adiw r28,102-62
	std Y+63,r19
	std Y+62,r18
	sbiw r28,102-62
	adiw r28,100-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,100-62
	add r24,r18
	adc r25,r19
	adiw r28,104-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,104-62
	adiw r28,97-63
	ldd r20,Y+63
	sbiw r28,97-63
	movw r22,r24
	movw r24,r28
	adiw r24,49
	call uECC_vli_set
	movw r30,r14
	ld r15,Z
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .+2
	rjmp .L162
	mov r20,r15
	movw r22,r12
	movw r24,r28
	subi r24,-81
	sbci r25,-1
	call uECC_vli_set
.L163:
	mov r20,r15
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call uECC_vli_set
	mov r20,r15
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r28
	adiw r24,33
	call uECC_vli_set
	movw r18,r4
	movw r20,r28
	subi r20,-81
	sbci r21,-1
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call apply_z
	movw r30,r4
	subi r30,-84
	sbci r31,-1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r18,r4
	movw r20,r28
	subi r20,-81
	sbci r21,-1
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	icall
	movw r18,r4
	movw r20,r28
	subi r20,-81
	sbci r21,-1
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call apply_z
	movw r10,r16
	ldi r31,2
	sub r10,r31
	sbc r11,__zero_reg__
	cp __zero_reg__,r10
	cpc __zero_reg__,r11
	brlt .+2
	rjmp .L164
	clr r2
	inc r2
	mov r3,__zero_reg__
	rjmp .L166
.L162:
	mov r22,r15
	movw r24,r28
	subi r24,-81
	sbci r25,-1
	call uECC_vli_clear
	ldi r24,lo8(1)
	ldi r25,0
	adiw r28,81-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,81-62
	rjmp .L163
.L165:
	movw r6,r18
	lsl r6
	rol r7
	lsl r6
	rol r7
	lsl r6
	rol r7
	lsl r6
	rol r7
	mov __tmp_reg__,r31
	ldi r31,lo8(33)
	mov r12,r31
	mov r13,__zero_reg__
	mov r31,__tmp_reg__
	add r12,r28
	adc r13,r29
	add r12,r6
	adc r13,r7
	ldi r24,lo8(1)
	ldi r25,0
	add r24,r28
	adc r25,r29
	add r6,r24
	adc r7,r25
	movw r14,r2
	sub r14,r18
	sbc r15,r19
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
	mov __tmp_reg__,r31
	ldi r31,lo8(33)
	mov r8,r31
	mov r9,__zero_reg__
	mov r31,__tmp_reg__
	add r8,r28
	adc r9,r29
	add r8,r14
	adc r9,r15
	add r14,r24
	adc r15,r25
	movw r16,r4
	movw r18,r12
	movw r20,r6
	movw r22,r8
	movw r24,r14
	call XYcZ_addC
	movw r18,r8
	movw r20,r14
	movw r22,r12
	movw r24,r6
	call XYcZ_add
	ldi r25,1
	sub r10,r25
	sbc r11,__zero_reg__
	breq .L164
.L166:
	movw r22,r10
	adiw r28,98-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,98-62
	call uECC_vli_testBit
	movw r18,r2
	or r24,r25
	brne .+2
	rjmp .L165
	ldi r18,0
	ldi r19,0
	rjmp .L165
.L164:
	ldi r23,0
	ldi r22,0
	adiw r28,98-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,98-62
	call uECC_vli_testBit
	ldi r18,lo8(1)
	ldi r19,0
	or r24,r25
	breq .L167
	ldi r19,0
	ldi r18,0
.L167:
	movw r12,r18
	lsl r12
	rol r13
	lsl r12
	rol r13
	lsl r12
	rol r13
	lsl r12
	rol r13
	mov __tmp_reg__,r31
	ldi r31,lo8(33)
	mov r8,r31
	mov r9,__zero_reg__
	mov r31,__tmp_reg__
	add r8,r28
	adc r9,r29
	add r8,r12
	adc r9,r13
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r12,r30
	adc r13,r31
	clr r14
	inc r14
	mov r15,__zero_reg__
	sub r14,r18
	sbc r15,r19
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
	mov __tmp_reg__,r31
	ldi r31,lo8(33)
	mov r10,r31
	mov r11,__zero_reg__
	mov r31,__tmp_reg__
	add r10,r28
	adc r11,r29
	add r10,r14
	adc r11,r15
	add r14,r30
	adc r15,r31
	movw r16,r4
	movw r18,r8
	movw r20,r12
	movw r22,r10
	movw r24,r14
	call XYcZ_addC
	movw r6,r4
	ldi r31,4
	add r6,r31
	adc r7,__zero_reg__
	adiw r28,97-63
	ldd r16,Y+63
	sbiw r28,97-63
	movw r18,r6
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	subi r24,-65
	sbci r25,-1
	call uECC_vli_modSub
	movw r18,r4
	movw r20,r10
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	movw r18,r4
	adiw r28,100-62
	ldd r20,Y+62
	ldd r21,Y+63
	sbiw r28,100-62
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	adiw r28,97-63
	ldd r18,Y+63
	sbiw r28,97-63
	movw r20,r6
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modInv
	movw r18,r4
	adiw r28,104-62
	ldd r20,Y+62
	ldd r21,Y+63
	sbiw r28,104-62
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	movw r18,r4
	movw r20,r14
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	movw r16,r4
	movw r18,r10
	movw r20,r14
	movw r22,r8
	movw r24,r12
	call XYcZ_add
	movw r18,r4
	movw r20,r28
	subi r20,-65
	sbci r21,-1
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call apply_z
	adiw r28,97-63
	ldd r20,Y+63
	sbiw r28,97-63
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	adiw r28,106-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,106-62
	call uECC_vli_set
	adiw r28,97-63
	ldd r20,Y+63
	sbiw r28,97-63
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	adiw r28,106-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,106-62
	adiw r28,102-62
	ldd r18,Y+62
	ldd r19,Y+63
	sbiw r28,102-62
	add r24,r18
	adc r25,r19
	call uECC_vli_set
/* epilogue start */
	subi r28,-107
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
	.size	EccPoint_mult, .-EccPoint_mult
.global	regularize_k
	.type	regularize_k, @function
regularize_k:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r22
	movw r10,r20
	movw r30,r18
	ldd r12,Z+2
	ldd r13,Z+3
	movw r20,r12
	subi r20,-31
	sbci r21,-1
	movw r28,r20
	tst r29
	brlt .L175
.L170:
	asr r29
	ror r28
	asr r29
	ror r28
	asr r29
	ror r28
	asr r29
	ror r28
	asr r29
	ror r28
	movw r16,r18
	subi r16,-20
	sbci r17,-1
	mov r18,r28
	movw r20,r16
	movw r22,r24
	movw r24,r14
	call uECC_vli_add
	or r24,r25
	brne .L173
	ldi r18,lo8(32)
	muls r28,r18
	movw r24,r0
	clr __zero_reg__
	cp r12,r24
	cpc r13,r25
	brge .L174
	movw r22,r12
	movw r24,r14
	call uECC_vli_testBit
	ldi r18,lo8(1)
	mov r13,__zero_reg__
	or r24,r25
	brne .L172
	ldi r18,0
.L172:
	mov r12,r18
	rjmp .L171
.L175:
	adiw r28,31
	rjmp .L170
.L173:
	clr r12
	inc r12
	mov r13,__zero_reg__
.L171:
	mov r18,r28
	movw r20,r16
	movw r22,r14
	movw r24,r10
	call uECC_vli_add
	mov r24,r12
	mov r25,r13
/* epilogue start */
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
.L174:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	rjmp .L171
	.size	regularize_k, .-regularize_k
.global	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
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
	sbiw r28,36
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 36 */
/* stack size = 46 */
.L__stack_usage = 46
	movw r10,r24
	movw r24,r22
	movw r12,r20
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	std Y+34,r23
	std Y+33,r22
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	std Y+36,r21
	std Y+35,r20
	movw r18,r12
	call regularize_k
	movw r30,r12
	ldd r16,Z+2
	ldd r17,Z+3
	subi r16,-1
	sbci r17,-1
	ldi r18,lo8(1)
	ldi r19,0
	or r24,r25
	breq .L177
	ldi r19,0
	ldi r18,0
.L177:
	lsl r18
	rol r19
	movw r30,r28
	add r30,r18
	adc r31,r19
	ldd r20,Z+33
	ldd r21,Z+34
	movw r22,r12
	subi r22,-36
	sbci r23,-1
	movw r14,r12
	ldi r19,0
	ldi r18,0
	movw r24,r10
	call EccPoint_mult
	movw r22,r12
	movw r24,r10
	call EccPoint_isZero
	ldi r18,lo8(1)
	ldi r19,0
	or r24,r25
	breq .L178
	ldi r19,0
	ldi r18,0
.L178:
	movw r24,r18
/* epilogue start */
	adiw r28,36
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
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
.global	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	cp __zero_reg__,r22
	cpc __zero_reg__,r23
	brge .L179
	ldi r17,0
	ldi r19,0
	ldi r18,0
	movw r28,r22
	sbiw r28,1
.L181:
	movw r30,r28
	sub r30,r18
	sbc r31,r19
	movw r18,r30
	movw r26,r24
	add r26,r17
	adc r27,__zero_reg__
	sbrc r17,7
	dec r27
	lsr r31
	ror r30
	lsr r31
	ror r30
	lsl r30
	rol r31
	add r30,r20
	adc r31,r21
	andi r18,3
	clr r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	rjmp 2f
	1:
	lsr r31
	ror r30
	2:
	dec r18
	brpl 1b
	st X,r30
	subi r17,lo8(-(1))
	mov r18,r17
	mov __tmp_reg__,r17
	lsl r0
	sbc r19,r19
	cp r18,r22
	cpc r19,r23
	brlt .L181
.L179:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
.global	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	movw r14,r22
	movw r28,r20
	movw r24,r20
	adiw r24,3
	movw r22,r24
	brpl .+2
	rjmp .L188
.L184:
	asr r23
	ror r22
	asr r23
	ror r22
	movw r24,r16
	call uECC_vli_clear
	cp __zero_reg__,r28
	cpc __zero_reg__,r29
	brge .L183
	ldi r22,0
	ldi r25,0
	ldi r24,0
	movw r20,r28
	subi r20,1
	sbc r21,__zero_reg__
.L186:
	movw r18,r20
	sub r18,r24
	sbc r19,r25
	movw r24,r18
	movw r30,r18
	lsr r31
	ror r30
	lsr r31
	ror r30
	lsl r30
	rol r31
	add r30,r16
	adc r31,r17
	movw r26,r14
	add r26,r22
	adc r27,__zero_reg__
	sbrc r22,7
	dec r27
	ld r18,X
	ldi r19,0
	andi r24,3
	clr r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r26,r18
	rjmp 2f
	1:
	lsl r26
	rol r27
	2:
	dec r24
	brpl 1b
	movw r24,r26
	ld r18,Z
	ldd r19,Z+1
	or r24,r18
	or r25,r19
	std Z+1,r25
	st Z,r24
	subi r22,lo8(-(1))
	mov r24,r22
	mov __tmp_reg__,r22
	lsl r0
	sbc r25,r25
	cp r24,r28
	cpc r25,r29
	brlt .L186
.L183:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L188:
	subi r22,-3
	sbci r23,-1
	rjmp .L184
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
.global	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r16,r24
	movw r8,r22
	mov r7,r20
	mov r22,r20
	movw r24,r8
	call uECC_vli_numBits
	lds r18,g_rng_function
	lds r19,g_rng_function+1
	or r18,r19
	brne .+2
	rjmp .L193
	mov r18,r7
	mov __tmp_reg__,r7
	lsl r0
	sbc r19,r19
	movw r10,r18
	lsl r10
	rol r11
	lsl r10
	rol r11
	movw r14,r18
	ldi r20,1
	sub r14,r20
	ldi r20,-128
	sbc r15,r20
	lsl r14
	rol r15
	add r14,r16
	adc r15,r17
	lsl r18
	rol r19
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	sub r18,r24
	sbc r19,r25
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r12,r24
	rjmp 2f
	1:
	lsr r13
	ror r12
	2:
	dec r18
	brpl 1b
	ldi r28,lo8(64)
	ldi r29,0
	rjmp .L192
.L191:
	sbiw r28,1
	breq .L196
.L192:
	lds r30,g_rng_function
	lds r31,g_rng_function+1
	movw r22,r10
	movw r24,r16
	icall
	sbiw r24,0
	breq .L189
	movw r30,r14
	ld r24,Z
	ldd r25,Z+1
	and r24,r12
	and r25,r13
	std Z+1,r25
	st Z,r24
	mov r22,r7
	movw r24,r16
	call uECC_vli_isZero
	or r24,r25
	brne .L191
	mov r20,r7
	movw r22,r16
	movw r24,r8
	call uECC_vli_cmp
	cpi r24,lo8(1)
	brne .L191
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L189
.L196:
	ldi r25,0
	ldi r24,0
	rjmp .L189
.L193:
	ldi r25,0
	ldi r24,0
.L189:
/* epilogue start */
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
	ret
	.size	uECC_generate_random_int, .-uECC_generate_random_int
.global	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
	push r8
	push r9
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 43 */
.L__stack_usage = 43
	movw r14,r24
	movw r16,r22
	movw r30,r22
	ld r13,Z
	call EccPoint_isZero
	or r24,r25
	breq .+2
	rjmp .L199
	movw r8,r16
	ldi r31,4
	add r8,r31
	adc r9,__zero_reg__
	mov r20,r13
	movw r22,r14
	movw r24,r8
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	brne .L200
	mov r10,r13
	lsl r10
	sbc r11,r11
	add r10,r14
	adc r11,r15
	mov r20,r13
	movw r22,r10
	movw r24,r8
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	brne .L201
	movw r20,r16
	movw r22,r10
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSquare_fast
	movw r30,r16
	subi r30,-86
	sbci r31,-1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r20,r16
	movw r22,r14
	movw r24,r28
	adiw r24,17
	icall
	mov r20,r13
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call uECC_vli_equal
	or r24,r25
	brne .L202
	ldi r25,0
	ldi r24,0
.L197:
/* epilogue start */
	adiw r28,32
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
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L199:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L197
.L200:
	ldi r24,lo8(-2)
	ldi r25,lo8(-1)
	rjmp .L197
.L201:
	ldi r24,lo8(-2)
	ldi r25,lo8(-1)
	rjmp .L197
.L202:
	ldi r24,lo8(-3)
	ldi r25,lo8(-1)
	rjmp .L197
	.size	uECC_valid_point, .-uECC_valid_point
.global	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 38 */
.L__stack_usage = 38
	movw r14,r24
	movw r16,r22
	movw r30,r22
	ldd r20,Z+1
	mov __tmp_reg__,r20
	lsl r0
	sbc r21,r21
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call uECC_vli_bytesToNative
	movw r30,r16
	ldd r20,Z+1
	mov __tmp_reg__,r20
	lsl r0
	sbc r21,r21
	movw r22,r14
	add r22,r20
	adc r23,r21
	ld r24,Z
	lsl r24
	sbc r25,r25
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r24,r18
	adc r25,r19
	call uECC_vli_bytesToNative
	movw r22,r16
	subi r22,-36
	sbci r23,-1
	ldi r20,lo8(16)
	movw r24,r28
	adiw r24,1
	call uECC_vli_cmp_unsafe
	tst r24
	breq .L205
	movw r22,r16
	movw r24,r28
	adiw r24,1
	call uECC_valid_point
.L203:
/* epilogue start */
	adiw r28,32
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
.L205:
	ldi r24,lo8(-4)
	ldi r25,lo8(-1)
	rjmp .L203
	.size	uECC_valid_public_key, .-uECC_valid_public_key
.global	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
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
/* stack size = 56 */
.L__stack_usage = 56
	movw r12,r22
	movw r14,r20
	movw r30,r20
	ldd r18,Z+2
	ldd r19,Z+3
	subi r18,-7
	sbci r19,-1
	movw r20,r18
	brmi .L213
.L207:
	asr r21
	ror r20
	asr r21
	ror r20
	asr r21
	ror r20
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call uECC_vli_bytesToNative
	movw r30,r14
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r24,31
	movw r16,r24
	brmi .L214
.L208:
	asr r17
	ror r16
	asr r17
	ror r16
	asr r17
	ror r16
	asr r17
	ror r16
	asr r17
	ror r16
	mov r22,r16
	movw r24,r28
	adiw r24,1
	call uECC_vli_isZero
	or r24,r25
	breq .L215
	ldi r25,0
	ldi r24,0
.L206:
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
	ret
.L213:
	subi r20,-7
	sbci r21,-1
	rjmp .L207
.L214:
	subi r16,-31
	sbci r17,-1
	rjmp .L208
.L215:
	mov r20,r16
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	adiw r24,20
	call uECC_vli_cmp
	cpi r24,lo8(1)
	breq .L216
	ldi r25,0
	ldi r24,0
	rjmp .L206
.L216:
	movw r20,r14
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call EccPoint_compute_public_key
	or r24,r25
	brne .L217
	ldi r25,0
	ldi r24,0
	rjmp .L206
.L217:
	movw r30,r14
	ldd r22,Z+1
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r24,r12
	call uECC_vli_nativeToBytes
	movw r30,r14
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
	add r24,r12
	adc r25,r13
	call uECC_vli_nativeToBytes
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L206
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.data
	.type	g_rng_function, @object
	.size	g_rng_function, 2
g_rng_function:
	.word	gs(default_CSPRNG)
	.section	.rodata
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 90
curve_secp256r1:
	.byte	8
	.byte	32
	.word	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	9553
	.word	-13630
	.word	-24956
	.word	-1363
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-15722
	.word	14661
	.word	13216
	.word	32129
	.word	16626
	.word	-6427
	.word	16967
	.word	-11790
	.word	20981
	.word	16488
	.word	24270
	.word	13143
	.word	-25066
	.word	-5302
	.word	32667
	.word	17122
	.word	24651
	.word	15422
	.word	-20234
	.word	1712
	.word	-31044
	.word	-17067
	.word	-27673
	.word	13784
	.word	gs(double_jacobian_default)
	.word	gs(x_side_default)
	.word	gs(vli_mmod_fast_secp256r1)
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data

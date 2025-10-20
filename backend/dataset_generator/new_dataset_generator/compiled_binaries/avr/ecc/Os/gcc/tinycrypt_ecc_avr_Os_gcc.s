	.file	"tinycrypt_ecc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.type	uECC_vli_add, @function
uECC_vli_add:
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
	movw r30,r22
	movw r26,r20
	movw r16,r24
	ldi r25,0
	ldi r23,0
	ldi r22,0
.L2:
	cp r25,r18
	brlt .L6
	movw r24,r22
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
.L6:
	ld r28,Z+
	ld r29,Z+
	ld r20,X+
	ld r21,X+
	add r20,r28
	adc r21,r29
	add r20,r22
	adc r21,r23
	clr r10
	inc r10
	mov r11,__zero_reg__
	cp r28,r20
	cpc r29,r21
	brne .L3
	mov r11,__zero_reg__
	mov r10,__zero_reg__
.L3:
	clr r14
	inc r14
	mov r15,__zero_reg__
	cp r20,r28
	cpc r21,r29
	brlo .L4
	mov r15,__zero_reg__
	mov r14,__zero_reg__
.L4:
	mul r10,r14
	movw r12,r0
	mul r10,r15
	add r13,r0
	mul r11,r14
	add r13,r0
	clr r1
	clr r14
	inc r14
	mov r15,__zero_reg__
	cp r28,r20
	cpc r29,r21
	breq .L5
	mov r15,__zero_reg__
	mov r14,__zero_reg__
.L5:
	mul r14,r22
	movw r28,r0
	mul r14,r23
	add r29,r0
	mul r15,r22
	add r29,r0
	clr r1
	movw r22,r12
	or r22,r28
	or r23,r29
	movw r28,r16
	st Y+,r20
	st Y+,r21
	movw r16,r28
	subi r25,lo8(-(1))
	rjmp .L2
	.size	uECC_vli_add, .-uECC_vli_add
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
.L8:
	cp r24,r30
	cpc r25,r31
	brlo .L9
/* epilogue start */
	ret
.L9:
	ld r19,-Z
	ld r18,-Z
	lsr r19
	ror r18
	std Z+1,r19
	st Z,r18
	rjmp .L8
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
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
	sbrs r24,0
	rjmp .L11
	mov r18,r20
	movw r20,r22
	movw r22,r28
	movw r24,r28
	call uECC_vli_add
.L11:
	mov r22,r17
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	jmp uECC_vli_rshift1
	.size	vli_modInv_update, .-vli_modInv_update
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
	sbiw r28,36
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 36 */
/* stack size = 54 */
.L__stack_usage = 54
	std Y+19,r25
	std Y+18,r24
	std Y+21,r23
	std Y+20,r22
	std Y+23,r21
	std Y+22,r20
	std Y+17,r18
	std Y+8,r25
	std Y+7,r24
	movw r2,r20
	ldi r18,2
	add r2,r18
	adc r3,__zero_reg__
	mov r7,__zero_reg__
	mov r6,__zero_reg__
	mov r9,__zero_reg__
	mov r8,__zero_reg__
	mov r5,__zero_reg__
.L16:
	ldd r30,Y+17
	cp r5,r30
	brge .+2
	rjmp .L19
	mov r18,r30
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	std Y+8,r19
	std Y+7,r18
	movw r24,r18
	lsl r24
	rol r25
	movw r20,r24
	subi r20,1
	sbc r21,__zero_reg__
	std Y+25,r21
	std Y+24,r20
	clr r5
	inc r5
	subi r30,lo8(-(-1))
	std Y+26,r30
.L20:
	ldd r24,Y+26
	add r24,r5
	mov r26,r24
	lsl r24
	sbc r27,r27
	std Y+2,r27
	std Y+1,r26
	ldd r30,Y+24
	ldd r31,Y+25
	cp r26,r30
	cpc r27,r31
	brge .+2
	rjmp .L24
	ldd r30,Y+7
	ldd r31,Y+8
	lsl r30
	rol r31
	lsl r30
	rol r31
	ldd r18,Y+18
	ldd r19,Y+19
	add r30,r18
	adc r31,r19
	sbiw r30,2
	std Z+1,r9
	st Z,r8
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L19:
	ldd r20,Y+20
	ldd r21,Y+21
	std Y+6,r21
	std Y+5,r20
	std Y+4,r3
	std Y+3,r2
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	mov r4,__zero_reg__
.L18:
	ldd r26,Y+5
	ldd r27,Y+6
	ld r18,X+
	ld r19,X+
	std Y+6,r27
	std Y+5,r26
	ldd r30,Y+3
	ldd r31,Y+4
	ld r23,-Z
	ld r22,-Z
	std Y+4,r31
	std Y+3,r30
	ldi r25,0
	ldi r24,0
	ldi r21,0
	ldi r20,0
	call __umulsidi3
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	movw r18,r6
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(32)
	call __ashldi3
	movw r12,r20
	movw r14,r22
	movw r16,r24
	movw r20,r8
	ldi r23,0
	ldi r22,0
	ldi r24,0
	ldi r25,0
	movw r26,r24
	std Y+29,r8
	std Y+30,r21
	std Y+31,r22
	std Y+32,r23
	std Y+33,r24
	std Y+34,r25
	std Y+35,r26
	std Y+36,r27
	mov r10,r8
	or r10,r18
	mov r11,r21
	or r11,r19
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call __adddi3
	mov r31,r18
	mov r30,r19
	movw r6,r20
	std Y+26,r22
	std Y+24,r23
	mov r27,r24
	mov r26,r25
	clr r8
	inc r8
	mov r9,__zero_reg__
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	mov r10,r31
	mov r11,r30
	movw r12,r6
	ldd r14,Y+26
	ldd r15,Y+24
	mov r16,r27
	mov r17,r26
	call __cmpdi2
	breq .+2
	brsh .L17
	mov r9,__zero_reg__
	mov r8,__zero_reg__
.L17:
	ldd r22,Y+1
	ldd r23,Y+2
	add r22,r8
	adc r23,r9
	std Y+2,r23
	std Y+1,r22
	mov r18,r31
	mov r19,r30
	movw r20,r6
	ldd r22,Y+26
	ldd r23,Y+24
	mov r24,r27
	mov r25,r26
	ldi r16,lo8(32)
	call __lshrdi3
	mov r6,r18
	mov r7,r19
	movw r24,r30
	mov r8,r25
	mov r9,r24
	inc r4
	cp r5,r4
	brlt .+2
	rjmp .L18
	ldd r26,Y+7
	ldd r27,Y+8
	st X+,r8
	st X+,r9
	std Y+8,r27
	std Y+7,r26
	inc r5
	ldi r27,2
	add r2,r27
	adc r3,__zero_reg__
	movw r8,r6
	ldd r6,Y+1
	ldd r7,Y+2
	rjmp .L16
.L24:
	mov r4,r5
	mov r18,r5
	mov __tmp_reg__,r5
	lsl r0
	sbc r19,r19
	ldd r24,Y+1
	ldd r25,Y+2
	sub r24,r18
	sbc r25,r19
	adiw r24,1
	lsl r24
	rol r25
	ldd r22,Y+22
	ldd r23,Y+23
	add r22,r24
	adc r23,r25
	std Y+6,r23
	std Y+5,r22
	lsl r18
	rol r19
	ldd r24,Y+20
	ldd r25,Y+21
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	std Y+28,r7
	std Y+27,r6
	mov r7,__zero_reg__
	mov r6,__zero_reg__
.L21:
	ldd r21,Y+17
	cp r4,r21
	brlt .L23
	ldd r30,Y+1
	ldd r31,Y+2
	lsl r30
	rol r31
	ldd r22,Y+18
	ldd r23,Y+19
	add r30,r22
	adc r31,r23
	std Z+1,r9
	st Z,r8
	inc r5
	ldd r8,Y+27
	ldd r9,Y+28
	rjmp .L20
.L23:
	ldd r26,Y+3
	ldd r27,Y+4
	ld r18,X+
	ld r19,X+
	std Y+4,r27
	std Y+3,r26
	ldd r30,Y+5
	ldd r31,Y+6
	ld r23,-Z
	ld r22,-Z
	std Y+6,r31
	std Y+5,r30
	ldi r25,0
	ldi r24,0
	ldi r21,0
	ldi r20,0
	call __umulsidi3
	movw r2,r18
	std Y+9,r20
	std Y+10,r21
	std Y+11,r22
	std Y+12,r23
	std Y+13,r24
	std Y+14,r25
	ldd r22,Y+27
	ldd r23,Y+28
	movw r18,r22
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(32)
	call __ashldi3
	movw r12,r20
	movw r14,r22
	movw r16,r24
	movw r20,r8
	ldi r23,0
	ldi r22,0
	ldi r24,0
	ldi r25,0
	movw r26,r24
	std Y+30,r21
	std Y+31,r22
	std Y+32,r23
	std Y+33,r24
	std Y+34,r25
	std Y+35,r26
	std Y+36,r27
	mov r10,r8
	or r10,r18
	mov r11,r21
	or r11,r19
	movw r18,r2
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	call __adddi3
	std Y+15,r18
	std Y+16,r19
	std Y+29,r20
	std Y+27,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	clr r8
	inc r8
	mov r9,__zero_reg__
	movw r18,r2
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r10,Y+15
	ldd r11,Y+16
	ldd r12,Y+29
	ldd r13,Y+27
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
	call __cmpdi2
	breq .+2
	brsh .L22
	mov r9,__zero_reg__
	mov r8,__zero_reg__
.L22:
	add r6,r8
	adc r7,r9
	inc r4
	ldd r18,Y+15
	ldd r19,Y+16
	movw r8,r18
	ldd r20,Y+29
	ldd r21,Y+27
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(32)
	call __lshrdi3
	std Y+27,r18
	std Y+28,r19
	rjmp .L21
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	movw r24,r18
	adiw r24,7
	sbrc r25,7
	adiw r24,7
.L29:
	ldi r18,3
	1:
	asr r25
	ror r24
	dec r18
	brne 1b
/* epilogue start */
	ret
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
	movw r30,r24
	ldi r25,0
.L32:
	cp r25,r22
	brlt .L33
/* epilogue start */
	ret
.L33:
	st Z+,__zero_reg__
	st Z+,__zero_reg__
	subi r25,lo8(-(1))
	rjmp .L32
	.size	uECC_vli_clear, .-uECC_vli_clear
.global	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldi r25,0
	ldi r19,0
	ldi r18,0
.L35:
	cp r25,r22
	brlt .L36
	ldi r24,lo8(1)
	ldi r25,0
	or r18,r19
	breq .L37
	ldi r25,0
	ldi r24,0
.L37:
/* epilogue start */
	ret
.L36:
	ld r20,Z+
	ld r21,Z+
	or r18,r20
	or r19,r21
	subi r25,lo8(-(1))
	rjmp .L35
	.size	uECC_vli_isZero, .-uECC_vli_isZero
.global	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r22
	ldi r20,5
	1:
	asr r19
	ror r18
	dec r20
	brne 1b
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
	subi r22,lo8(-(-1))
	mov r30,r22
	mov __tmp_reg__,r22
	lsl r0
	sbc r31,r31
	adiw r30,1
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
.L43:
	sbrc r22,7
	rjmp .L44
	ld r19,-Z
	ld r18,-Z
	or r18,r19
	breq .L45
.L44:
	subi r22,lo8(-(1))
	breq .L49
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r18,r22
	subi r18,1
	sbci r19,-128
	lsl r18
	rol r19
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldi r19,0
	ldi r18,0
.L47:
	sbiw r24,0
	brne .L48
	movw r24,r22
	sbiw r24,1
	ldi r20,5
	1:
	lsl r24
	rol r25
	dec r20
	brne 1b
	add r24,r18
	adc r25,r19
	ret
.L45:
	subi r22,lo8(-(-1))
	rjmp .L43
.L48:
	lsr r25
	ror r24
	subi r18,-1
	sbci r19,-1
	rjmp .L47
.L49:
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
	movw r30,r22
	movw r26,r24
	ldi r25,0
.L51:
	cp r25,r20
	brlt .L52
/* epilogue start */
	ret
.L52:
	ld r18,Z+
	ld r19,Z+
	st X+,r18
	st X+,r19
	subi r25,lo8(-(1))
	rjmp .L51
	.size	uECC_vli_set, .-uECC_vli_set
.global	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	subi r20,lo8(-(-1))
	mov r16,r20
	lsl r16
	sbc r17,r17
	ldi r31,0
	ldi r30,0
.L54:
	sbrs r20,7
	rjmp .L56
	ldi r24,0
.L53:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L56:
	movw r18,r30
	add r18,r16
	adc r19,r17
	movw r26,r24
	add r26,r18
	adc r27,r19
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	add r18,r22
	adc r19,r23
	movw r28,r18
	ld r18,Y
	ldd r19,Y+1
	cp r18,r26
	cpc r19,r27
	brlo .L57
	sbiw r30,2
	cp r26,r18
	cpc r27,r19
	brlo .L58
	subi r20,lo8(-(-1))
	rjmp .L54
.L57:
	ldi r24,lo8(1)
	rjmp .L53
.L58:
	ldi r24,lo8(-1)
	rjmp .L53
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
.global	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
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
	subi r20,lo8(-(-1))
	mov r16,r20
	lsl r16
	sbc r17,r17
	ldi r27,0
	ldi r26,0
	ldi r31,0
	ldi r30,0
.L60:
	sbrs r20,7
	rjmp .L61
	ldi r24,lo8(1)
	ldi r25,0
	or r30,r31
	brne .L62
	ldi r25,0
	ldi r24,0
.L62:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L61:
	movw r18,r26
	add r18,r16
	adc r19,r17
	movw r28,r24
	add r28,r18
	adc r29,r19
	add r18,r22
	adc r19,r23
	ld r14,Y
	ldd r15,Y+1
	movw r28,r18
	ld r18,Y
	ldd r19,Y+1
	eor r18,r14
	eor r19,r15
	or r30,r18
	or r31,r19
	subi r20,lo8(-(-1))
	sbiw r26,2
	rjmp .L60
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
	breq .L64
	ldi r19,0
	ldi r18,0
.L64:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r30,r22
	movw r26,r20
	movw r28,r24
	ldi r19,0
	ldi r25,0
	ldi r24,0
.L69:
	cp r19,r18
	brlt .L73
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L73:
	ld r22,Z+
	ld r23,Z+
	ld r20,X+
	ld r21,X+
	movw r16,r22
	sub r16,r20
	sbc r17,r21
	movw r20,r16
	sub r20,r24
	sbc r21,r25
	clr r12
	inc r12
	mov r13,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brne .L70
	mov r13,__zero_reg__
	mov r12,__zero_reg__
.L70:
	ldi r16,lo8(1)
	ldi r17,0
	cp r22,r20
	cpc r23,r21
	brlo .L71
	ldi r17,0
	ldi r16,0
.L71:
	mul r12,r16
	movw r14,r0
	mul r12,r17
	add r15,r0
	mul r13,r16
	add r15,r0
	clr r1
	ldi r16,lo8(1)
	ldi r17,0
	cp r22,r20
	cpc r23,r21
	breq .L72
	ldi r17,0
	ldi r16,0
.L72:
	mul r16,r24
	movw r22,r0
	mul r16,r25
	add r23,r0
	mul r17,r24
	add r23,r0
	clr r1
	movw r24,r14
	or r24,r22
	or r25,r23
	st Y+,r20
	st Y+,r21
	subi r19,lo8(-(1))
	rjmp .L69
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
	sbrs r15,7
	rjmp .L75
.L76:
	ldi r18,lo8(8)
	ldi r20,lo8(curve_secp256r1+4)
	ldi r21,hi8(curve_secp256r1+4)
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
	add r14,r24
	adc r15,r25
	sbrc r15,7
	rjmp .L76
.L74:
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
.L77:
	ldi r18,lo8(8)
	ldi r20,lo8(curve_secp256r1+4)
	ldi r21,hi8(curve_secp256r1+4)
	movw r22,r12
	movw r24,r12
	call uECC_vli_sub
	sub r14,r24
	sbc r15,r25
.L75:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L77
	ldi r20,lo8(8)
	movw r22,r12
	ldi r24,lo8(curve_secp256r1+4)
	ldi r25,hi8(curve_secp256r1+4)
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	brne .L77
	rjmp .L74
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
	breq .L82
	ldi r18,0
.L82:
	ldi r24,lo8(1)
	or r14,r15
	brne .L83
	ldi r24,0
.L83:
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
	brne .L88
	mov r20,r16
	movw r22,r28
	movw r24,r14
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	breq .L87
.L88:
	mov r18,r16
	movw r20,r14
	movw r22,r28
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	jmp uECC_vli_sub
.L87:
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
	breq .L90
	mov r18,r16
	movw r20,r14
	movw r22,r28
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	jmp uECC_vli_add
.L90:
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	ret
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
	subi r28,68
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 68 */
/* stack size = 86 */
.L__stack_usage = 86
	movw r8,r24
	mov r3,r20
	mov r4,r21
	mov r5,r18
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r10,r18
	adiw r28,65-62
	std Y+63,r19
	std Y+62,r18
	sbiw r28,65-62
	adiw r28,67-62
	std Y+63,r23
	std Y+62,r22
	sbiw r28,67-62
	mov r22,r5
	mov r24,r20
	mov r25,r21
	call uECC_vli_numBits
	mov r12,r5
	mov __tmp_reg__,r5
	lsl r0
	sbc r13,r13
	movw r14,r12
	ldi r22,6
	1:
	lsl r14
	rol r15
	dec r22
	brne 1b
	sub r14,r24
	sbc r15,r25
	movw r16,r14
	sbrs r15,7
	rjmp .L93
	subi r16,-31
	sbci r17,-1
.L93:
	ldi r20,5
	1:
	asr r17
	ror r16
	dec r20
	brne 1b
	ldi r21,lo8(32)
	mov r6,r21
	mov r7,__zero_reg__
	movw r24,r14
	movw r22,r6
	call __divmodhi4
	mov r2,r24
	mov r22,r16
	movw r24,r28
	adiw r24,33
	call uECC_vli_clear
	mov __tmp_reg__,r16
	lsl r0
	sbc r17,r17
	cp __zero_reg__,r2
	brlt .+2
	rjmp .L94
	mov r30,r3
	mov r31,r4
	lsl r16
	rol r17
	ldi r21,0
	ldi r20,0
	ldi r25,0
	ldi r24,0
	sub r6,r2
	sbc r7,__zero_reg__
	sbrc r2,7
	inc r7
.L95:
	cp r24,r12
	cpc r25,r13
	brlo .L96
.L97:
	lsl r12
	rol r13
	ldi r23,lo8(33)
	mov r2,r23
	mov r3,__zero_reg__
	add r2,r28
	adc r3,r29
	add r2,r12
	adc r3,r13
	ldi r16,lo8(1)
	ldi r17,0
.L98:
	sbrs r15,7
	rjmp .L104
	lsl r16
	rol r17
	ldi r30,lo8(65)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r16
	adc r31,r17
	ld r22,Z
	ldd r23,Z+1
	mov r20,r5
	movw r24,r8
	call uECC_vli_set
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
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L96:
	ld r22,Z+
	ld r23,Z+
	movw r26,r24
	lsl r26
	rol r27
	add r26,r16
	adc r27,r17
	ldi r18,lo8(33)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r26,r18
	adc r27,r19
	movw r18,r22
	mov r0,r2
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r18,r20
	or r19,r21
	st X+,r18
	st X,r19
	movw r20,r22
	mov r0,r6
	rjmp 2f
	1:
	lsr r21
	ror r20
	2:
	dec r0
	brpl 1b
	adiw r24,1
	rjmp .L95
.L94:
	lsl r16
	rol r17
	mov r20,r5
	mov r22,r3
	mov r23,r4
	ldi r24,lo8(33)
	ldi r25,0
	add r24,r28
	adc r25,r29
	add r24,r16
	adc r25,r17
	call uECC_vli_set
	rjmp .L97
.L101:
	lsl r24
	rol r25
	movw r30,r6
	ld r20,Z
	ldd r21,Z+1
	movw r30,r20
	add r30,r24
	adc r31,r25
	ld r22,Z
	ldd r23,Z+1
	movw r30,r10
	add r30,r24
	adc r31,r25
	ldd r20,Z+32
	ldd r21,Z+33
	movw r30,r22
	sub r30,r20
	sbc r31,r21
	movw r20,r30
	sub r20,r18
	sbc r21,r19
	cp r22,r20
	cpc r23,r21
	breq .L99
	ldi r30,lo8(1)
	ldi r31,0
	cp r22,r20
	cpc r23,r21
	brlo .L100
	ldi r30,0
.L100:
	movw r18,r30
.L99:
	ld r22,X+
	ld r23,X
	sbiw r26,1
	add r24,r22
	adc r25,r23
	movw r30,r24
	std Z+1,r21
	st Z,r20
	inc r4
.L103:
	mov r24,r4
	mov __tmp_reg__,r4
	lsl r0
	sbc r25,r25
	cp r24,r12
	cpc r25,r13
	brlt .L101
	ldi r24,lo8(1)
	cp r16,r18
	cpc r17,r19
	breq .L102
	ldi r24,0
.L102:
	mov r16,r24
	ldi r17,0
	mov r22,r5
	movw r24,r28
	adiw r24,33
	call uECC_vli_rshift1
	mov r22,r5
	movw r24,r2
	call uECC_vli_rshift1
	ldi r25,1
	sub r14,r25
	sbc r15,__zero_reg__
	rjmp .L98
.L104:
	mov r4,__zero_reg__
	ldi r19,0
	ldi r18,0
	movw r6,r16
	lsl r6
	rol r7
	ldi r24,lo8(65)
	ldi r25,0
	add r24,r28
	adc r25,r29
	add r6,r24
	adc r7,r25
	ldi r26,lo8(1)
	ldi r27,0
	sub r26,r16
	sbc r27,r17
	lsl r26
	rol r27
	add r26,r24
	adc r27,r25
	rjmp .L103
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
	jmp uECC_vli_modMult_fast
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
	movw r8,r18
	movw r30,r18
	ld r17,Z
	mov r22,r17
	movw r24,r20
	call uECC_vli_isZero
	or r24,r25
	breq .+2
	rjmp .L108
	movw r20,r8
	movw r22,r6
	movw r24,r28
	adiw r24,17
	call uECC_vli_modSquare_fast
	movw r18,r8
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r12
	movw r24,r28
	adiw r24,1
	call uECC_vli_modMult_fast
	movw r20,r8
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSquare_fast
	movw r18,r8
	movw r20,r14
	movw r22,r6
	movw r24,r6
	call uECC_vli_modMult_fast
	movw r20,r8
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSquare_fast
	movw r10,r8
	ldi r31,4
	add r10,r31
	adc r11,__zero_reg__
	mov r16,r17
	movw r18,r10
	movw r20,r14
	movw r22,r12
	movw r24,r12
	call uECC_vli_modAdd
	movw r18,r10
	movw r20,r14
	movw r22,r14
	movw r24,r14
	call uECC_vli_modAdd
	movw r18,r10
	movw r20,r14
	movw r22,r12
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r8
	movw r20,r14
	movw r22,r12
	movw r24,r12
	call uECC_vli_modMult_fast
	movw r18,r10
	movw r20,r12
	movw r22,r12
	movw r24,r14
	call uECC_vli_modAdd
	movw r18,r10
	movw r20,r14
	movw r22,r12
	movw r24,r12
	call uECC_vli_modAdd
	movw r30,r12
	ld r24,Z
	sbrs r24,0
	rjmp .L110
	mov r18,r17
	movw r20,r10
	movw r22,r12
	movw r24,r12
	call uECC_vli_add
.L110:
	mov r22,r17
	movw r24,r12
	call uECC_vli_rshift1
	movw r20,r8
	movw r22,r12
	movw r24,r14
	call uECC_vli_modSquare_fast
	mov r16,r17
	movw r18,r10
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r10
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r14
	movw r24,r14
	call uECC_vli_modSub
	movw r18,r10
	movw r20,r14
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSub
	movw r18,r8
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r12
	movw r24,r12
	call uECC_vli_modMult_fast
	movw r18,r10
	movw r20,r28
	subi r20,-17
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
	subi r22,-17
	sbci r23,-1
	movw r24,r6
	call uECC_vli_set
.L108:
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
	adiw r24,33
	call uECC_vli_modSub
	movw r20,r12
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSquare_fast
	movw r18,r12
	movw r20,r28
	subi r20,-33
	sbci r21,-1
	movw r22,r8
	movw r24,r8
	call uECC_vli_modMult_fast
	movw r18,r12
	movw r20,r28
	subi r20,-33
	sbci r21,-1
	movw r22,r10
	movw r24,r10
	call uECC_vli_modMult_fast
	movw r18,r14
	movw r20,r4
	movw r22,r6
	movw r24,r28
	adiw r24,33
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
	adiw r24,1
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r28
	subi r20,-1
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
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call uECC_vli_modSquare_fast
	movw r18,r14
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modSub
	movw r18,r14
	movw r20,r8
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call uECC_vli_modSub
	movw r18,r12
	movw r20,r28
	subi r20,-33
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
	subi r22,-1
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
	movw r12,r24
	movw r10,r22
	movw r14,r20
	mov r17,r18
	mov r22,r18
	movw r24,r10
	call uECC_vli_isZero
	or r24,r25
	breq .L116
	mov r22,r17
	movw r24,r12
	call uECC_vli_clear
.L115:
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
.L116:
	mov r20,r17
	movw r22,r10
	movw r24,r28
	adiw r24,49
	call uECC_vli_set
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,33
	call uECC_vli_set
	mov r22,r17
	movw r24,r28
	adiw r24,17
	call uECC_vli_clear
	ldi r24,lo8(1)
	ldi r25,0
	std Y+18,r25
	std Y+17,r24
	mov r22,r17
	movw r24,r28
	adiw r24,1
	call uECC_vli_clear
.L118:
	mov r20,r17
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,49
	call uECC_vli_cmp_unsafe
	cpse r24,__zero_reg__
	rjmp .L125
	mov r20,r17
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r12
	call uECC_vli_set
	rjmp .L115
.L125:
	ldd r25,Y+49
	sbrc r25,0
	rjmp .L119
	mov r22,r17
	movw r24,r28
	adiw r24,49
	call uECC_vli_rshift1
.L128:
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,17
.L127:
	call vli_modInv_update
	rjmp .L118
.L119:
	ldd r25,Y+33
	sbrc r25,0
	rjmp .L121
	mov r22,r17
	movw r24,r28
	adiw r24,33
	call uECC_vli_rshift1
.L126:
	mov r20,r17
	movw r22,r14
	movw r24,r28
	adiw r24,1
	rjmp .L127
.L121:
	mov r18,r17
	movw r20,r28
	cp __zero_reg__,r24
	brge .L122
	subi r20,-33
	sbci r21,-1
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	mov r22,r17
	movw r24,r28
	adiw r24,49
	call uECC_vli_rshift1
	mov r20,r17
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call uECC_vli_cmp_unsafe
	sbrs r24,7
	rjmp .L123
	mov r18,r17
	movw r20,r14
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r22
	call uECC_vli_add
.L123:
	mov r18,r17
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	rjmp .L128
.L122:
	subi r20,-49
	sbci r21,-1
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	mov r22,r17
	movw r24,r28
	adiw r24,33
	call uECC_vli_rshift1
	mov r20,r17
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call uECC_vli_cmp_unsafe
	sbrs r24,7
	rjmp .L124
	mov r18,r17
	movw r20,r14
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_add
.L124:
	mov r18,r17
	movw r20,r28
	subi r20,-17
	sbci r21,-1
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r22
	call uECC_vli_sub
	rjmp .L126
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
	jmp uECC_vli_isZero
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
	subi r28,92
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 92 */
/* stack size = 109 */
.L__stack_usage = 109
	adiw r28,89-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,89-62
	adiw r28,81-62
	std Y+63,r23
	std Y+62,r22
	sbiw r28,81-62
	adiw r28,91-62
	std Y+63,r21
	std Y+62,r20
	sbiw r28,91-62
	movw r12,r18
	movw r4,r14
	movw r30,r14
	ld r3,Z
	mov r20,r3
	movw r24,r28
	adiw r24,49
	call uECC_vli_set
	mov r18,r3
	lsl r18
	sbc r19,r19
	adiw r28,83-62
	std Y+63,r19
	std Y+62,r18
	sbiw r28,83-62
	adiw r28,81-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,81-62
	add r24,r18
	adc r25,r19
	adiw r28,85-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,85-62
	mov r20,r3
	movw r22,r24
	movw r24,r28
	adiw r24,17
	call uECC_vli_set
	movw r30,r14
	ld r11,Z
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .+2
	rjmp .L134
	mov r20,r11
	movw r22,r12
	movw r24,r28
	subi r24,-65
	sbci r25,-1
	call uECC_vli_set
.L135:
	movw r14,r28
	ldi r31,33
	add r14,r31
	adc r15,__zero_reg__
	mov r20,r11
	movw r22,r28
	subi r22,-49
	sbci r23,-1
	movw r24,r14
	call uECC_vli_set
	mov r20,r11
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r12,r18
	movw r24,r18
	call uECC_vli_set
	movw r18,r4
	movw r20,r28
	subi r20,-65
	sbci r21,-1
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	adiw r24,49
	call apply_z
	movw r30,r4
	subi r30,-84
	sbci r31,-1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r18,r4
	movw r20,r28
	subi r20,-65
	sbci r21,-1
	movw r22,r28
	subi r22,-17
	sbci r23,-1
	movw r24,r28
	adiw r24,49
	icall
	movw r18,r4
	movw r20,r28
	subi r20,-65
	sbci r21,-1
	movw r22,r12
	movw r24,r14
	call apply_z
	movw r10,r16
	ldi r19,2
	sub r10,r19
	sbc r11,__zero_reg__
.L136:
	cp __zero_reg__,r10
	cpc __zero_reg__,r11
	brge .+2
	rjmp .L138
	adiw r28,91-62
	ldd r30,Y+62
	ldd r31,Y+63
	sbiw r28,91-62
	ld r14,Z
	ldd r15,Z+1
	movw r12,r14
	com r12
	com r13
	ldi r31,1
	and r12,r31
	clr r13
	ldi r24,4
	1:
	lsl r12
	rol r13
	dec r24
	brne 1b
	clr r8
	inc r8
	mov r9,__zero_reg__
	add r8,r28
	adc r9,r29
	add r8,r12
	adc r9,r13
	ldi r18,lo8(33)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r12,r18
	adc r13,r19
	ldi r19,1
	and r14,r19
	clr r15
	ldi r18,4
	1:
	lsl r14
	rol r15
	dec r18
	brne 1b
	clr r10
	inc r10
	mov r11,__zero_reg__
	add r10,r28
	adc r11,r29
	add r10,r14
	adc r11,r15
	ldi r24,lo8(33)
	ldi r25,0
	add r24,r28
	adc r25,r29
	add r14,r24
	adc r15,r25
	movw r16,r4
	movw r18,r8
	movw r20,r12
	movw r22,r10
	movw r24,r14
	call XYcZ_addC
	movw r6,r4
	ldi r25,4
	add r6,r25
	adc r7,__zero_reg__
	mov r16,r3
	movw r18,r6
	movw r20,r28
	subi r20,-33
	sbci r21,-1
	movw r22,r28
	subi r22,-49
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
	adiw r28,81-62
	ldd r20,Y+62
	ldd r21,Y+63
	sbiw r28,81-62
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modMult_fast
	mov r18,r3
	movw r20,r6
	movw r22,r28
	subi r22,-65
	sbci r23,-1
	movw r24,r22
	call uECC_vli_modInv
	movw r18,r4
	adiw r28,85-62
	ldd r20,Y+62
	ldd r21,Y+63
	sbiw r28,85-62
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
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,33
	call apply_z
	mov r20,r3
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	adiw r28,89-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,89-62
	call uECC_vli_set
	mov r20,r3
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	adiw r28,89-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,89-62
	adiw r28,83-62
	ldd r30,Y+62
	ldd r31,Y+63
	sbiw r28,83-62
	add r24,r30
	adc r25,r31
	call uECC_vli_set
/* epilogue start */
	subi r28,-92
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
	ret
.L134:
	mov r22,r11
	movw r24,r28
	subi r24,-65
	sbci r25,-1
	call uECC_vli_clear
	ldi r24,lo8(1)
	ldi r25,0
	adiw r28,65-62
	std Y+63,r25
	std Y+62,r24
	sbiw r28,65-62
	rjmp .L135
.L138:
	movw r22,r10
	adiw r28,91-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,91-62
	call uECC_vli_testBit
	ldi r18,lo8(1)
	ldi r19,0
	or r24,r25
	breq .L137
	ldi r19,0
	ldi r18,0
.L137:
	movw r6,r18
	ldi r20,4
	1:
	lsl r6
	rol r7
	dec r20
	brne 1b
	movw r8,r12
	add r8,r6
	adc r9,r7
	ldi r24,lo8(33)
	ldi r25,0
	add r24,r28
	adc r25,r29
	add r6,r24
	adc r7,r25
	clr r14
	inc r14
	mov r15,__zero_reg__
	sub r14,r18
	sbc r15,r19
	ldi r22,4
	1:
	lsl r14
	rol r15
	dec r22
	brne 1b
	movw r30,r12
	add r30,r14
	adc r31,r15
	adiw r28,87-62
	std Y+63,r31
	std Y+62,r30
	sbiw r28,87-62
	add r14,r24
	adc r15,r25
	movw r16,r4
	movw r18,r8
	movw r20,r6
	movw r22,r30
	movw r24,r14
	call XYcZ_addC
	adiw r28,87-62
	ldd r18,Y+62
	ldd r19,Y+63
	sbiw r28,87-62
	movw r20,r14
	movw r22,r8
	movw r24,r6
	call XYcZ_add
	ldi r31,1
	sub r10,r31
	sbc r11,__zero_reg__
	rjmp .L136
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
	movw r12,r22
	movw r10,r20
	movw r30,r18
	ldd r16,Z+2
	ldd r17,Z+3
	movw r28,r16
	adiw r28,31
	sbrc r29,7
	adiw r28,31
.L143:
	ldi r20,5
	1:
	asr r29
	ror r28
	dec r20
	brne 1b
	movw r14,r18
	ldi r31,20
	add r14,r31
	adc r15,__zero_reg__
	mov r18,r28
	movw r20,r14
	movw r22,r24
	movw r24,r12
	call uECC_vli_add
	or r24,r25
	brne .L146
	ldi r19,lo8(32)
	muls r28,r19
	movw r24,r0
	clr __zero_reg__
	cp r16,r24
	cpc r17,r25
	brge .L147
	movw r22,r16
	movw r24,r12
	call uECC_vli_testBit
	ldi r16,lo8(1)
	ldi r17,0
	or r24,r25
	brne .L144
	ldi r16,0
.L144:
	mov r18,r28
	movw r20,r14
	movw r22,r12
	movw r24,r10
	call uECC_vli_add
	movw r24,r16
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
.L146:
	ldi r16,lo8(1)
.L148:
	ldi r17,0
	rjmp .L144
.L147:
	ldi r16,0
	rjmp .L148
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
	subi r22,-17
	sbci r23,-1
	std Y+34,r23
	std Y+33,r22
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r14,r18
	std Y+36,r19
	std Y+35,r18
	movw r18,r20
	movw r20,r14
	call regularize_k
	movw r30,r12
	ldd r16,Z+2
	ldd r17,Z+3
	subi r16,-1
	sbci r17,-1
	ldi r18,lo8(1)
	ldi r19,0
	or r24,r25
	breq .L150
	ldi r19,0
	ldi r18,0
.L150:
	lsl r18
	rol r19
	add r14,r18
	adc r15,r19
	movw r30,r14
	ldd r20,Z+32
	ldd r21,Z+33
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
	breq .L151
	ldi r19,0
	ldi r18,0
.L151:
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
	ldi r17,0
	movw r28,r22
	sbiw r28,1
.L159:
	mov r30,r17
	mov __tmp_reg__,r17
	lsl r0
	sbc r31,r31
	cp r30,r22
	cpc r31,r23
	brlt .L160
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L160:
	movw r18,r28
	sub r18,r30
	sbc r19,r31
	add r30,r24
	adc r31,r25
	movw r26,r18
	lsr r27
	ror r26
	lsr r27
	ror r26
	lsl r26
	rol r27
	add r26,r20
	adc r27,r21
	andi r18,3
	clr r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	rjmp 2f
	1:
	lsr r27
	ror r26
	2:
	dec r18
	brpl 1b
	st Z,r26
	subi r17,lo8(-(1))
	rjmp .L159
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
	movw r14,r24
	movw r16,r22
	movw r28,r20
	movw r22,r20
	subi r22,-3
	sbci r23,-1
	sbrs r23,7
	rjmp .L162
	subi r22,-3
	sbci r23,-1
.L162:
	asr r23
	ror r22
	asr r23
	ror r22
	movw r24,r14
	call uECC_vli_clear
	ldi r22,0
	movw r20,r28
	subi r20,1
	sbc r21,__zero_reg__
.L163:
	mov r18,r22
	mov __tmp_reg__,r22
	lsl r0
	sbc r19,r19
	cp r18,r28
	cpc r19,r29
	brlt .L164
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L164:
	movw r24,r20
	sub r24,r18
	sbc r25,r19
	movw r30,r24
	lsr r31
	ror r30
	lsr r31
	ror r30
	lsl r30
	rol r31
	add r30,r14
	adc r31,r15
	add r18,r16
	adc r19,r17
	movw r26,r18
	ld r18,X
	ldi r19,0
	andi r24,3
	clr r25
	ldi r27,3
	1:
	lsl r24
	rol r25
	dec r27
	brne 1b
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
	rjmp .L163
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
	movw r14,r22
	mov r7,r20
	mov r22,r20
	movw r24,r14
	call uECC_vli_numBits
	lds r18,g_rng_function
	lds r19,g_rng_function+1
	or r18,r19
	breq .L166
	mov r18,r7
	mov __tmp_reg__,r7
	lsl r0
	sbc r19,r19
	movw r12,r18
	lsl r12
	rol r13
	lsl r12
	rol r13
	movw r28,r18
	subi r28,1
	sbci r29,-128
	lsl r28
	rol r29
	add r28,r16
	adc r29,r17
	ldi r22,5
	1:
	lsl r18
	rol r19
	dec r22
	brne 1b
	sub r18,r24
	sbc r19,r25
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r8,r24
	rjmp 2f
	1:
	lsr r9
	ror r8
	2:
	dec r18
	brpl 1b
	ldi r23,lo8(64)
	mov r10,r23
	mov r11,__zero_reg__
.L168:
	lds r30,g_rng_function
	lds r31,g_rng_function+1
	movw r22,r12
	movw r24,r16
	icall
	or r24,r25
	breq .L166
	ld r24,Y
	ldd r25,Y+1
	and r24,r8
	and r25,r9
	std Y+1,r25
	st Y,r24
	mov r22,r7
	movw r24,r16
	call uECC_vli_isZero
	or r24,r25
	breq .L167
.L170:
	ldi r24,1
	sub r10,r24
	sbc r11,__zero_reg__
	brne .L168
.L166:
	ldi r25,0
	ldi r24,0
.L165:
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
.L167:
	mov r20,r7
	movw r22,r16
	movw r24,r14
	call uECC_vli_cmp
	cpi r24,lo8(1)
	brne .L170
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L165
	.size	uECC_generate_random_int, .-uECC_generate_random_int
.global	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
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
	movw r12,r24
	movw r16,r22
	movw r30,r22
	ld r15,Z
	call EccPoint_isZero
	or r24,r25
	breq .+2
	rjmp .L181
	movw r8,r16
	ldi r31,4
	add r8,r31
	adc r9,__zero_reg__
	mov r20,r15
	movw r22,r12
	movw r24,r8
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	brne .L183
	mov r10,r15
	lsl r10
	sbc r11,r11
	add r10,r12
	adc r11,r13
	mov r20,r15
	movw r22,r10
	movw r24,r8
	call uECC_vli_cmp_unsafe
	cpi r24,lo8(1)
	brne .L183
	movw r20,r16
	movw r22,r10
	movw r24,r28
	adiw r24,17
	call uECC_vli_modSquare_fast
	movw r30,r16
	subi r30,-86
	sbci r31,-1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r20,r16
	movw r22,r12
	movw r24,r28
	adiw r24,1
	icall
	mov r20,r15
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call uECC_vli_equal
	or r24,r25
	brne .L184
	ldi r25,0
	ldi r24,0
.L179:
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
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L181:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L179
.L183:
	ldi r24,lo8(-2)
	ldi r25,lo8(-1)
	rjmp .L179
.L184:
	ldi r24,lo8(-3)
	ldi r25,lo8(-1)
	rjmp .L179
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
	breq .L187
	movw r22,r16
	movw r24,r28
	adiw r24,1
	call uECC_valid_point
.L185:
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
.L187:
	ldi r24,lo8(-4)
	ldi r25,lo8(-1)
	rjmp .L185
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
	movw r16,r20
	movw r30,r20
	ldd r18,Z+2
	ldd r19,Z+3
	movw r20,r18
	subi r20,-7
	sbci r21,-1
	sbrs r21,7
	rjmp .L189
	subi r20,-7
	sbci r21,-1
.L189:
	ldi r18,3
	1:
	asr r21
	ror r20
	dec r18
	brne 1b
	movw r22,r24
	movw r24,r28
	adiw r24,33
	call uECC_vli_bytesToNative
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	movw r14,r24
	ldi r31,31
	add r14,r31
	adc r15,__zero_reg__
	sbrs r15,7
	rjmp .L190
	movw r14,r24
	ldi r18,62
	add r14,r18
	adc r15,__zero_reg__
.L190:
	ldi r24,5
	1:
	asr r15
	ror r14
	dec r24
	brne 1b
	mov r22,r14
	movw r24,r28
	adiw r24,33
	call uECC_vli_isZero
	or r24,r25
	breq .L191
.L193:
	ldi r25,0
	ldi r24,0
.L188:
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
.L191:
	mov r20,r14
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r16
	adiw r24,20
	call uECC_vli_cmp
	cpi r24,lo8(1)
	brne .L193
	movw r20,r16
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call EccPoint_compute_public_key
	or r24,r25
	breq .L193
	movw r30,r16
	ldd r22,Z+1
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r12
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
	add r24,r12
	adc r25,r13
	call uECC_vli_nativeToBytes
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L188
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

	.file	"tinycrypt_hmac_prng.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.type	update, @function
update:
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
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r14,r24
	movw r10,r22
	movw r8,r20
	movw r4,r18
	movw r6,r16
	std Y+1,__zero_reg__
	ldi r24,lo8(1)
	std Y+2,r24
	movw r16,r14
	subi r16,38
	sbci r17,-1
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	movw r12,r14
	ldi r24,-6
	add r12,r24
	adc r13,__zero_reg__
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	call tc_hmac_update
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L2
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .+2
	rjmp .L24
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .+2
	rjmp .L25
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L26
.L14:
	movw r20,r6
	movw r22,r4
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L1
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	brne .+2
	rjmp .L1
.L13:
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-2
	sbci r23,-1
	movw r24,r14
	call tc_hmac_update
	movw r20,r8
	movw r22,r10
	movw r24,r14
	call tc_hmac_update
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .+2
	rjmp .L7
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L7
	movw r20,r6
	movw r22,r4
	movw r24,r14
	call tc_hmac_update
	rjmp .L7
.L24:
	movw r20,r8
	movw r22,r10
	movw r24,r14
	call tc_hmac_update
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	breq .+2
	rjmp .L27
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-2
	sbci r23,-1
	movw r24,r14
	call tc_hmac_update
	movw r20,r8
	movw r22,r10
	movw r24,r14
	call tc_hmac_update
.L7:
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	rjmp .L1
.L28:
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	rjmp .L1
.L2:
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	breq .L28
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .+2
	rjmp .L14
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
.L1:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
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
.L25:
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	rjmp .L1
.L27:
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .+2
	rjmp .L14
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	rjmp .L13
.L26:
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r16
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r16
	movw r24,r14
	call tc_hmac_set_key
	movw r24,r14
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r12
	movw r24,r14
	call tc_hmac_update
	movw r20,r14
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r12
	call tc_hmac_final
	rjmp .L1
	.size	update, .-update
.global	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
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
	sbiw r24,0
	breq .L31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L32
	movw r12,r20
	movw r14,r22
	movw r28,r24
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,0
	subi r24,38
	sbci r25,-1
	call _set
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(1)
	movw r24,r28
	subi r24,6
	sbci r25,-1
	call _set
	ldi r17,0
	ldi r16,0
	ldi r19,0
	ldi r18,0
	movw r20,r12
	movw r22,r14
	movw r24,r28
	call update
	subi r28,-26
	sbci r29,-2
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
.L29:
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
.L31:
	ldi r25,0
	ldi r24,0
	rjmp .L29
.L32:
	ldi r25,0
	ldi r24,0
	rjmp .L29
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
.global	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	sbiw r24,0
	breq .L37
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L38
	cpi r20,32
	cpc r21,__zero_reg__
	brlo .L39
	movw r28,r24
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L35
	ldi r25,0
	ldi r24,0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L33
	movw r24,r28
	call update
.L36:
	subi r28,-26
	sbci r29,-2
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	std Y+1,r25
	st Y,r24
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L33
.L35:
	ldi r17,0
	ldi r16,0
	ldi r19,0
	ldi r18,0
	call update
	rjmp .L36
.L37:
	ldi r25,0
	ldi r24,0
.L33:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L38:
	ldi r25,0
	ldi r24,0
	rjmp .L33
.L39:
	ldi r25,0
	ldi r24,0
	rjmp .L33
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
.global	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (GNU) 7.3.0"

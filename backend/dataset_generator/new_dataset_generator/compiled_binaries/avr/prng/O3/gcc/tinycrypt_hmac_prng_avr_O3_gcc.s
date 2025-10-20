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
	std Y+2,__zero_reg__
	ldi r24,lo8(1)
	std Y+1,r24
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
	subi r22,-2
	sbci r23,-1
	movw r24,r14
	call tc_hmac_update
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L2
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	brne .L33
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	breq .L31
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .+2
	rjmp .L15
.L31:
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
.L33:
	movw r20,r8
	movw r22,r10
	movw r24,r14
	call tc_hmac_update
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	breq .+2
	rjmp .L34
.L29:
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
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	call tc_hmac_update
	movw r20,r8
	movw r22,r10
	movw r24,r14
	call tc_hmac_update
	rjmp .L31
.L2:
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .+2
	rjmp .L31
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L31
.L15:
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
	subi r22,-1
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
	rjmp .L31
	movw r20,r6
	movw r22,r4
	movw r24,r14
	call tc_hmac_update
	rjmp .L31
.L34:
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L29
	rjmp .L15
	.size	update, .-update
.global	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
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
/* stack size = 14 */
.L__stack_usage = 14
	sbiw r24,0
	brne .+2
	rjmp .L40
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L40
	movw r12,r20
	movw r10,r22
	movw r16,r24
	movw r8,r24
	ldi r24,-38
	add r8,r24
	adc r9,__zero_reg__
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,0
	movw r24,r8
	call _set
	movw r14,r16
	ldi r24,-6
	add r14,r24
	adc r15,__zero_reg__
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(1)
	movw r24,r14
	call _set
	std Y+2,__zero_reg__
	ldi r24,lo8(1)
	std Y+1,r24
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r8
	movw r24,r16
	call tc_hmac_set_key
	movw r24,r16
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r14
	movw r24,r16
	call tc_hmac_update
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-2
	sbci r23,-1
	movw r24,r16
	call tc_hmac_update
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .L42
.L41:
	movw r20,r16
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r8
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r8
	movw r24,r16
	call tc_hmac_set_key
	movw r24,r16
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r14
	movw r24,r16
	call tc_hmac_update
	movw r20,r16
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r14
	call tc_hmac_final
	movw r30,r16
	subi r30,-26
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L35
.L40:
	ldi r25,0
	ldi r24,0
.L35:
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
	ret
.L42:
	movw r20,r12
	movw r22,r10
	movw r24,r16
	call tc_hmac_update
	movw r20,r16
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r8
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r8
	movw r24,r16
	call tc_hmac_set_key
	movw r24,r16
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r14
	movw r24,r16
	call tc_hmac_update
	movw r20,r16
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r14
	call tc_hmac_final
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r8
	movw r24,r16
	call tc_hmac_set_key
	movw r24,r16
	call tc_hmac_init
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r14
	movw r24,r16
	call tc_hmac_update
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call tc_hmac_update
	movw r20,r12
	movw r22,r10
	movw r24,r16
	call tc_hmac_update
	rjmp .L41
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
	breq .L50
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L50
	cpi r20,32
	cpc r21,__zero_reg__
	brlo .L50
	movw r28,r24
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L45
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L51
.L50:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L45:
	ldi r17,0
	ldi r16,0
	ldi r19,0
	ldi r18,0
.L51:
	movw r24,r28
	call update
	subi r28,-26
	sbci r29,-2
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	std Y+1,r25
	st Y,r24
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
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

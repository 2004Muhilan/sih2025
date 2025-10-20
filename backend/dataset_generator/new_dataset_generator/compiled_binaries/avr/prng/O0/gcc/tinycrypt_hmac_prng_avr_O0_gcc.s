	.file	"tinycrypt_hmac_prng.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	MIN_SLEN, @object
	.size	MIN_SLEN, 2
MIN_SLEN:
	.word	32
	.type	MAX_SLEN, @object
	.size	MAX_SLEN, 2
MAX_SLEN:
	.word	-1
	.type	MAX_PLEN, @object
	.size	MAX_PLEN, 2
MAX_PLEN:
	.word	-1
	.type	MAX_ALEN, @object
	.size	MAX_ALEN, 2
MAX_ALEN:
	.word	-1
	.type	MAX_GENS, @object
	.size	MAX_GENS, 2
MAX_GENS:
	.word	-1
	.type	MAX_OUT, @object
	.size	MAX_OUT, 2
MAX_OUT:
	.zero	2
	.text
	.type	update, @function
update:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 16 */
.L__stack_usage = 16
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	std Y+10,r19
	std Y+9,r18
	std Y+12,r17
	std Y+11,r16
	std Y+1,__zero_reg__
	ldi r24,lo8(1)
	std Y+2,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,38
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_set_key
	ldd r24,Y+3
	ldd r25,Y+4
	call tc_hmac_init
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,6
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_update
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(1)
	ldi r21,0
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r22,r18
	call tc_hmac_update
	ldd r24,Y+5
	ldd r25,Y+6
	or r24,r25
	breq .L2
	ldd r24,Y+7
	ldd r25,Y+8
	or r24,r25
	breq .L2
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+5
	ldd r19,Y+6
	movw r22,r18
	call tc_hmac_update
.L2:
	ldd r24,Y+9
	ldd r25,Y+10
	or r24,r25
	breq .L3
	ldd r24,Y+11
	ldd r25,Y+12
	or r24,r25
	breq .L3
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r18,Y+9
	ldd r19,Y+10
	movw r22,r18
	call tc_hmac_update
.L3:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,38
	sbci r25,-1
	movw r20,r18
	ldi r22,lo8(32)
	ldi r23,0
	call tc_hmac_final
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,38
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_set_key
	ldd r24,Y+3
	ldd r25,Y+4
	call tc_hmac_init
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,6
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_update
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,6
	sbci r25,-1
	movw r20,r18
	ldi r22,lo8(32)
	ldi r23,0
	call tc_hmac_final
	ldd r24,Y+5
	ldd r25,Y+6
	or r24,r25
	brne .+2
	rjmp .L8
	ldd r24,Y+7
	ldd r25,Y+8
	or r24,r25
	brne .+2
	rjmp .L8
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,38
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_set_key
	ldd r24,Y+3
	ldd r25,Y+4
	call tc_hmac_init
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,6
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_update
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r28
	subi r18,-2
	sbci r19,-1
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r18
	call tc_hmac_update
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+5
	ldd r19,Y+6
	movw r22,r18
	call tc_hmac_update
	ldd r24,Y+9
	ldd r25,Y+10
	or r24,r25
	breq .L7
	ldd r24,Y+11
	ldd r25,Y+12
	or r24,r25
	breq .L7
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r18,Y+9
	ldd r19,Y+10
	movw r22,r18
	call tc_hmac_update
.L7:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,38
	sbci r25,-1
	movw r20,r18
	ldi r22,lo8(32)
	ldi r23,0
	call tc_hmac_final
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,38
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_set_key
	ldd r24,Y+3
	ldd r25,Y+4
	call tc_hmac_init
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	subi r18,6
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_update
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,6
	sbci r25,-1
	movw r20,r18
	ldi r22,lo8(32)
	ldi r23,0
	call tc_hmac_final
	rjmp .L1
.L8:
	nop
.L1:
/* epilogue start */
	adiw r28,12
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
	.size	update, .-update
.global	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	ldd r24,Y+1
	ldd r25,Y+2
	or r24,r25
	breq .L10
	ldd r24,Y+3
	ldd r25,Y+4
	or r24,r25
	breq .L10
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ldd r18,Y+5
	ldd r19,Y+6
	cp r24,r18
	cpc r25,r19
	brsh .L11
.L10:
	ldi r24,0
	ldi r25,0
	rjmp .L12
.L11:
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,38
	sbci r25,-1
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,0
	call _set
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,6
	sbci r25,-1
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(1)
	call _set
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	call update
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,-26
	sbci r25,-2
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
.L12:
/* epilogue start */
	adiw r28,6
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
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
.global	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
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
	ldd r24,Y+1
	ldd r25,Y+2
	or r24,r25
	breq .L14
	ldd r24,Y+3
	ldd r25,Y+4
	or r24,r25
	breq .L14
	ldi r24,lo8(32)
	ldi r25,0
	ldd r18,Y+5
	ldd r19,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .L14
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ldd r18,Y+5
	ldd r19,Y+6
	cp r24,r18
	cpc r25,r19
	brsh .L15
.L14:
	ldi r24,0
	ldi r25,0
	rjmp .L16
.L15:
	ldd r24,Y+7
	ldd r25,Y+8
	or r24,r25
	breq .L17
	ldd r24,Y+9
	ldd r25,Y+10
	or r24,r25
	breq .L18
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ldd r18,Y+9
	ldd r19,Y+10
	cp r24,r18
	cpc r25,r19
	brsh .L19
.L18:
	ldi r24,0
	ldi r25,0
	rjmp .L16
.L19:
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
	call update
	rjmp .L20
.L17:
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	call update
.L20:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,-26
	sbci r25,-2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldi r24,lo8(1)
	ldi r25,0
.L16:
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
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
.global	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	or r24,r25
	breq .L22
	ldd r24,Y+7
	ldd r25,Y+8
	or r24,r25
	breq .L22
	ldd r24,Y+5
	ldd r25,Y+6
	or r24,r25
	breq .L22
	ldi r18,0
	ldi r19,0
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .L23
.L22:
	ldi r24,0
	ldi r25,0
	rjmp .L24
.L23:
	ldd r24,Y+7
	ldd r25,Y+8
	subi r24,-26
	sbci r25,-2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L25
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L24
.L25:
	ldd r24,Y+7
	ldd r25,Y+8
	subi r24,-26
	sbci r25,-2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	movw r18,r24
	subi r18,1
	sbc r19,__zero_reg__
	ldd r24,Y+7
	ldd r25,Y+8
	subi r24,-26
	sbci r25,-2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	rjmp .L26
.L29:
	ldd r24,Y+7
	ldd r25,Y+8
	movw r18,r24
	subi r18,38
	sbci r19,-1
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_set_key
	ldd r24,Y+7
	ldd r25,Y+8
	call tc_hmac_init
	ldd r24,Y+7
	ldd r25,Y+8
	movw r18,r24
	subi r18,6
	sbci r19,-1
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r20,lo8(32)
	ldi r21,0
	movw r22,r18
	call tc_hmac_update
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+7
	ldd r25,Y+8
	subi r24,6
	sbci r25,-1
	movw r20,r18
	ldi r22,lo8(32)
	ldi r23,0
	call tc_hmac_final
	ldd r24,Y+5
	ldd r25,Y+6
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L27
	ldi r24,lo8(32)
	ldi r25,0
.L27:
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	movw r20,r24
	subi r20,6
	sbci r21,-1
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call _copy
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+5
	ldd r25,Y+6
	cpi r24,32
	cpc r25,__zero_reg__
	brsh .L28
	ldi r24,lo8(32)
	ldi r25,0
.L28:
	sbiw r24,32
	std Y+6,r25
	std Y+5,r24
.L26:
	ldd r24,Y+5
	ldd r25,Y+6
	or r24,r25
	breq .+2
	rjmp .L29
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	call update
	ldi r24,lo8(1)
	ldi r25,0
.L24:
/* epilogue start */
	adiw r28,8
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
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data

	.arch armv8-a
	.file	"tinycrypt_hmac_prng.c"
	.text
	.align	2
	.type	update, %function
update:
.LFB15:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 16
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x19, x0
	mov	x20, x1
	mov	w21, w2
	mov	x24, x3
	mov	w25, w4
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x2, [x1]
	str	x2, [sp, 8]
	mov	x2, 0
	strb	wzr, [sp, 6]
	mov	w1, 1
	strb	w1, [sp, 7]
	add	x23, x0, 240
	mov	w2, 32
	mov	x1, x23
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x22, x19, 272
	mov	w2, 32
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, 1
	add	x1, sp, 6
	mov	x0, x19
	bl	tc_hmac_update
	cmp	x20, 0
	ccmp	w21, 0, 4, ne
	bne	.L11
	cmp	x24, 0
	cset	w1, ne
	cmp	w25, 0
	cset	w0, ne
	and	w26, w1, w0
	tst	w1, w0
	bne	.L3
.L5:
	mov	x2, x19
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	mov	w2, 32
	mov	x1, x23
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	w2, 32
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	w1, 32
	mov	x0, x22
	bl	tc_hmac_final
	cmp	x20, 0
	ccmp	w21, 0, 4, ne
	bne	.L12
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L13
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L11:
	.cfi_restore_state
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	tc_hmac_update
	cmp	x24, 0
	ccmp	w25, 0, 4, ne
	bne	.L3
	mov	x2, x19
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	mov	w2, 32
	mov	x1, x23
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	w2, 32
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	w1, 32
	mov	x0, x22
	bl	tc_hmac_final
	mov	w2, 32
	mov	x1, x23
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	w2, 32
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, 1
	add	x1, sp, 7
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	tc_hmac_update
.L7:
	mov	x2, x19
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	mov	w2, 32
	mov	x1, x23
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	w2, 32
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	w1, 32
	mov	x0, x22
	bl	tc_hmac_final
	b	.L1
.L3:
	mov	w2, w25
	mov	x1, x24
	mov	x0, x19
	bl	tc_hmac_update
	mov	w26, 1
	b	.L5
.L12:
	mov	w2, 32
	mov	x1, x23
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	w2, 32
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, 1
	add	x1, sp, 7
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	tc_hmac_update
	tbz	x26, 0, .L7
	mov	w2, w25
	mov	x1, x24
	mov	x0, x19
	bl	tc_hmac_update
	b	.L7
.L13:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE15:
	.size	update, .-update
	.align	2
	.global	tc_hmac_prng_init
	.type	tc_hmac_prng_init, %function
tc_hmac_prng_init:
.LFB16:
	.cfi_startproc
	cmp	x0, 0
	ccmp	x1, 0, 4, ne
	bne	.L21
	mov	w0, 0
	ret
.L21:
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x19, x0
	mov	x20, x1
	mov	w21, w2
	mov	w2, 32
	mov	w1, 0
	add	x0, x0, 240
	bl	_set
	mov	w2, 32
	mov	w1, 1
	add	x0, x19, 272
	bl	_set
	mov	w4, 0
	mov	x3, 0
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	update
	str	wzr, [x19, 304]
	mov	w0, 1
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	2
	.global	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, %function
tc_hmac_prng_reseed:
.LFB17:
	.cfi_startproc
	cmp	x1, 0
	ccmp	w2, 31, 0, ne
	ccmp	x0, 0, 4, hi
	bne	.L32
	mov	w0, 0
	ret
.L32:
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	cbz	x3, .L24
	mov	w0, 0
	cbz	w4, .L22
	mov	x0, x19
	bl	update
.L25:
	mov	w0, -1
	str	w0, [x19, 304]
	mov	w0, 1
.L22:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L24:
	.cfi_restore_state
	mov	w4, 0
	mov	x3, 0
	bl	update
	b	.L25
	.cfi_endproc
.LFE17:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	2
	.global	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, %function
tc_hmac_prng_generate:
.LFB18:
	.cfi_startproc
	cmp	x0, 0
	ccmp	x2, 0, 4, ne
	beq	.L36
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x25, [sp, 64]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 25, -16
	mov	x25, x0
	mov	w19, w1
	mov	x20, x2
	sub	w2, w1, #1
	mov	w0, 0
	mov	w1, 524287
	cmp	w2, w1
	bhi	.L33
	ldr	w1, [x20, 304]
	mov	w0, -1
	cbz	w1, .L33
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	add	w1, w1, w0
	str	w1, [x20, 304]
	add	x24, x20, 240
	mov	w21, 32
	add	x23, x20, 272
.L35:
	mov	w2, w21
	mov	x1, x24
	mov	x0, x20
	bl	tc_hmac_set_key
	mov	x0, x20
	bl	tc_hmac_init
	mov	w2, w21
	mov	x1, x23
	mov	x0, x20
	bl	tc_hmac_update
	mov	x2, x20
	mov	w1, w21
	mov	x0, x23
	bl	tc_hmac_final
	cmp	w19, 32
	csel	w22, w19, w21, ls
	mov	w3, w22
	mov	x2, x23
	mov	w1, w22
	mov	x0, x25
	bl	_copy
	add	x25, x25, w22, uxtw
	cmp	w19, 32
	csel	w19, w19, w21, cs
	subs	w19, w19, #32
	bne	.L35
	mov	w4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x1, 0
	mov	x0, x20
	bl	update
	mov	w0, 1
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
.L33:
	ldp	x19, x20, [sp, 16]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L36:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE18:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

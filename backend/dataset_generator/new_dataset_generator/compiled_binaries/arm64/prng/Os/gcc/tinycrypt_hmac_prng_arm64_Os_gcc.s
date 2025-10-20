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
	stp	x21, x22, [sp, 48]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x22, x1
	add	x21, x0, 240
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x0
	stp	x23, x24, [sp, 64]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	w23, w2
	mov	x24, x3
	stp	x25, x26, [sp, 80]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	w25, w4
	add	x20, x19, 272
	ldr	x2, [x1]
	str	x2, [sp, 8]
	mov	x2, 0
	mov	w1, 1
	strb	w1, [sp, 7]
	mov	x1, x21
	mov	w2, 32
	strb	wzr, [sp, 6]
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x20
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	add	x1, sp, 6
	mov	x0, x19
	mov	w2, 1
	bl	tc_hmac_update
	cmp	x22, 0
	ccmp	w23, 0, 4, ne
	beq	.L2
	mov	w2, w23
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
.L2:
	cmp	x24, 0
	cset	w0, ne
	cmp	w25, 0
	cset	w1, ne
	ands	w26, w0, w1
	beq	.L3
	mov	w2, w25
	mov	x1, x24
	mov	x0, x19
	bl	tc_hmac_update
.L3:
	mov	x2, x19
	mov	w1, 32
	mov	x0, x21
	bl	tc_hmac_final
	mov	x1, x21
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x20
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	x0, x20
	mov	w1, 32
	bl	tc_hmac_final
	cmp	x22, 0
	ccmp	w23, 0, 4, ne
	beq	.L1
	mov	x1, x21
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x20
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	add	x1, sp, 7
	mov	w2, 1
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, w23
	mov	x1, x22
	mov	x0, x19
	bl	tc_hmac_update
	cbz	w26, .L5
	mov	w2, w25
	mov	x1, x24
	mov	x0, x19
	bl	tc_hmac_update
.L5:
	mov	x2, x19
	mov	w1, 32
	mov	x0, x21
	bl	tc_hmac_final
	mov	x1, x21
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x20
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	x0, x20
	mov	w1, 32
	bl	tc_hmac_final
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	add	sp, sp, 96
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
	beq	.L19
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	mov	x20, x1
	add	x0, x0, 240
	mov	w1, 0
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	w21, w2
	mov	w2, 32
	bl	_set
	add	x0, x19, 272
	mov	w2, 32
	mov	w1, 1
	bl	_set
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	mov	w4, 0
	mov	x3, 0
	bl	update
	ldr	x21, [sp, 32]
	str	wzr, [x19, 304]
	ldp	x19, x20, [sp, 16]
	mov	w0, 1
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L19:
	mov	w0, 0
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
	cmp	x0, 0
	ccmp	x1, 0, 4, ne
	beq	.L29
	cmp	w2, 31
	bls	.L29
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	cbz	x3, .L26
	cbz	w4, .L30
.L35:
	bl	update
	mov	w0, -1
	str	w0, [x19, 304]
	mov	w0, 1
.L24:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L26:
	.cfi_restore_state
	mov	w4, 0
	b	.L35
.L29:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 29
	.cfi_restore 30
	mov	w0, 0
	ret
.L30:
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -16
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	w0, 0
	b	.L24
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
	beq	.L39
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	w20, w1
	sub	w1, w1, #1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x21, x0
	mov	w0, 524287
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	cmp	w1, w0
	bhi	.L40
	ldr	w0, [x2, 304]
	mov	x19, x2
	cbz	w0, .L41
	add	x25, x2, 240
	add	x23, x2, 272
	sub	w0, w0, #1
	mov	w24, 32
	str	w0, [x2, 304]
.L38:
	mov	x1, x25
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x23
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	cmp	w20, 32
	mov	x0, x21
	csel	w22, w20, w24, ls
	mov	x2, x23
	mov	w3, w22
	mov	w1, w22
	bl	_copy
	add	x21, x21, w22, uxtw
	cmp	w20, 32
	csel	w20, w20, w24, cs
	subs	w20, w20, #32
	bne	.L38
	mov	x0, x19
	mov	w4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x1, 0
	bl	update
	mov	w0, 1
.L36:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L39:
	mov	w0, 0
	ret
.L40:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	w0, 0
	b	.L36
.L41:
	mov	w0, -1
	b	.L36
	.cfi_endproc
.LFE18:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

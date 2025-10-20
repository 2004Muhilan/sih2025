	.arch armv8-a
	.file	"tinycrypt_hmac_prng.c"
	.text
	.align	2
	.p2align 4,,11
	.type	update, %function
update:
.LFB15:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 16
	stp	x19, x20, [sp, 32]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x1
	mov	x19, x0
	stp	x21, x22, [sp, 48]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	w21, w2
	add	x22, x0, 272
	stp	x23, x24, [sp, 64]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	add	x23, x0, 240
	mov	x1, x23
	stp	x25, x26, [sp, 80]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x25, x3
	mov	w3, 1
	str	x27, [sp, 96]
	.cfi_offset 27, -16
	mov	w26, w4
	ldr	x2, [x5]
	str	x2, [sp, 8]
	mov	x2, 0
	strb	wzr, [sp, 6]
	mov	w2, 32
	strb	w3, [sp, 7]
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x22
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	add	x1, sp, 6
	mov	x0, x19
	mov	w2, 1
	bl	tc_hmac_update
	cmp	x25, 0
	cset	w24, ne
	cmp	w26, 0
	cset	w0, ne
	cmp	x20, 0
	and	w24, w24, w0
	ccmp	w21, 0, 4, ne
	bne	.L14
	and	w27, w24, 1
	cbnz	w24, .L5
.L4:
	mov	x2, x19
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	mov	x1, x23
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x22
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	x0, x22
	mov	w1, 32
	bl	tc_hmac_final
	cmp	x20, 0
	ccmp	w21, 0, 4, ne
	bne	.L15
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L16
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldr	x27, [sp, 96]
	add	sp, sp, 112
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
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
	.p2align 2,,3
.L5:
	.cfi_restore_state
	mov	w2, w26
	mov	x1, x25
	mov	x0, x19
	bl	tc_hmac_update
	b	.L4
	.p2align 2,,3
.L14:
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	and	w27, w24, 1
	bl	tc_hmac_update
	cbnz	w24, .L5
	mov	x2, x19
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	mov	x1, x23
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x22
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	mov	x2, x19
	mov	w1, 32
	mov	x0, x22
	bl	tc_hmac_final
	mov	x1, x23
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x22
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	add	x1, sp, 7
	mov	w2, 1
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	tc_hmac_update
.L7:
	mov	x2, x19
	mov	x0, x23
	mov	w1, 32
	bl	tc_hmac_final
	mov	x1, x23
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x22
	mov	x0, x19
	mov	w2, 32
	bl	tc_hmac_update
	mov	x2, x19
	mov	x0, x22
	mov	w1, 32
	bl	tc_hmac_final
	b	.L1
	.p2align 2,,3
.L15:
	mov	x1, x23
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	mov	x1, x22
	mov	w2, 32
	mov	x0, x19
	bl	tc_hmac_update
	add	x1, sp, 7
	mov	w2, 1
	mov	x0, x19
	bl	tc_hmac_update
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	tc_hmac_update
	cbz	w27, .L7
	mov	w2, w26
	mov	x1, x25
	mov	x0, x19
	bl	tc_hmac_update
	b	.L7
.L16:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE15:
	.size	update, .-update
	.align	2
	.p2align 4,,11
	.global	tc_hmac_prng_init
	.type	tc_hmac_prng_init, %function
tc_hmac_prng_init:
.LFB16:
	.cfi_startproc
	cmp	x0, 0
	ccmp	x1, 0, 4, ne
	bne	.L24
	mov	w0, 0
	ret
	.p2align 2,,3
.L24:
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
	.cfi_endproc
.LFE16:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	2
	.p2align 4,,11
	.global	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, %function
tc_hmac_prng_reseed:
.LFB17:
	.cfi_startproc
	cmp	x1, 0
	ccmp	w2, 31, 0, ne
	ccmp	x0, 0, 4, hi
	bne	.L37
	mov	w5, 0
	mov	w0, w5
	ret
	.p2align 2,,3
.L37:
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	cbz	x3, .L27
	mov	w5, 0
	cbnz	w4, .L36
	ldr	x19, [sp, 16]
	mov	w0, w5
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L27:
	.cfi_restore_state
	mov	w4, 0
.L36:
	bl	update
	mov	w0, -1
	str	w0, [x19, 304]
	ldr	x19, [sp, 16]
	mov	w5, 1
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	mov	w0, w5
	ret
	.cfi_endproc
.LFE17:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	2
	.p2align 4,,11
	.global	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, %function
tc_hmac_prng_generate:
.LFB18:
	.cfi_startproc
	cmp	x0, 0
	ccmp	x2, 0, 4, ne
	beq	.L41
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x20, x2
	sub	w2, w1, #1
	stp	x21, x22, [sp, 32]
	mov	w19, w1
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x21, x0
	mov	w1, 524287
	mov	w0, 0
	cmp	w2, w1
	bhi	.L38
	ldr	w1, [x20, 304]
	mov	w0, -1
	cbz	w1, .L38
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	add	x23, x20, 272
	add	w1, w1, w0
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	add	x25, x20, 240
	mov	w24, 32
	str	w1, [x20, 304]
	.p2align 3,,7
.L40:
	mov	x1, x25
	mov	w2, 32
	mov	x0, x20
	bl	tc_hmac_set_key
	mov	x0, x20
	bl	tc_hmac_init
	mov	x1, x23
	mov	w2, 32
	mov	x0, x20
	bl	tc_hmac_update
	mov	x2, x20
	mov	w1, 32
	mov	x0, x23
	bl	tc_hmac_final
	cmp	w19, 32
	mov	x0, x21
	csel	w22, w19, w24, ls
	mov	x2, x23
	mov	w3, w22
	mov	w1, w22
	bl	_copy
	add	x21, x21, w22, uxtw
	cmp	w19, 32
	csel	w19, w19, w24, cs
	subs	w19, w19, #32
	bne	.L40
	mov	x0, x20
	mov	w4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x1, 0
	bl	update
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	mov	w0, 1
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L38:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L41:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE18:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

	.arch armv8-a
	.file	"tinycrypt_hmac_prng.c"
	.text
	.section	.rodata
	.align	2
	.type	MIN_SLEN, %object
	.size	MIN_SLEN, 4
MIN_SLEN:
	.word	32
	.align	2
	.type	MAX_SLEN, %object
	.size	MAX_SLEN, 4
MAX_SLEN:
	.word	-1
	.align	2
	.type	MAX_PLEN, %object
	.size	MAX_PLEN, 4
MAX_PLEN:
	.word	-1
	.align	2
	.type	MAX_ALEN, %object
	.size	MAX_ALEN, 4
MAX_ALEN:
	.word	-1
	.align	2
	.type	MAX_GENS, %object
	.size	MAX_GENS, 4
MAX_GENS:
	.word	-1
	.align	2
	.type	MAX_OUT, %object
	.size	MAX_OUT, 4
MAX_OUT:
	.word	524288
	.text
	.align	2
	.type	update, %function
update:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	x3, [sp]
	str	w4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	strb	wzr, [sp, 38]
	mov	w0, 1
	strb	w0, [sp, 39]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_set_key
	ldr	x0, [sp, 24]
	bl	tc_hmac_init
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_update
	ldr	x0, [sp, 24]
	add	x1, sp, 38
	mov	w2, 1
	bl	tc_hmac_update
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L2
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L2
	ldr	x0, [sp, 24]
	ldr	w2, [sp, 12]
	ldr	x1, [sp, 16]
	bl	tc_hmac_update
.L2:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L3
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 24]
	ldr	w2, [sp, 8]
	ldr	x1, [sp]
	bl	tc_hmac_update
.L3:
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	ldr	x1, [sp, 24]
	mov	x2, x1
	mov	w1, 32
	bl	tc_hmac_final
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_set_key
	ldr	x0, [sp, 24]
	bl	tc_hmac_init
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_update
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	ldr	x1, [sp, 24]
	mov	x2, x1
	mov	w1, 32
	bl	tc_hmac_final
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L9
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L9
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_set_key
	ldr	x0, [sp, 24]
	bl	tc_hmac_init
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_update
	ldr	x0, [sp, 24]
	add	x1, sp, 39
	mov	w2, 1
	bl	tc_hmac_update
	ldr	x0, [sp, 24]
	ldr	w2, [sp, 12]
	ldr	x1, [sp, 16]
	bl	tc_hmac_update
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L7
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L7
	ldr	x0, [sp, 24]
	ldr	w2, [sp, 8]
	ldr	x1, [sp]
	bl	tc_hmac_update
.L7:
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	ldr	x1, [sp, 24]
	mov	x2, x1
	mov	w1, 32
	bl	tc_hmac_final
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_set_key
	ldr	x0, [sp, 24]
	bl	tc_hmac_init
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_update
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	ldr	x1, [sp, 24]
	mov	x2, x1
	mov	w1, 32
	bl	tc_hmac_final
	b	.L1
.L9:
	nop
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	update, .-update
	.align	2
	.global	tc_hmac_prng_init
	.type	tc_hmac_prng_init, %function
tc_hmac_prng_init:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L11
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L11
	mov	w0, -1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bls	.L12
.L11:
	mov	w0, 0
	b	.L13
.L12:
	ldr	x0, [sp, 40]
	add	x0, x0, 240
	mov	w2, 32
	mov	w1, 0
	bl	_set
	ldr	x0, [sp, 40]
	add	x0, x0, 272
	mov	w2, 32
	mov	w1, 1
	bl	_set
	mov	w4, 0
	mov	x3, 0
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	update
	ldr	x0, [sp, 40]
	str	wzr, [x0, 304]
	mov	w0, 1
.L13:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	2
	.global	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, %function
tc_hmac_prng_reseed:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	str	w4, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L15
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L15
	mov	w0, 32
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bcc	.L15
	mov	w0, -1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bls	.L16
.L15:
	mov	w0, 0
	b	.L17
.L16:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L18
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L19
	mov	w0, -1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bls	.L20
.L19:
	mov	w0, 0
	b	.L17
.L20:
	ldr	w4, [sp, 24]
	ldr	x3, [sp, 16]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	update
	b	.L21
.L18:
	mov	w4, 0
	mov	x3, 0
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	update
.L21:
	mov	w1, -1
	ldr	x0, [sp, 40]
	str	w1, [x0, 304]
	mov	w0, 1
.L17:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	2
	.global	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, %function
tc_hmac_prng_generate:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L23
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L23
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L23
	mov	w0, 524288
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bls	.L24
.L23:
	mov	w0, 0
	b	.L25
.L24:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 304]
	cmp	w0, 0
	bne	.L26
	mov	w0, -1
	b	.L25
.L26:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 304]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0, 304]
	b	.L27
.L28:
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 240
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_set_key
	ldr	x0, [sp, 24]
	bl	tc_hmac_init
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	mov	w2, 32
	mov	x1, x0
	mov	x0, x3
	bl	tc_hmac_update
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	ldr	x1, [sp, 24]
	mov	x2, x1
	mov	w1, 32
	bl	tc_hmac_final
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 36]
	mov	w0, 32
	cmp	w2, 32
	csel	w0, w1, w0, ls
	str	w0, [sp, 60]
	ldr	x0, [sp, 24]
	add	x0, x0, 272
	ldr	w3, [sp, 60]
	mov	x2, x0
	ldr	w1, [sp, 60]
	ldr	x0, [sp, 40]
	bl	_copy
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 36]
	mov	w0, 32
	cmp	w2, 32
	csel	w0, w1, w0, cs
	sub	w0, w0, #32
	str	w0, [sp, 36]
.L27:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L28
	mov	w4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	update
	mov	w0, 1
.L25:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

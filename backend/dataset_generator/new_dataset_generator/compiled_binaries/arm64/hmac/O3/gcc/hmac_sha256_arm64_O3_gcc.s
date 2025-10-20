	.arch armv8-a
	.file	"hmac_sha256.c"
	.text
	.align	2
	.p2align 4,,11
	.global	hmac_sha256
	.type	hmac_sha256, %function
hmac_sha256:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	sub	x9, x0, #1
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	mov	x5, sp
	stp	x29, x30, [sp, 144]
	add	x3, sp, 64
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	ldr	x0, [x2]
	str	x0, [sp, 136]
	mov	x0, 0
	mov	x0, 1
	mov	w13, 54
	mov	w12, 92
	mov	w11, 54
	mov	w10, 92
	.p2align 3,,7
.L5:
	sub	x2, x0, #1
	cmp	x1, x2
	bls	.L2
	add	x7, x5, x0
	add	x6, x3, x0
	ldrb	w2, [x9, x0]
	add	x0, x0, 1
	eor	w8, w2, w11
	eor	w2, w2, w10
	strb	w8, [x7, -1]
	strb	w2, [x6, -1]
	cmp	x0, 65
	bne	.L5
.L4:
	ldp	q1, q0, [sp]
	ldp	q3, q2, [sp, 64]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	eor	v1.16b, v1.16b, v3.16b
	eor	v0.16b, v0.16b, v2.16b
	stp	q1, q0, [x4]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L12
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2:
	.cfi_restore_state
	add	x6, x5, x0
	add	x2, x3, x0
	add	x0, x0, 1
	strb	w13, [x6, -1]
	strb	w12, [x2, -1]
	cmp	x0, 65
	bne	.L5
	b	.L4
.L12:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

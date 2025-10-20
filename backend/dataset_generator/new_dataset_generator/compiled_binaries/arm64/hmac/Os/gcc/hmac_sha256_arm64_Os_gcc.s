	.arch armv8-a
	.file	"hmac_sha256.c"
	.text
	.align	2
	.global	hmac_sha256
	.type	hmac_sha256, %function
hmac_sha256:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	mov	w7, 54
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	add	x6, sp, 8
	stp	x29, x30, [sp, 144]
	add	x5, sp, 72
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	mov	w8, 92
	ldr	x3, [x2]
	str	x3, [sp, 136]
	mov	x3, 0
	mov	x2, 0
.L4:
	cmp	x1, x2
	bls	.L7
	ldrb	w3, [x0, x2]
	eor	w3, w3, w7
.L2:
	strb	w3, [x2, x6]
	cmp	x1, x2
	bls	.L8
	ldrb	w3, [x0, x2]
	eor	w3, w3, w8
.L3:
	strb	w3, [x2, x5]
	add	x2, x2, 1
	cmp	x2, 64
	bne	.L4
	mov	x0, 0
.L5:
	ldrb	w1, [x6, x0]
	ldrb	w2, [x5, x0]
	eor	w1, w1, w2
	strb	w1, [x4, x0]
	add	x0, x0, 1
	cmp	x0, 32
	bne	.L5
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L7:
	mov	w3, 54
	b	.L2
.L8:
	mov	w3, 92
	b	.L3
.L6:
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

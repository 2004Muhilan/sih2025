	.arch armv8-a
	.file	"hmac_key_derivation.c"
	.text
	.align	2
	.global	hmac_key_derive
	.type	hmac_key_derive, %function
hmac_key_derive:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	xzr, [sp, 56]
	b	.L2
.L3:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 32]
	udiv	x2, x0, x1
	ldr	x1, [sp, 32]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 16]
	udiv	x3, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x3, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x3, [sp, 8]
	ldr	x0, [sp, 56]
	add	x0, x3, x0
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L2:
	ldr	x0, [sp, 56]
	cmp	x0, 31
	bls	.L3
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

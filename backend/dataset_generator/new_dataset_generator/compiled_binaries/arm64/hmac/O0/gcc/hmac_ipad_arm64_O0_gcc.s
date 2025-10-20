	.arch armv8-a
	.file	"hmac_ipad.c"
	.text
	.align	2
	.global	hmac_create_ipad
	.type	hmac_create_ipad, %function
hmac_create_ipad:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	xzr, [sp, 40]
	b	.L2
.L5:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcs	.L3
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	mov	w0, 54
	eor	w0, w1, w0
	and	w0, w0, 255
	b	.L4
.L3:
	mov	w0, 54
.L4:
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 40]
	add	x1, x2, x1
	strb	w0, [x1]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L2:
	ldr	x0, [sp, 40]
	cmp	x0, 63
	bls	.L5
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_create_ipad, .-hmac_create_ipad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

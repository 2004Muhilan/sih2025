	.arch armv8-a
	.file	"hmac_opad.c"
	.text
	.align	2
	.p2align 4,,11
	.global	hmac_create_opad
	.type	hmac_create_opad, %function
hmac_create_opad:
.LFB0:
	.cfi_startproc
	mov	x3, 0
	mov	w6, 92
	mov	w7, 92
	.p2align 3,,7
.L5:
	cmp	x1, x3
	bls	.L2
	ldrb	w4, [x0, x3]
	eor	w4, w4, w7
	strb	w4, [x2, x3]
	add	x3, x3, 1
	cmp	x3, 64
	bne	.L5
.L1:
	ret
	.p2align 2,,3
.L6:
	mov	x3, x4
.L2:
	strb	w6, [x2, x3]
	add	x4, x3, 1
	cmp	x3, 63
	beq	.L1
	cmp	x1, x4
	bls	.L6
	ldrb	w5, [x0, x4]
	add	x3, x3, 2
	eor	w5, w5, w7
	strb	w5, [x2, x4]
	b	.L5
	.cfi_endproc
.LFE0:
	.size	hmac_create_opad, .-hmac_create_opad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

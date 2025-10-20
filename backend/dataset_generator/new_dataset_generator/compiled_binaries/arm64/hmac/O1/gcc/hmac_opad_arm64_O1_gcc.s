	.arch armv8-a
	.file	"hmac_opad.c"
	.text
	.align	2
	.global	hmac_create_opad
	.type	hmac_create_opad, %function
hmac_create_opad:
.LFB0:
	.cfi_startproc
	mov	x3, 0
	mov	w5, 92
	b	.L3
.L2:
	strb	w4, [x2, x3]
	add	x3, x3, 1
	cmp	x3, 64
	beq	.L6
.L3:
	mov	w4, w5
	cmp	x1, x3
	bls	.L2
	ldrb	w4, [x0, x3]
	eor	w4, w4, w5
	b	.L2
.L6:
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_create_opad, .-hmac_create_opad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

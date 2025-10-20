	.arch armv8-a
	.file	"hmac_key_derivation.c"
	.text
	.align	2
	.p2align 4,,11
	.global	hmac_key_derive
	.type	hmac_key_derive, %function
hmac_key_derive:
.LFB0:
	.cfi_startproc
	mov	x5, 0
	.p2align 3,,7
.L2:
	udiv	x6, x5, x1
	udiv	x7, x5, x3
	msub	x6, x6, x1, x5
	msub	x7, x7, x3, x5
	ldrb	w6, [x0, x6]
	ldrb	w7, [x2, x7]
	eor	w6, w6, w7
	strb	w6, [x4, x5]
	add	x5, x5, 1
	cmp	x5, 32
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

	.arch armv8-a
	.file	"hmac_verify.c"
	.text
	.align	2
	.global	hmac_verify
	.type	hmac_verify, %function
hmac_verify:
.LFB0:
	.cfi_startproc
	mov	x4, 0
	mov	w3, 0
.L2:
	cmp	x4, x2
	bne	.L3
	cmp	w3, 0
	cset	w0, eq
	ret
.L3:
	ldrb	w5, [x0, x4]
	ldrb	w6, [x1, x4]
	add	x4, x4, 1
	eor	w5, w5, w6
	orr	w3, w3, w5
	and	w3, w3, 255
	b	.L2
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

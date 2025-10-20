	.arch armv8-a
	.file	"hmac_verify.c"
	.text
	.align	2
	.global	hmac_verify
	.type	hmac_verify, %function
hmac_verify:
.LFB0:
	.cfi_startproc
	cbz	x2, .L4
	mov	x3, 0
	mov	w4, 0
.L3:
	ldrb	w5, [x0, x3]
	ldrb	w6, [x1, x3]
	eor	w5, w5, w6
	orr	w4, w4, w5
	and	w4, w4, 255
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L3
.L2:
	cmp	w4, 0
	cset	w0, eq
	ret
.L4:
	mov	w4, 0
	b	.L2
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

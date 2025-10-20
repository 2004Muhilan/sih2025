	.arch armv8-a
	.file	"rc4_prga.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_prga
	.type	rc4_prga, %function
rc4_prga:
.LFB0:
	.cfi_startproc
	ldrb	w3, [x1]
	add	w3, w3, 1
	and	w3, w3, 255
	strb	w3, [x1]
	ldrb	w4, [x2]
	ldrb	w3, [x0, w3, uxtw]
	add	w3, w3, w4
	and	w3, w3, 255
	strb	w3, [x2]
	ldrb	w4, [x1]
	ldrb	w3, [x0, w3, uxtw]
	ldrb	w5, [x0, x4]
	strb	w3, [x0, x4]
	ldrb	w3, [x2]
	strb	w5, [x0, x3]
	ldrb	w1, [x1]
	ldrb	w2, [x2]
	ldrb	w1, [x0, x1]
	ldrb	w2, [x0, x2]
	add	w1, w1, w2
	and	x1, x1, 255
	ldrb	w0, [x0, x1]
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

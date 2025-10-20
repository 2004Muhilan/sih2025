	.arch armv8-a
	.file	"aes_add_round_key.c"
	.text
	.align	2
	.global	aes_add_round_key
	.type	aes_add_round_key, %function
aes_add_round_key:
.LFB0:
	.cfi_startproc
	mov	x2, 0
.L2:
	ldrb	w3, [x0, x2]
	ldrb	w4, [x1, x2]
	eor	w3, w3, w4
	strb	w3, [x0, x2]
	add	x2, x2, 1
	cmp	x2, 16
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

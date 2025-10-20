	.arch armv8-a
	.file	"string_concat.c"
	.text
	.align	2
	.global	string_concat
	.type	string_concat, %function
string_concat:
.LFB0:
	.cfi_startproc
	mov	x3, 0
	cbz	x2, .L18
.L2:
	ldrb	w4, [x0, x3]
	cbz	w4, .L19
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L2
	b	.L4
.L19:
	sub	x4, x2, #1
	cmp	x4, x3
	bls	.L11
.L9:
	mov	x2, x3
	sub	x3, x1, x3
.L5:
	ldrb	w1, [x3, x2]
	cbz	w1, .L4
	strb	w1, [x0, x2]
	add	x2, x2, 1
	cmp	x2, x4
	bne	.L5
	mov	x2, x4
.L4:
	strb	wzr, [x0, x2]
	ret
.L11:
	mov	x2, x3
	b	.L4
.L18:
	sub	x4, x2, #1
	mov	x3, x2
	b	.L9
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

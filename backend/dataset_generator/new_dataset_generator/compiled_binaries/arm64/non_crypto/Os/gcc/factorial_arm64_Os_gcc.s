	.arch armv8-a
	.file	"factorial.c"
	.text
	.align	2
	.global	factorial
	.type	factorial, %function
factorial:
.LFB0:
	.cfi_startproc
	mov	w2, w0
	cmp	w0, 1
	bls	.L4
	mov	w1, 2
	mov	x0, 1
.L3:
	uxtw	x3, w1
	add	w1, w1, 1
	mul	x0, x0, x3
	cmp	w2, w1
	bcs	.L3
.L1:
	ret
.L4:
	mov	x0, 1
	b	.L1
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

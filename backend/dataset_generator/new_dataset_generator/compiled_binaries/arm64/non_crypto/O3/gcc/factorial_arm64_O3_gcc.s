	.arch armv8-a
	.file	"factorial.c"
	.text
	.align	2
	.p2align 4,,11
	.global	factorial
	.type	factorial, %function
factorial:
.LFB0:
	.cfi_startproc
	mov	w3, w0
	mov	x0, 1
	cmp	w3, 1
	bls	.L1
	mov	w1, 2
	mov	x0, 1
	.p2align 3,,7
.L3:
	uxtw	x2, w1
	add	w1, w1, 1
	mul	x0, x0, x2
	cmp	w3, w1
	bcs	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

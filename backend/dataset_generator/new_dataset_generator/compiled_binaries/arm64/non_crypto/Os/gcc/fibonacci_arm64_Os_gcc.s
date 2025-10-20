	.arch armv8-a
	.file	"fibonacci.c"
	.text
	.align	2
	.global	fibonacci
	.type	fibonacci, %function
fibonacci:
.LFB0:
	.cfi_startproc
	mov	w1, w0
	cmp	w0, 1
	bls	.L1
	mov	w2, 2
	mov	w0, 1
	mov	w3, 0
.L3:
	mov	w4, w0
	add	w2, w2, 1
	add	w0, w0, w3
	mov	w3, w4
	cmp	w1, w2
	bcs	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

	.arch armv8-a
	.file	"rsa_miller_rabin.c"
	.text
	.align	2
	.global	rsa_miller_rabin
	.type	rsa_miller_rabin, %function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	mov	x2, x0
	mov	w0, 0
	cmp	x2, 1
	bls	.L2
	sub	x1, x2, #2
	mov	w0, 1
	cmp	x1, 1
	bls	.L2
	mov	w0, 0
	tbz	x2, 0, .L2
	sub	x1, x2, #1
	tbz	x2, 0, .L7
.L3:
	lsr	x1, x1, 1
	tbz	x1, 0, .L3
	mov	w0, 1
.L2:
	ret
.L7:
	mov	w0, 1
	b	.L2
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

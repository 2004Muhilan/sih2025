	.arch armv8-a
	.file	"rsa_miller_rabin.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rsa_miller_rabin
	.type	rsa_miller_rabin, %function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	cmp	x0, 1
	bls	.L3
	sub	x1, x0, #2
	and	w0, w0, 1
	cmp	x1, 1
	csinc	w0, w0, wzr, hi
	ret
	.p2align 2,,3
.L3:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

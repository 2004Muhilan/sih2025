	.text
	.file	"sha256_maj.c"
	.globl	sha256_maj                      // -- Begin function sha256_maj
	.p2align	2
	.type	sha256_maj,@function
sha256_maj:                             // @sha256_maj
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	and	w8, w8, w9
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #4]
	and	w9, w9, w10
	eor	w8, w8, w9
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #4]
	and	w9, w9, w10
	eor	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sha256_maj, .Lfunc_end0-sha256_maj
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

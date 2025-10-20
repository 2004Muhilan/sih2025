	.text
	.file	"md5_round3.c"
	.globl	md5_round3                      // -- Begin function md5_round3
	.p2align	2
	.type	md5_round3,@function
md5_round3:                             // @md5_round3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	str	w4, [sp, #8]
	str	w5, [sp, #4]
	str	w6, [sp]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	ldr	w10, [sp, #20]
	ldr	w11, [sp, #16]
	eor	w10, w10, w11
	ldr	w11, [sp, #12]
	eor	w10, w10, w11
	add	w9, w9, w10
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	ldr	w10, [sp]
	add	w9, w9, w10
	ldr	w10, [sp, #4]
	lsl	w9, w9, w10
	add	w8, w8, w9
	ldr	x9, [sp, #24]
	str	w8, [x9]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	md5_round3, .Lfunc_end0-md5_round3
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

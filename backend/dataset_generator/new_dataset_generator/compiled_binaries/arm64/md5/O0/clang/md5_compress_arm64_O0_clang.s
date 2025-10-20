	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    // -- Begin function md5_compress
	.p2align	2
	.type	md5_compress,@function
md5_compress:                           // @md5_compress
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #4]
	str	w8, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #12]
	str	w8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #20]
	and	w8, w8, w9
	ldr	w10, [sp, #24]
	ldr	w9, [sp, #16]
	bic	w9, w9, w10
	orr	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #16]
	str	w8, [sp, #4]
	ldr	w8, [sp, #20]
	str	w8, [sp, #16]
	ldr	w8, [sp, #24]
	str	w8, [sp, #20]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	ldr	x10, [sp, #32]
	ldrsw	x11, [sp, #12]
	ldr	w10, [x10, x11, lsl #2]
	add	w9, w9, w10
	add	w8, w8, w9, lsl #7
	str	w8, [sp, #24]
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldr	w10, [sp, #28]
	ldr	x9, [sp, #40]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #24]
	ldr	x9, [sp, #40]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #20]
	ldr	x9, [sp, #40]
	ldr	w8, [x9, #8]
	add	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w10, [sp, #16]
	ldr	x9, [sp, #40]
	ldr	w8, [x9, #12]
	add	w8, w8, w10
	str	w8, [x9, #12]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

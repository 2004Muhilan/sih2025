	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   // -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,@function
md5_transform:                          // @md5_transform
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	ldp	w10, w11, [x0]
	ldp	w9, w8, [x0, #8]
	mov	x15, xzr
	add	x16, x1, #3
	mov	x17, sp
	mov	w13, w10
	mov	w14, w11
	mov	w12, w9
	mov	w18, w8
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x1, x16, x15
	ldur	w1, [x1, #-3]
	str	w1, [x17, x15]
	add	x15, x15, #4
	cmp	x15, #64
	b.ne	.LBB0_1
// %bb.2:
	mov	x15, xzr
	mov	x17, sp
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	mov	w16, w12
	mov	w12, w14
	mov	w1, w18
	and	w14, w14, w16
	bic	w18, w18, w12
	orr	w14, w14, w18
	ldr	w18, [x17, x15]
	add	x15, x15, #4
	add	w13, w14, w13
	cmp	x15, #64
	add	w13, w13, w18
	mov	w18, w16
	ror	w13, w13, #25
	add	w14, w13, w12
	mov	w13, w1
	b.ne	.LBB0_3
// %bb.4:
	add	w10, w1, w10
	add	w11, w14, w11
	add	w9, w12, w9
	add	w8, w16, w8
	stp	w10, w11, [x0]
	stp	w9, w8, [x0, #8]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cfi_endproc
                                        // -- End function
	.globl	md5_init                        // -- Begin function md5_init
	.p2align	2
	.type	md5_init,@function
md5_init:                               // @md5_init
	.cfi_startproc
// %bb.0:
	mov	x8, #8961                       // =0x2301
	mov	x9, #56574                      // =0xdcfe
	movk	x8, #26437, lsl #16
	movk	x9, #39098, lsl #16
	movk	x8, #43913, lsl #32
	movk	x9, #21622, lsl #32
	movk	x8, #61389, lsl #48
	movk	x9, #4146, lsl #48
	stp	x8, x9, [x0]
	ret
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

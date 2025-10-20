	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   // -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,@function
md5_transform:                          // @md5_transform
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	str	x0, [sp, #120]
	str	x1, [sp, #112]
	ldr	x8, [sp, #120]
	ldr	w8, [x8]
	str	w8, [sp, #108]
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #4]
	str	w8, [sp, #104]
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #8]
	str	w8, [sp, #100]
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #12]
	str	w8, [sp, #96]
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #112]
	ldrsw	x9, [sp, #24]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #112]
	ldr	w10, [sp, #24]
	add	w10, w10, #1
	ldrb	w9, [x9, w10, sxtw]
	orr	w8, w8, w9, lsl #8
	ldr	x9, [sp, #112]
	ldr	w10, [sp, #24]
	add	w10, w10, #2
	ldrb	w9, [x9, w10, sxtw]
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #112]
	ldr	w10, [sp, #24]
	add	w10, w10, #3
	ldrb	w9, [x9, w10, sxtw]
	orr	w8, w8, w9, lsl #24
	ldrsw	x10, [sp, #28]
	add	x9, sp, #32
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	ldr	w8, [sp, #24]
	add	w8, w8, #4
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #104]
	ldr	w9, [sp, #100]
	and	w8, w8, w9
	ldr	w10, [sp, #104]
	ldr	w9, [sp, #96]
	bic	w9, w9, w10
	orr	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #96]
	str	w8, [sp, #12]
	ldr	w8, [sp, #100]
	str	w8, [sp, #96]
	ldr	w8, [sp, #104]
	str	w8, [sp, #100]
	ldr	w8, [sp, #104]
	ldr	w9, [sp, #108]
	ldr	w10, [sp, #16]
	add	w9, w9, w10
	ldrsw	x10, [sp, #20]
	add	x11, sp, #32
	ldr	w10, [x11, x10, lsl #2]
	add	w10, w9, w10
	ldr	w9, [sp, #108]
	ldr	w12, [sp, #16]
	add	w9, w9, w12
	ldrsw	x12, [sp, #20]
	ldr	w11, [x11, x12, lsl #2]
	add	w9, w9, w11
	lsr	w9, w9, #25
	orr	w9, w9, w10, lsl #7
	add	w8, w8, w9
	str	w8, [sp, #104]
	ldr	w8, [sp, #12]
	str	w8, [sp, #108]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_8:
	ldr	w10, [sp, #108]
	ldr	x9, [sp, #120]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #104]
	ldr	x9, [sp, #120]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #100]
	ldr	x9, [sp, #120]
	ldr	w8, [x9, #8]
	add	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w10, [sp, #96]
	ldr	x9, [sp, #120]
	ldr	w8, [x9, #12]
	add	w8, w8, w10
	str	w8, [x9, #12]
	add	sp, sp, #128
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #8961                       // =0x2301
	movk	w8, #26437, lsl #16
	str	w8, [x9]
	ldr	x9, [sp, #8]
	mov	w8, #43913                      // =0xab89
	movk	w8, #61389, lsl #16
	str	w8, [x9, #4]
	ldr	x9, [sp, #8]
	mov	w8, #56574                      // =0xdcfe
	movk	w8, #39098, lsl #16
	str	w8, [x9, #8]
	ldr	x9, [sp, #8]
	mov	w8, #21622                      // =0x5476
	movk	w8, #4146, lsl #16
	str	w8, [x9, #12]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

	.text
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                // -- Begin function rsa_miller_rabin
	.p2align	2
	.type	rsa_miller_rabin,@function
rsa_miller_rabin:                       // @rsa_miller_rabin
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	subs	x8, x8, #2
	b.hs	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, wzr
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	.LBB0_11
.LBB0_2:
	ldr	x8, [sp, #16]
	subs	x8, x8, #2
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	subs	x8, x8, #3
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1                          // =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	.LBB0_11
.LBB0_5:
	ldr	x8, [sp, #16]
	mov	x10, #2                         // =0x2
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, wzr
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	.LBB0_11
.LBB0_7:
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	str	x8, [sp]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	mov	x10, #2                         // =0x2
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	cbnz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp]
	mov	x9, #2                          // =0x2
	udiv	x8, x8, x9
	str	x8, [sp]
	b	.LBB0_8
.LBB0_10:
	mov	w8, #1                          // =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	.LBB0_11
.LBB0_11:
	ldrb	w8, [sp, #31]
	and	w0, w8, #0x1
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

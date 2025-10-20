	.text
	.file	"sha256_compress.c"
	.globl	sha256_compress                 // -- Begin function sha256_compress
	.p2align	2
	.type	sha256_compress,@function
sha256_compress:                        // @sha256_compress
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #384
	.cfi_def_cfa_offset 384
	str	x29, [sp, #368]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	add	x8, sp, #352
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [x8, #8]
	str	x1, [x8]
	str	wzr, [sp, #92]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #92]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8]
	ldrsw	x9, [sp, #92]
	ldr	w8, [x8, x9, lsl #2]
	ldrsw	x10, [sp, #92]
	add	x9, sp, #96
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #92]
	add	w8, w8, #1
	str	w8, [sp, #92]
	b	.LBB0_1
.LBB0_4:
	mov	w8, #16                         // =0x10
	str	w8, [sp, #88]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #88]
	subs	w8, w8, #64
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #88]
	subs	w8, w8, #15
	add	x9, sp, #96
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldr	w10, [x9, w8, sxtw #2]
	ldr	w8, [sp, #88]
	subs	w8, w8, #15
	ldr	w8, [x9, w8, sxtw #2]
	lsl	w8, w8, #25
	orr	w8, w8, w10, lsr #7
	ldr	w10, [sp, #88]
	subs	w10, w10, #15
	ldr	w11, [x9, w10, sxtw #2]
	ldr	w10, [sp, #88]
	subs	w10, w10, #15
	ldr	w10, [x9, w10, sxtw #2]
	lsl	w10, w10, #14
	orr	w10, w10, w11, lsr #18
	eor	w8, w8, w10
	ldr	w10, [sp, #88]
	subs	w10, w10, #15
	ldr	w10, [x9, w10, sxtw #2]
	eor	w8, w8, w10, lsr #3
	str	w8, [sp, #84]
	ldr	w8, [sp, #88]
	subs	w8, w8, #2
	ldr	w10, [x9, w8, sxtw #2]
	ldr	w8, [sp, #88]
	subs	w8, w8, #2
	ldr	w8, [x9, w8, sxtw #2]
	lsl	w8, w8, #15
	orr	w8, w8, w10, lsr #17
	ldr	w10, [sp, #88]
	subs	w10, w10, #2
	ldr	w11, [x9, w10, sxtw #2]
	ldr	w10, [sp, #88]
	subs	w10, w10, #2
	ldr	w10, [x9, w10, sxtw #2]
	lsl	w10, w10, #13
	orr	w10, w10, w11, lsr #19
	eor	w8, w8, w10
	ldr	w10, [sp, #88]
	subs	w10, w10, #2
	ldr	w10, [x9, w10, sxtw #2]
	eor	w8, w8, w10, lsr #10
	str	w8, [sp, #80]
	ldr	w8, [sp, #88]
	subs	w8, w8, #16
	ldr	w8, [x9, w8, sxtw #2]
	ldr	w10, [sp, #84]
	add	w8, w8, w10
	ldr	w10, [sp, #88]
	subs	w10, w10, #7
	ldr	w10, [x9, w10, sxtw #2]
	add	w8, w8, w10
	ldr	w10, [sp, #80]
	add	w8, w8, w10
	ldrsw	x10, [sp, #88]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #88]
	add	w8, w8, #1
	str	w8, [sp, #88]
	b	.LBB0_5
.LBB0_8:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	w9, [x9]
	str	w9, [sp, #76]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #4]
	str	w9, [sp, #72]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #8]
	str	w9, [sp, #68]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #12]
	str	w9, [sp, #64]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #16]
	str	w9, [sp, #60]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #20]
	str	w9, [sp, #56]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #24]
	str	w9, [sp, #52]
	ldr	x8, [x8, #8]
	ldr	w8, [x8, #28]
	str	w8, [sp, #48]
	str	wzr, [sp, #44]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #64
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w9, [sp, #60]
	ldr	w8, [sp, #60]
	lsl	w8, w8, #26
	orr	w8, w8, w9, lsr #6
	ldr	w10, [sp, #60]
	ldr	w9, [sp, #60]
	lsl	w9, w9, #21
	orr	w9, w9, w10, lsr #11
	eor	w8, w8, w9
	ldr	w10, [sp, #60]
	ldr	w9, [sp, #60]
	lsl	w9, w9, #7
	orr	w9, w9, w10, lsr #25
	eor	w8, w8, w9
	str	w8, [sp, #40]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #56]
	and	w9, w9, w10
	ldr	w11, [sp, #60]
	ldr	w10, [sp, #52]
	bic	w10, w10, w11
	eor	w9, w9, w10
	add	w8, w8, w9
	mov	w9, #12184                      // =0x2f98
	movk	w9, #17034, lsl #16
	add	w8, w8, w9
	ldrsw	x10, [sp, #44]
	add	x9, sp, #96
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	str	w8, [sp, #36]
	ldr	w9, [sp, #76]
	ldr	w8, [sp, #76]
	lsl	w8, w8, #30
	orr	w8, w8, w9, lsr #2
	ldr	w10, [sp, #76]
	ldr	w9, [sp, #76]
	lsl	w9, w9, #19
	orr	w9, w9, w10, lsr #13
	eor	w8, w8, w9
	ldr	w10, [sp, #76]
	ldr	w9, [sp, #76]
	lsl	w9, w9, #10
	orr	w9, w9, w10, lsr #22
	eor	w8, w8, w9
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #76]
	ldr	w10, [sp, #72]
	and	w9, w9, w10
	ldr	w10, [sp, #76]
	ldr	w11, [sp, #68]
	and	w10, w10, w11
	eor	w9, w9, w10
	ldr	w10, [sp, #72]
	ldr	w11, [sp, #68]
	and	w10, w10, w11
	eor	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w8, [sp, #52]
	str	w8, [sp, #48]
	ldr	w8, [sp, #56]
	str	w8, [sp, #52]
	ldr	w8, [sp, #60]
	str	w8, [sp, #56]
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #60]
	ldr	w8, [sp, #68]
	str	w8, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #68]
	ldr	w8, [sp, #76]
	str	w8, [sp, #72]
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	str	w8, [sp, #76]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_9
.LBB0_12:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w11, [sp, #76]
	ldr	x10, [x8, #8]
	ldr	w9, [x10]
	add	w9, w9, w11
	str	w9, [x10]
	ldr	w11, [sp, #72]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #4]
	add	w9, w9, w11
	str	w9, [x10, #4]
	ldr	w11, [sp, #68]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #8]
	add	w9, w9, w11
	str	w9, [x10, #8]
	ldr	w11, [sp, #64]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #12]
	add	w9, w9, w11
	str	w9, [x10, #12]
	ldr	w11, [sp, #60]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #16]
	add	w9, w9, w11
	str	w9, [x10, #16]
	ldr	w11, [sp, #56]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #20]
	add	w9, w9, w11
	str	w9, [x10, #20]
	ldr	w11, [sp, #52]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #24]
	add	w9, w9, w11
	str	w9, [x10, #24]
	ldr	w10, [sp, #48]
	ldr	x9, [x8, #8]
	ldr	w8, [x9, #28]
	add	w8, w8, w10
	str	w8, [x9, #28]
	ldr	x29, [sp, #368]                 // 8-byte Folded Reload
	add	sp, sp, #384
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

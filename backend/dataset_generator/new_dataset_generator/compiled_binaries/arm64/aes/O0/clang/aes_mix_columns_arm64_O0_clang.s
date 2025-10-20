	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 // -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,@function
aes_mix_columns:                        // @aes_mix_columns
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #4
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	lsl	w9, w9, #2
	add	x8, x8, w9, sxtw
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	sturb	w8, [x29, #-25]
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8, #1]
	sturb	w8, [x29, #-26]
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8, #2]
	sturb	w8, [x29, #-27]
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8, #3]
	sturb	w8, [x29, #-28]
	ldurb	w0, [x29, #-25]
	mov	w1, #2                          // =0x2
	str	w1, [sp, #28]                   // 4-byte Folded Spill
	bl	gf_mul
	and	w8, w0, #0xff
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldurb	w0, [x29, #-26]
	mov	w1, #3                          // =0x3
	str	w1, [sp, #24]                   // 4-byte Folded Spill
	bl	gf_mul
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldurb	w9, [x29, #-27]
	eor	w8, w8, w9
	ldurb	w9, [x29, #-28]
	eor	w8, w8, w9
	ldur	x9, [x29, #-24]
	strb	w8, [x9]
	ldurb	w8, [x29, #-25]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldurb	w0, [x29, #-26]
	bl	gf_mul
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldurb	w0, [x29, #-27]
	bl	gf_mul
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldurb	w9, [x29, #-28]
	eor	w8, w8, w9
	ldur	x9, [x29, #-24]
	strb	w8, [x9, #1]
	ldurb	w8, [x29, #-25]
	ldurb	w9, [x29, #-26]
	eor	w8, w8, w9
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldurb	w0, [x29, #-27]
	bl	gf_mul
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldurb	w0, [x29, #-28]
	bl	gf_mul
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldur	x9, [x29, #-24]
	strb	w8, [x9, #2]
	ldurb	w0, [x29, #-25]
	bl	gf_mul
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	and	w8, w0, #0xff
	ldurb	w9, [x29, #-26]
	eor	w8, w8, w9
	ldurb	w9, [x29, #-27]
	eor	w8, w8, w9
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	ldurb	w0, [x29, #-28]
	bl	gf_mul
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldur	x9, [x29, #-24]
	strb	w8, [x9, #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_4:
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function gf_mul
	.type	gf_mul,@function
gf_mul:                                 // @gf_mul
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	strb	w1, [sp, #14]
	strb	wzr, [sp, #13]
	str	wzr, [sp, #8]
	b	.LBB1_1
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	b.ge	.LBB1_8
	b	.LBB1_2
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	ldrb	w8, [sp, #14]
	tbz	w8, #0, .LBB1_4
	b	.LBB1_3
.LBB1_3:                                //   in Loop: Header=BB1_1 Depth=1
	ldrb	w9, [sp, #15]
	ldrb	w8, [sp, #13]
	eor	w8, w8, w9
	strb	w8, [sp, #13]
	b	.LBB1_4
.LBB1_4:                                //   in Loop: Header=BB1_1 Depth=1
	ldrb	w8, [sp, #15]
	and	w8, w8, #0x80
	strb	w8, [sp, #7]
	ldrb	w8, [sp, #15]
	lsl	w8, w8, #1
	strb	w8, [sp, #15]
	ldrb	w8, [sp, #7]
	cbz	w8, .LBB1_6
	b	.LBB1_5
.LBB1_5:                                //   in Loop: Header=BB1_1 Depth=1
	ldrb	w8, [sp, #15]
	mov	w9, #27                         // =0x1b
	eor	w8, w8, w9
	strb	w8, [sp, #15]
	b	.LBB1_6
.LBB1_6:                                //   in Loop: Header=BB1_1 Depth=1
	ldrb	w8, [sp, #14]
	asr	w8, w8, #1
	strb	w8, [sp, #14]
	b	.LBB1_7
.LBB1_7:                                //   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB1_1
.LBB1_8:
	ldrb	w0, [sp, #13]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	gf_mul, .Lfunc_end1-gf_mul
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gf_mul

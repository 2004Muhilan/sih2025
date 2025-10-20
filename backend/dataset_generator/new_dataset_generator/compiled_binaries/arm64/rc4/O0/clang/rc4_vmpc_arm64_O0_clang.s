	.text
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                // -- Begin function rc4_vmpc_variant
	.p2align	2
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       // @rc4_vmpc_variant
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	str	x29, [sp, #304]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	str	x0, [sp, #296]
	str	x1, [sp, #288]
	str	x2, [sp, #280]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #256
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	ldrsw	x10, [sp, #20]
	add	x9, sp, #24
	strb	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	strb	wzr, [sp, #19]
	str	xzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #288]
	subs	x8, x8, x9
	b.hs	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldrb	w9, [sp, #19]
	ldr	x8, [sp, #296]
	ldr	x10, [sp, #8]
	ldrb	w10, [x8, x10]
	add	x8, sp, #24
	ldrb	w10, [x8, w10, sxtw]
	add	w9, w9, w10
	mov	w11, #256                       // =0x100
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	add	x9, x8, w9, sxtw
	ldrb	w9, [x9]
	strb	w9, [sp, #19]
	ldrb	w9, [sp, #19]
                                        // kill: def $x9 killed $w9
	ldrb	w9, [x8, x9]
                                        // kill: def $x9 killed $w9
	ldrb	w9, [x8, x9]
	add	w9, w9, #1
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	ldrb	w10, [x8, w9, sxtw]
	ldr	x8, [sp, #296]
	ldr	x9, [sp, #8]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_8:
	ldr	x29, [sp, #304]                 // 8-byte Folded Reload
	add	sp, sp, #320
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

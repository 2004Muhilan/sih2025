	.text
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      // -- Begin function rc4_stream
	.p2align	2
	.type	rc4_stream,@function
rc4_stream:                             // @rc4_stream
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	str	x29, [sp, #336]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	add	x8, sp, #304
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [x8, #24]
	str	x1, [x8, #16]
	str	x2, [x8, #8]
	str	x3, [x8]
	str	wzr, [sp, #44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #256
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	ldrsw	x10, [sp, #44]
	add	x9, sp, #48
	strb	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_1
.LBB0_4:
	strb	wzr, [sp, #43]
	strb	wzr, [sp, #42]
	strb	wzr, [sp, #41]
	str	xzr, [sp, #32]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldrb	w9, [sp, #42]
	add	w9, w9, #1
	mov	w12, #256                       // =0x100
	sdiv	w10, w9, w12
	mul	w10, w10, w12
	subs	w9, w9, w10
	strb	w9, [sp, #42]
	ldrb	w10, [sp, #41]
	ldrb	w9, [sp, #42]
	mov	w11, w9
	add	x9, sp, #48
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldrb	w11, [x9, x11]
	add	w10, w10, w11
	sdiv	w11, w10, w12
	mul	w11, w11, w12
	subs	w10, w10, w11
	strb	w10, [sp, #41]
	ldrb	w10, [sp, #42]
	mov	w11, w10
	mov	x10, x9
	add	x10, x10, x11
	ldrb	w10, [x10]
	strb	w10, [sp, #31]
	ldrb	w10, [sp, #41]
	mov	w11, w10
	mov	x10, x9
	add	x10, x10, x11
	ldrb	w10, [x10]
	ldrb	w11, [sp, #42]
	mov	w13, w11
	mov	x11, x9
	add	x11, x11, x13
	strb	w10, [x11]
	ldrb	w10, [sp, #31]
	ldrb	w11, [sp, #41]
	mov	w13, w11
	mov	x11, x9
	add	x11, x11, x13
	strb	w10, [x11]
	ldrb	w10, [sp, #42]
                                        // kill: def $x10 killed $w10
	ldrb	w10, [x9, x10]
	ldrb	w11, [sp, #41]
                                        // kill: def $x11 killed $w11
	ldrb	w11, [x9, x11]
	add	w10, w10, w11
	sdiv	w11, w10, w12
	mul	w11, w11, w12
	subs	w10, w10, w11
	ldrb	w10, [x9, w10, sxtw]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #32]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_5
.LBB0_8:
	ldr	x29, [sp, #336]                 // 8-byte Folded Reload
	add	sp, sp, #352
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	rc4_stream, .Lfunc_end0-rc4_stream
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

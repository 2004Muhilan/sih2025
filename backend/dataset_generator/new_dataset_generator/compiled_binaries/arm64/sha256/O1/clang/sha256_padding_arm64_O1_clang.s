	.text
	.file	"sha256_padding.c"
	.globl	sha256_padding                  // -- Begin function sha256_padding
	.p2align	2
	.type	sha256_padding,@function
sha256_padding:                         // @sha256_padding
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x20, x1
	mov	x19, x2
	mov	x1, x0
	mov	x0, x2
	mov	x2, x20
	bl	memcpy
	mov	w8, #55                         // =0x37
	add	x19, x19, x20
	mov	w9, #128                        // =0x80
	sub	w8, w8, w20
	strb	w9, [x19], #1
	and	x21, x8, #0x3f
	mov	x0, x19
	mov	w1, wzr
	mov	x2, x21
	bl	memset
	lsl	x8, x20, #3
	add	x9, x19, x21
	mov	w10, #56                        // =0x38
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	lsr	x11, x8, x10
	sub	x10, x10, #8
	cmn	x10, #8
	strb	w11, [x9], #1
	b.ne	.LBB0_1
// %bb.2:
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha256_padding, .Lfunc_end0-sha256_padding
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

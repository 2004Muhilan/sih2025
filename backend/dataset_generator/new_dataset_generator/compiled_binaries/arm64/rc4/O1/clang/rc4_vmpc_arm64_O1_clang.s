	.text
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                // -- Begin function rc4_vmpc_variant
	.p2align	2
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       // @rc4_vmpc_variant
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	str	x29, [sp, #256]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	mov	x8, xzr
	mov	x9, sp
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	strb	w8, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #256
	b.ne	.LBB0_1
// %bb.2:
	cbz	x1, .LBB0_5
// %bb.3:
	mov	w9, wzr
	mov	x8, sp
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0]
	subs	x1, x1, #1
	ldrb	w11, [x8, x10]
	add	w9, w11, w9
	and	x9, x9, #0xff
	ldrb	w9, [x8, x9]
	ldrb	w11, [x8, x9]
	ldrb	w11, [x8, x11]
	add	w11, w11, #1
	and	x11, x11, #0xff
	ldrb	w11, [x8, x11]
	eor	w10, w11, w10
	strb	w10, [x0], #1
	b.ne	.LBB0_4
.LBB0_5:
	ldr	x29, [sp, #256]                 // 8-byte Folded Reload
	add	sp, sp, #272
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

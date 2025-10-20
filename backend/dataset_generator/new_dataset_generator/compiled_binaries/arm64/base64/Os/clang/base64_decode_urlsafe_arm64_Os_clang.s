	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           // -- Begin function base64_url_char_value
	.p2align	2
	.type	base64_url_char_value,@function
base64_url_char_value:                  // @base64_url_char_value
	.cfi_startproc
// %bb.0:
	and	w8, w0, #0xff
	sub	w0, w8, #65
	cmp	w0, #25
	b.hi	.LBB0_2
// %bb.1:
	ret
.LBB0_2:
	sub	w9, w8, #97
	cmp	w9, #25
	b.hi	.LBB0_4
// %bb.3:
	sub	w0, w8, #71
	ret
.LBB0_4:
	sub	w9, w8, #48
	cmp	w9, #9
	b.hi	.LBB0_6
// %bb.5:
	add	w0, w8, #4
	ret
.LBB0_6:
	cmp	w8, #95
	mov	w9, #63                         // =0x3f
	csinv	w9, w9, wzr, eq
	cmp	w8, #45
	mov	w8, #62                         // =0x3e
	csel	w0, w8, w9, eq
	ret
.Lfunc_end0:
	.size	base64_url_char_value, .Lfunc_end0-base64_url_char_value
	.cfi_endproc
                                        // -- End function
	.globl	base64_decode_urlsafe           // -- Begin function base64_decode_urlsafe
	.p2align	2
	.type	base64_decode_urlsafe,@function
base64_decode_urlsafe:                  // @base64_decode_urlsafe
	.cfi_startproc
// %bb.0:
	mov	x8, x0
	ldrb	w0, [x0]
	cbz	w0, .LBB1_4
// %bb.1:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x1
	add	x20, x8, #1
.LBB1_2:                                // =>This Inner Loop Header: Depth=1
	bl	base64_url_char_value
	strb	w0, [x19], #1
	ldrb	w0, [x20], #1
	cbnz	w0, .LBB1_2
// %bb.3:
	.cfi_def_cfa wsp, 32
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w30
	.cfi_restore w29
.LBB1_4:
	ret
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

	.text
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      // -- Begin function rc4_stream
	.p2align	2
	.type	rc4_stream,@function
rc4_stream:                             // @rc4_stream
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
	mov	w8, wzr
	mov	w9, wzr
	mov	x10, sp
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	add	w9, w9, #1
	subs	x1, x1, #1
	and	x9, x9, #0xff
	ldrb	w11, [x10, x9]
	add	w8, w11, w8
	and	x12, x8, #0xff
	ldrb	w13, [x10, x12]
	strb	w13, [x10, x9]
	strb	w11, [x10, x12]
	ldrb	w12, [x10, x9]
	add	w11, w12, w11
	ldrb	w12, [x0]
	and	x11, x11, #0xff
	ldrb	w11, [x10, x11]
	eor	w11, w12, w11
	strb	w11, [x0], #1
	b.ne	.LBB0_4
.LBB0_5:
	ldr	x29, [sp, #256]                 // 8-byte Folded Reload
	add	sp, sp, #272
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

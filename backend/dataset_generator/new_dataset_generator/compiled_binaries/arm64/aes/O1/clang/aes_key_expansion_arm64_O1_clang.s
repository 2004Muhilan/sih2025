	.text
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               // -- Begin function aes_key_expansion
	.p2align	2
	.type	aes_key_expansion,@function
aes_key_expansion:                      // @aes_key_expansion
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x0, x8]
	strb	w9, [x1, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB0_1
// %bb.2:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, xzr
	mov	w9, #1                          // =0x1
	adrp	x10, rcon
	add	x10, x10, :lo12:rcon
	mov	x11, x1
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
	add	x13, x1, x8, lsl #4
	add	x14, x9, x10
	mov	x12, xzr
	ldurb	w14, [x14, #-1]
	ldr	w13, [x13, #12]
	ubfx	w16, w13, #8, #8
	lsr	w15, w13, #16
	str	w13, [sp, #12]
	strb	w13, [sp, #15]
	eor	w13, w14, w16
	sturh	w15, [sp, #13]
	strb	w13, [sp, #12]
.LBB0_4:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x13, sp, #12
	add	x14, x11, x12
	bfxil	x13, x12, #0, #2
	ldrb	w15, [x14]
	add	x12, x12, #1
	cmp	x12, #16
	ldrb	w13, [x13]
	eor	w13, w13, w15
	strb	w13, [x14, #16]
	b.ne	.LBB0_4
// %bb.5:                               //   in Loop: Header=BB0_3 Depth=1
	add	x8, x8, #1
	add	x9, x9, #1
	add	x11, x11, #16
	cmp	x8, #10
	b.ne	.LBB0_3
// %bb.6:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        // -- End function
	.type	rcon,@object                    // @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

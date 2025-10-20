	.text
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               // -- Begin function aes_key_expansion
	.p2align	2
	.type	aes_key_expansion,@function
aes_key_expansion:                      // @aes_key_expansion
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #28]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #28]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_4:
	mov	w8, #1                          // =0x1
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
                                        //     Child Loop BB0_11 Depth 2
	ldr	w8, [sp, #24]
	subs	w8, w8, #10
	b.gt	.LBB0_16
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	str	wzr, [sp, #16]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	subs	w8, w8, #4
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	lsl	w9, w9, #4
	add	w9, w9, #12
	ldr	w10, [sp, #16]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	ldrsw	x10, [sp, #16]
	add	x9, sp, #20
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	ldrb	w8, [sp, #20]
	strb	w8, [sp, #15]
	ldrb	w8, [sp, #21]
	strb	w8, [sp, #20]
	ldrb	w8, [sp, #22]
	strb	w8, [sp, #21]
	ldrb	w8, [sp, #23]
	strb	w8, [sp, #22]
	ldrb	w8, [sp, #15]
	strb	w8, [sp, #23]
	ldr	w8, [sp, #24]
	subs	w9, w8, #1
	adrp	x8, rcon
	add	x8, x8, :lo12:rcon
	ldrb	w9, [x8, w9, sxtw]
	ldrb	w8, [sp, #20]
	eor	w8, w8, w9
	strb	w8, [sp, #20]
	str	wzr, [sp, #8]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	subs	w8, w8, #16
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=2
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #24]
	subs	w10, w9, #1
	ldr	w9, [sp, #8]
	add	w9, w9, w10, lsl #4
	ldrb	w8, [x8, w9, sxtw]
	ldr	w9, [sp, #8]
	mov	w11, #4                         // =0x4
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w10, w9, w10
	add	x9, sp, #20
	ldrb	w9, [x9, w10, sxtw]
	eor	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	w11, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, w11, lsl #4
	strb	w8, [x9, w10, sxtw]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_11
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_16:
	add	sp, sp, #48
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
	.addrsig_sym rcon

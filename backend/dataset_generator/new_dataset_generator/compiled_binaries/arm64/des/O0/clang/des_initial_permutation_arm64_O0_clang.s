	.text
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         // -- Begin function des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,@function
des_initial_permutation:                // @des_initial_permutation
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	xzr, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #64
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x10, [sp, #12]
	adrp	x9, IP
	add	x9, x9, :lo12:IP
	ldrb	w10, [x9, x10]
	mov	w9, #64                         // =0x40
	subs	w10, w9, w10
	mov	x9, #1                          // =0x1
                                        // kill: def $x10 killed $w10
	lsl	x9, x9, x10
	and	x8, x8, x9
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	mov	w8, #63                         // =0x3f
	subs	w9, w8, w9
	mov	x8, #1                          // =0x1
                                        // kill: def $x9 killed $w9
	lsl	x9, x8, x9
	ldr	x8, [sp, #16]
	orr	x8, x8, x9
	str	x8, [sp, #16]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cfi_endproc
                                        // -- End function
	.type	IP,@object                      // @IP
	.section	.rodata,"a",@progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym IP

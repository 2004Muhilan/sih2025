	.text
	.file	"custom_des.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function des_encrypt
.LCPI0_0:
	.xword	-40                             // 0xffffffffffffffd8
	.xword	-32                             // 0xffffffffffffffe0
.LCPI0_1:
	.xword	-56                             // 0xffffffffffffffc8
	.xword	-48                             // 0xffffffffffffffd0
.LCPI0_2:
	.xword	-8                              // 0xfffffffffffffff8
	.xword	0                               // 0x0
.LCPI0_3:
	.xword	-24                             // 0xffffffffffffffe8
	.xword	-16                             // 0xfffffffffffffff0
	.text
	.globl	des_encrypt
	.p2align	2
	.type	des_encrypt,@function
des_encrypt:                            // @des_encrypt
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	mov	w9, #56                         // =0x38
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0], #1
	lsl	x10, x10, x9
	sub	x9, x9, #8
	cmn	x9, #8
	orr	x8, x10, x8
	b.ne	.LBB0_1
// %bb.2:
	mov	w9, wzr
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	and	x10, x9, #0x7
	and	x11, x8, #0xffffffff
	add	w9, w9, #1
	ldrb	w10, [x1, x10]
	eor	x11, x11, x8, lsr #32
	cmp	w9, #16
	eor	x10, x11, x10
	orr	x8, x10, x8, lsl #32
	b.ne	.LBB0_3
// %bb.4:
	dup	v0.2d, x8
	adrp	x8, .LCPI0_0
	adrp	x9, .LCPI0_1
	adrp	x10, .LCPI0_2
	ldr	q1, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_3
	ldr	q2, [x9, :lo12:.LCPI0_1]
	ldr	q3, [x10, :lo12:.LCPI0_2]
	ldr	q4, [x8, :lo12:.LCPI0_3]
	ushl	v1.2d, v0.2d, v1.2d
	ushl	v2.2d, v0.2d, v2.2d
	ushl	v3.2d, v0.2d, v3.2d
	ushl	v0.2d, v0.2d, v4.2d
	uzp1	v0.4s, v0.4s, v3.4s
	uzp1	v1.4s, v2.4s, v1.4s
	uzp1	v0.8h, v1.8h, v0.8h
	xtn	v0.8b, v0.8h
	str	d0, [x2]
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

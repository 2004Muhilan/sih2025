	.text
	.file	"sha256_padding.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function sha256_padding
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
	.globl	sha256_padding
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
	adrp	x9, .LCPI0_0
	adrp	x10, .LCPI0_1
	ldr	q1, [x9, :lo12:.LCPI0_0]
	adrp	x9, .LCPI0_3
	ldr	q2, [x10, :lo12:.LCPI0_1]
	dup	v0.2d, x8
	adrp	x8, .LCPI0_2
	ldr	q4, [x9, :lo12:.LCPI0_3]
	ldr	q3, [x8, :lo12:.LCPI0_2]
	ushl	v1.2d, v0.2d, v1.2d
	ushl	v2.2d, v0.2d, v2.2d
	ushl	v3.2d, v0.2d, v3.2d
	ushl	v0.2d, v0.2d, v4.2d
	uzp1	v1.4s, v2.4s, v1.4s
	uzp1	v0.4s, v0.4s, v3.4s
	uzp1	v0.8h, v1.8h, v0.8h
	xtn	v0.8b, v0.8h
	str	d0, [x19, x21]
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

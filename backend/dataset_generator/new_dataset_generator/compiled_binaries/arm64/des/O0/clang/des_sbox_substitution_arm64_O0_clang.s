	.text
	.file	"des_sbox_substitution.c"
	.globl	des_sbox                        // -- Begin function des_sbox
	.p2align	2
	.type	des_sbox,@function
des_sbox:                               // @des_sbox
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	str	w1, [sp, #8]
	ldrb	w8, [sp, #15]
	and	w9, w8, #0x20
	ldrb	w8, [sp, #15]
	and	w8, w8, #0x1
	orr	w8, w8, w9, asr #4
	str	w8, [sp, #4]
	ldrb	w8, [sp, #15]
	and	w8, w8, #0x1e
	asr	w8, w8, #1
	str	w8, [sp]
	ldrsw	x10, [sp, #4]
	ldrsw	x9, [sp]
	adrp	x8, S1
	add	x8, x8, :lo12:S1
	add	x8, x8, x10, lsl #4
	ldrb	w0, [x8, x9]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des_sbox, .Lfunc_end0-des_sbox
	.cfi_endproc
                                        // -- End function
	.type	S1,@object                      // @S1
	.section	.rodata,"a",@progbits
S1:
	.ascii	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t\000\007"
	.ascii	"\000\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.asciz	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.ascii	"\017\f\b\002\004\t\001\007\005\013\003\016\n\000\006\r"
	.size	S1, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym S1

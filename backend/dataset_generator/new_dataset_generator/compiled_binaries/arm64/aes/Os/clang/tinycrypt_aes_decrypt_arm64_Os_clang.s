	.text
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       // -- Begin function tc_aes128_set_decrypt_key
	.p2align	2
	.type	tc_aes128_set_decrypt_key,@function
tc_aes128_set_decrypt_key:              // @tc_aes128_set_decrypt_key
	.cfi_startproc
// %bb.0:
	b	tc_aes128_set_encrypt_key
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          // -- Begin function tc_aes_decrypt
.LCPI1_0:
	.word	4294967272                      // 0xffffffe8
	.word	4294967280                      // 0xfffffff0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.byte	0                               // 0x0
	.byte	13                              // 0xd
	.byte	10                              // 0xa
	.byte	7                               // 0x7
	.byte	4                               // 0x4
	.byte	1                               // 0x1
	.byte	14                              // 0xe
	.byte	11                              // 0xb
	.byte	8                               // 0x8
	.byte	5                               // 0x5
	.byte	2                               // 0x2
	.byte	15                              // 0xf
	.byte	12                              // 0xc
	.byte	9                               // 0x9
	.byte	6                               // 0x6
	.byte	3                               // 0x3
	.text
	.globl	tc_aes_decrypt
	.p2align	2
	.type	tc_aes_decrypt,@function
tc_aes_decrypt:                         // @tc_aes_decrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	str	d8, [sp, #48]                   // 8-byte Folded Spill
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_offset b8, -80
	mov	x19, x0
	mov	w0, wzr
	cbz	x19, .LBB1_10
// %bb.1:
	mov	x20, x2
	mov	x2, x1
	cbz	x1, .LBB1_10
// %bb.2:
	cbz	x20, .LBB1_10
// %bb.3:
	add	x0, sp, #16
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	add	x21, sp, #16
	bl	_copy
	ldp	w8, w9, [x20, #160]
	ldp	w10, w11, [x20, #168]
	adrp	x12, .LCPI1_0
	add	x23, sp, #32
	mov	w24, #9                         // =0x9
	dup	v0.2s, w8
	dup	v1.2s, w9
	ldr	d8, [x12, :lo12:.LCPI1_0]
	dup	v2.2s, w10
	dup	v3.2s, w11
	lsr	w12, w8, #8
	lsr	w13, w9, #8
	lsr	w14, w10, #8
	lsr	w15, w11, #8
	adrp	x22, inv_sbox
	add	x22, x22, :lo12:inv_sbox
	ushl	v0.2s, v0.2s, v8.2s
	ushl	v1.2s, v1.2s, v8.2s
	ushl	v2.2s, v2.2s, v8.2s
	ushl	v3.2s, v3.2s, v8.2s
	mov	v0.s[2], w12
	mov	v1.s[2], w13
	mov	v2.s[2], w14
	mov	v3.s[2], w15
	mov	v0.s[3], w8
	mov	v1.s[3], w9
	adrp	x8, .LCPI1_1
	mov	v2.s[3], w10
	mov	v3.s[3], w11
	uzp1	v0.8h, v0.8h, v1.8h
	ldr	q1, [sp, #16]
	uzp1	v2.8h, v2.8h, v3.8h
	uzp1	v0.16b, v0.16b, v2.16b
	eor	v0.16b, v1.16b, v0.16b
	ldr	q1, [x8, :lo12:.LCPI1_1]
	stp	q1, q0, [sp]                    // 16-byte Folded Spill
.LBB1_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_5 Depth 2
	ldp	q1, q0, [sp]                    // 16-byte Folded Reload
	add	x0, sp, #16
	add	x2, sp, #32
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	tbl	v0.16b, { v0.16b }, v1.16b
	str	q0, [sp, #32]
	bl	_copy
	mov	x8, xzr
.LBB1_5:                                //   Parent Loop BB1_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w9, [x21, x8]
	ldrb	w9, [x22, x9]
	strb	w9, [x21, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_5
// %bb.6:                               //   in Loop: Header=BB1_4 Depth=1
	add	x8, x20, x24, lsl #4
	add	x0, sp, #32
	add	x1, sp, #16
	ldp	w9, w10, [x8]
	ldp	w11, w8, [x8, #8]
	dup	v0.2s, w9
	dup	v1.2s, w10
	lsr	w12, w9, #8
	dup	v2.2s, w11
	dup	v3.2s, w8
	lsr	w13, w10, #8
	lsr	w14, w11, #8
	lsr	w15, w8, #8
	ushl	v0.2s, v0.2s, v8.2s
	ushl	v1.2s, v1.2s, v8.2s
	ushl	v2.2s, v2.2s, v8.2s
	ushl	v3.2s, v3.2s, v8.2s
	mov	v0.s[2], w12
	mov	v1.s[2], w13
	mov	v2.s[2], w14
	mov	v3.s[2], w15
	mov	v0.s[3], w9
	mov	v1.s[3], w10
	mov	v2.s[3], w11
	mov	v3.s[3], w8
	uzp1	v0.8h, v0.8h, v1.8h
	ldr	q1, [sp, #16]
	uzp1	v2.8h, v2.8h, v3.8h
	uzp1	v0.16b, v0.16b, v2.16b
	eor	v0.16b, v1.16b, v0.16b
	str	q0, [sp, #16]
	bl	mult_row_column
	add	x0, x23, #4
	orr	x1, x21, #0x4
	bl	mult_row_column
	add	x0, x23, #8
	orr	x1, x21, #0x8
	bl	mult_row_column
	add	x0, x23, #12
	orr	x1, x21, #0xc
	bl	mult_row_column
	add	x0, sp, #16
	add	x2, sp, #32
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	bl	_copy
	subs	x24, x24, #1
	b.ne	.LBB1_4
// %bb.7:
	ldp	q1, q0, [sp]                    // 16-byte Folded Reload
	add	x0, sp, #16
	add	x2, sp, #32
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	add	x21, sp, #16
	tbl	v0.16b, { v0.16b }, v1.16b
	str	q0, [sp, #32]
	bl	_copy
	mov	x8, xzr
.LBB1_8:                                // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x21, x8]
	ldrb	w9, [x22, x9]
	strb	w9, [x21, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_8
// %bb.9:
	ldp	w8, w9, [x20]
	ldp	w10, w11, [x20, #8]
	add	x2, sp, #16
	mov	x0, x19
	mov	w1, #16                         // =0x10
	dup	v0.2s, w8
	dup	v1.2s, w9
	lsr	w12, w8, #8
	dup	v2.2s, w10
	dup	v3.2s, w11
	lsr	w13, w9, #8
	lsr	w14, w10, #8
	lsr	w15, w11, #8
	mov	w3, #16                         // =0x10
	ushl	v0.2s, v0.2s, v8.2s
	ushl	v1.2s, v1.2s, v8.2s
	ushl	v2.2s, v2.2s, v8.2s
	ushl	v3.2s, v3.2s, v8.2s
	mov	v0.s[2], w12
	mov	v1.s[2], w13
	mov	v2.s[2], w14
	mov	v3.s[2], w15
	mov	v0.s[3], w8
	mov	v1.s[3], w9
	mov	v2.s[3], w10
	mov	v3.s[3], w11
	uzp1	v0.8h, v0.8h, v1.8h
	ldr	q1, [sp, #16]
	uzp1	v2.8h, v2.8h, v3.8h
	uzp1	v0.16b, v0.16b, v2.16b
	eor	v0.16b, v1.16b, v0.16b
	str	q0, [sp, #16]
	bl	_copy
	add	x0, sp, #16
	mov	w1, wzr
	mov	w2, #16                         // =0x10
	bl	_set
	mov	w0, #1                          // =0x1
.LBB1_10:
	.cfi_def_cfa wsp, 128
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldr	d8, [sp, #48]                   // 8-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	ret
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        // @mult_row_column
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	ldrb	w8, [x1]
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	x20, x1
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20]
	mov	w22, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [x20, #1]
	mov	w23, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #1]
	mov	w24, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [x20, #2]
	ldrb	w19, [x20, #1]
	mov	w25, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #2]
	mov	w26, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #3]
	ldrb	w28, [x20, #2]
	mov	w27, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	eor	w9, w22, w23
	ldrb	w8, [x20, #3]
	eor	w10, w24, w25
	eor	w9, w9, w21
	eor	w11, w19, w26
	eor	w9, w9, w10
	eor	w10, w11, w27
	eor	w11, w28, w0
	eor	w9, w9, w10
	eor	w8, w11, w8
	ldr	x28, [sp, #8]                   // 8-byte Folded Reload
	eor	w8, w9, w8
	strb	w8, [x28]
	ldrb	w0, [x20]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20]
	mov	w21, w0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldrb	w8, [x20, #1]
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #1]
	mov	w22, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #1]
	mov	w23, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [x20, #2]
	mov	w24, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #2]
	mov	w25, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [x20, #3]
	ldrb	w19, [x20, #2]
	mov	w26, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #3]
	mov	w27, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
	ldrb	w8, [x20, #3]
	eor	w10, w22, w23
	eor	w11, w24, w25
	eor	w12, w19, w27
	eor	w9, w9, w21
	eor	w9, w9, w10
	eor	w10, w11, w26
	eor	w11, w12, w0
	eor	w9, w9, w10
	eor	w8, w11, w8
	eor	w8, w9, w8
	strb	w8, [x28, #1]
	ldrb	w0, [x20]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20]
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #1]
	ldrb	w21, [x20]
	mov	w22, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #2]
	ldrb	w19, [x20, #1]
	mov	w23, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #2]
	mov	w24, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #2]
	mov	w25, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [x20, #3]
	mov	w26, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #3]
	mov	w27, w0
	mov	w0, w8
	bl	_double_byte
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	eor	w9, w22, w21
	ldrb	w8, [x20, #3]
	eor	w11, w24, w25
	eor	w9, w9, w10
	eor	w10, w23, w19
	eor	w9, w9, w10
	eor	w10, w11, w26
	eor	w11, w27, w0
	eor	w9, w9, w10
	eor	w8, w11, w8
	eor	w8, w9, w8
	strb	w8, [x28, #2]
	ldrb	w0, [x20]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [x20, #1]
	ldrb	w27, [x20]
	mov	w22, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #1]
	mov	w23, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #2]
	ldrb	w19, [x20, #1]
	mov	w24, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #3]
	ldrb	w28, [x20, #2]
	mov	w25, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #3]
	mov	w26, w0
	mov	w0, w8
	bl	_double_byte
	bl	_double_byte
	ldrb	w8, [x20, #3]
	mov	w20, w0
	mov	w0, w8
	bl	_double_byte
	eor	w8, w22, w27
	eor	w9, w23, w24
	eor	w10, w19, w25
	eor	w8, w8, w21
	eor	w8, w8, w9
	eor	w9, w10, w28
	eor	w10, w26, w20
	eor	w8, w8, w9
	eor	w9, w10, w0
	eor	w8, w8, w9
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #3]
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	mult_row_column, .Lfunc_end2-mult_row_column
	.cfi_endproc
                                        // -- End function
	.type	inv_sbox,@object                // @inv_sbox
	.section	.rodata,"a",@progbits
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

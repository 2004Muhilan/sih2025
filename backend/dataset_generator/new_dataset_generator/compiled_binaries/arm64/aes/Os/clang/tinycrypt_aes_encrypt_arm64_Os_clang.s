	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       // -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              // @tc_aes128_set_encrypt_key
	.cfi_startproc
// %bb.0:
	mov	w8, wzr
	cbz	x0, .LBB0_9
// %bb.1:
	cbz	x1, .LBB0_9
// %bb.2:
	mov	x8, xzr
	add	x9, x1, #1
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x9, x8
	ldur	w10, [x10, #-1]
	rev	w10, w10
	str	w10, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #16
	b.ne	.LBB0_3
// %bb.4:
	ldr	w11, [x0, #12]
	mov	x8, xzr
	adrp	x9, sbox
	add	x9, x9, :lo12:sbox
	adrp	x10, .L__const.tc_aes128_set_encrypt_key.rconst
	add	x10, x10, :lo12:.L__const.tc_aes128_set_encrypt_key.rconst
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	add	x12, x8, #4
	tst	x12, #0x3
	b.ne	.LBB0_7
// %bb.6:                               //   in Loop: Header=BB0_5 Depth=1
	ror	w11, w11, #24
	and	x12, x12, #0xfffffffc
	ldr	w12, [x10, x12]
	lsr	x13, x11, #24
	ubfx	x14, x11, #16, #8
	ubfx	x15, x11, #8, #8
	and	x11, x11, #0xff
	ldrb	w13, [x9, x13]
	ldrb	w14, [x9, x14]
	ldrb	w11, [x9, x11]
	lsl	w13, w13, #24
	orr	w13, w13, w14, lsl #16
	ldrb	w14, [x9, x15]
	orr	w13, w13, w14, lsl #8
	orr	w11, w13, w11
	eor	w11, w11, w12
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	add	x12, x0, x8, lsl #2
	add	x8, x8, #1
	cmp	x8, #40
	ldr	w13, [x12]
	eor	w11, w13, w11
	str	w11, [x12, #16]
	b.ne	.LBB0_5
// %bb.8:
	mov	w8, #1                          // =0x1
.LBB0_9:
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          // -- Begin function tc_aes_encrypt
.LCPI1_0:
	.word	4294967272                      // 0xffffffe8
	.word	4294967280                      // 0xfffffff0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.byte	0                               // 0x0
	.byte	5                               // 0x5
	.byte	10                              // 0xa
	.byte	15                              // 0xf
	.byte	4                               // 0x4
	.byte	9                               // 0x9
	.byte	14                              // 0xe
	.byte	3                               // 0x3
	.byte	8                               // 0x8
	.byte	13                              // 0xd
	.byte	2                               // 0x2
	.byte	7                               // 0x7
	.byte	12                              // 0xc
	.byte	1                               // 0x1
	.byte	6                               // 0x6
	.byte	11                              // 0xb
	.text
	.globl	tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         // @tc_aes_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	str	d8, [sp, #48]                   // 8-byte Folded Spill
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	.cfi_offset b8, -96
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
	add	x22, sp, #16
	bl	_copy
	ldp	w8, w9, [x20]
	ldp	w10, w11, [x20, #8]
	adrp	x12, .LCPI1_0
	mov	x23, xzr
	adrp	x24, sbox
	add	x24, x24, :lo12:sbox
	dup	v0.2s, w8
	dup	v1.2s, w9
	dup	v2.2s, w10
	dup	v3.2s, w11
	ldr	d8, [x12, :lo12:.LCPI1_0]
	lsr	w12, w8, #8
	lsr	w13, w9, #8
	lsr	w14, w10, #8
	lsr	w15, w11, #8
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
	mov	x8, xzr
.LBB1_5:                                //   Parent Loop BB1_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w9, [x22, x8]
	ldrb	w9, [x24, x9]
	strb	w9, [x22, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_5
// %bb.6:                               //   in Loop: Header=BB1_4 Depth=1
	ldp	q1, q0, [sp]                    // 16-byte Folded Reload
	add	x0, sp, #16
	add	x2, sp, #32
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	tbl	v0.16b, { v0.16b }, v1.16b
	str	q0, [sp, #32]
	bl	_copy
	ldrb	w0, [sp, #16]
	bl	_double_byte
	ldrb	w8, [sp, #17]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #18]
	ldrb	w10, [sp, #19]
	ldrb	w8, [sp, #17]
	ldrb	w25, [sp, #16]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #32]
	bl	_double_byte
	ldrb	w8, [sp, #18]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #19]
	eor	w9, w21, w25
	ldrb	w25, [sp, #16]
	ldrb	w26, [sp, #17]
	eor	w8, w0, w8
	ldrb	w0, [sp, #18]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #33]
	bl	_double_byte
	ldrb	w8, [sp, #19]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #19]
	eor	w9, w26, w25
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #16]
	eor	w8, w9, w8
	strb	w8, [sp, #34]
	bl	_double_byte
	ldrb	w8, [sp, #16]
	ldrb	w9, [sp, #17]
	ldrb	w21, [sp, #18]
	eor	w9, w8, w9
	ldrb	w8, [sp, #19]
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #20]
	eor	w9, w21, w0
	eor	w9, w25, w9
	mov	w0, w8
	strb	w9, [sp, #35]
	bl	_double_byte
	ldrb	w8, [sp, #21]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #22]
	ldrb	w10, [sp, #23]
	ldrb	w8, [sp, #21]
	ldrb	w25, [sp, #20]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #36]
	bl	_double_byte
	ldrb	w8, [sp, #22]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #23]
	eor	w9, w21, w25
	ldrb	w25, [sp, #20]
	ldrb	w26, [sp, #21]
	eor	w8, w0, w8
	ldrb	w0, [sp, #22]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #37]
	bl	_double_byte
	ldrb	w8, [sp, #23]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #23]
	eor	w9, w26, w25
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #20]
	eor	w8, w9, w8
	strb	w8, [sp, #38]
	bl	_double_byte
	ldrb	w8, [sp, #20]
	ldrb	w9, [sp, #21]
	ldrb	w21, [sp, #22]
	eor	w9, w8, w9
	ldrb	w8, [sp, #23]
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #24]
	eor	w9, w21, w0
	eor	w9, w25, w9
	mov	w0, w8
	strb	w9, [sp, #39]
	bl	_double_byte
	ldrb	w8, [sp, #25]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #26]
	ldrb	w10, [sp, #27]
	ldrb	w8, [sp, #25]
	ldrb	w25, [sp, #24]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #40]
	bl	_double_byte
	ldrb	w8, [sp, #26]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #27]
	eor	w9, w21, w25
	ldrb	w25, [sp, #24]
	ldrb	w26, [sp, #25]
	eor	w8, w0, w8
	ldrb	w0, [sp, #26]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #41]
	bl	_double_byte
	ldrb	w8, [sp, #27]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #27]
	eor	w9, w26, w25
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #24]
	eor	w8, w9, w8
	strb	w8, [sp, #42]
	bl	_double_byte
	ldrb	w8, [sp, #24]
	ldrb	w9, [sp, #25]
	ldrb	w21, [sp, #26]
	eor	w9, w8, w9
	ldrb	w8, [sp, #27]
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #28]
	eor	w9, w21, w0
	eor	w9, w25, w9
	mov	w0, w8
	strb	w9, [sp, #43]
	bl	_double_byte
	ldrb	w8, [sp, #29]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #30]
	ldrb	w10, [sp, #31]
	ldrb	w8, [sp, #29]
	ldrb	w25, [sp, #28]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #44]
	bl	_double_byte
	ldrb	w8, [sp, #30]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #31]
	eor	w9, w21, w25
	ldrb	w25, [sp, #28]
	ldrb	w26, [sp, #29]
	eor	w8, w0, w8
	ldrb	w0, [sp, #30]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #45]
	bl	_double_byte
	ldrb	w8, [sp, #31]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #31]
	eor	w9, w26, w25
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #28]
	eor	w8, w9, w8
	strb	w8, [sp, #46]
	bl	_double_byte
	ldrb	w8, [sp, #28]
	ldrb	w9, [sp, #29]
	ldrb	w21, [sp, #30]
	eor	w9, w8, w9
	ldrb	w8, [sp, #31]
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	eor	w8, w21, w0
	add	x0, sp, #16
	add	x2, sp, #32
	eor	w8, w25, w8
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	strb	w8, [sp, #47]
	bl	_copy
	add	x23, x23, #1
	add	x8, x20, x23, lsl #4
	cmp	x23, #9
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
	b.ne	.LBB1_4
// %bb.7:
	mov	x8, xzr
	add	x9, sp, #16
.LBB1_8:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x9, x8]
	ldrb	w10, [x24, x10]
	strb	w10, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_8
// %bb.9:
	ldp	q1, q0, [sp]                    // 16-byte Folded Reload
	add	x0, sp, #16
	add	x2, sp, #32
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	tbl	v0.16b, { v0.16b }, v1.16b
	str	q0, [sp, #32]
	bl	_copy
	ldp	w8, w9, [x20, #160]
	ldp	w10, w11, [x20, #168]
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
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldr	d8, [sp, #48]                   // 8-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	ret
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
	.cfi_endproc
                                        // -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,@object // @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.word	0                               // 0x0
	.word	16777216                        // 0x1000000
	.word	33554432                        // 0x2000000
	.word	67108864                        // 0x4000000
	.word	134217728                       // 0x8000000
	.word	268435456                       // 0x10000000
	.word	536870912                       // 0x20000000
	.word	1073741824                      // 0x40000000
	.word	2147483648                      // 0x80000000
	.word	452984832                       // 0x1b000000
	.word	905969664                       // 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,@object                    // @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

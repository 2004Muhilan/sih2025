	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       // -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              // @tc_aes128_set_encrypt_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	add	x0, sp, #28
	mov	x2, #44                         // =0x2c
	adrp	x1, .L__const.tc_aes128_set_encrypt_key.rconst
	add	x1, x1, :lo12:.L__const.tc_aes128_set_encrypt_key.rconst
	bl	memcpy
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_2:
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	str	wzr, [sp, #24]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #4
	b.hs	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #24]
	mov	w10, #4                         // =0x4
	mul	w9, w10, w9
	ldrb	w9, [x8, w9, uxtw]
	ldur	x8, [x29, #-24]
	ldr	w11, [sp, #24]
	mul	w11, w10, w11
	add	w11, w11, #1
	ldrb	w8, [x8, w11, uxtw]
	lsl	w8, w8, #16
	orr	w8, w8, w9, lsl #24
	ldur	x9, [x29, #-24]
	ldr	w11, [sp, #24]
	mul	w11, w10, w11
	add	w11, w11, #2
	ldrb	w9, [x9, w11, uxtw]
	orr	w8, w8, w9, lsl #8
	ldur	x9, [x29, #-24]
	ldr	w11, [sp, #24]
	mul	w10, w10, w11
	add	w10, w10, #3
	ldrb	w9, [x9, w10, uxtw]
	orr	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w10, [sp, #24]
                                        // kill: def $x10 killed $w10
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_6
.LBB0_9:
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #44
	b.hs	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, uxtw #2]
	str	w8, [sp, #20]
	ldr	w8, [sp, #24]
	mov	w10, #4                         // =0x4
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w0, [sp, #20]
	bl	rotword
	lsr	w8, w0, #24
	and	w9, w8, #0xff
	adrp	x8, sbox
	add	x8, x8, :lo12:sbox
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldrb	w8, [x8, w9, uxtw]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	rotword
	ldr	w9, [sp]                        // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	lsr	w10, w0, #16
	and	w10, w10, #0xff
	ldrb	w8, [x8, w10, uxtw]
	lsl	w8, w8, #16
	orr	w8, w8, w9, lsl #24
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	rotword
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	lsr	w10, w0, #8
	and	w10, w10, #0xff
	ldrb	w9, [x9, w10, uxtw]
	orr	w8, w8, w9, lsl #8
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	rotword
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	lsr	w10, w0, #0
	and	w10, w10, #0xff
	ldrb	w9, [x9, w10, uxtw]
	orr	w8, w8, w9
	ldr	w9, [sp, #24]
	mov	w10, #4                         // =0x4
	udiv	w10, w9, w10
	add	x9, sp, #28
	ldr	w9, [x9, w10, uxtw #2]
	eor	w8, w8, w9
	str	w8, [sp, #20]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #24]
	subs	w9, w9, #4
	ldr	w8, [x8, w9, uxtw #2]
	ldr	w9, [sp, #20]
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w10, [sp, #24]
                                        // kill: def $x10 killed $w10
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_10
.LBB0_15:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function rotword
	.type	rotword,@function
rotword:                                // @rotword
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #8
	orr	w0, w8, w9, lsr #24
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	rotword, .Lfunc_end1-rotword
	.cfi_endproc
                                        // -- End function
	.globl	tc_aes_encrypt                  // -- Begin function tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         // @tc_aes_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB2_2
	b	.LBB2_1
.LBB2_1:
	stur	wzr, [x29, #-4]
	b	.LBB2_13
.LBB2_2:
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB2_4
	b	.LBB2_3
.LBB2_3:
	stur	wzr, [x29, #-4]
	b	.LBB2_13
.LBB2_4:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB2_6
	b	.LBB2_5
.LBB2_5:
	stur	wzr, [x29, #-4]
	b	.LBB2_13
.LBB2_6:
	b	.LBB2_7
.LBB2_7:
	b	.LBB2_8
.LBB2_8:
	ldur	x2, [x29, #-24]
	add	x0, sp, #48
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w3, #16                         // =0x10
	mov	w1, w3
	bl	_copy
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	bl	add_round_key
	str	wzr, [sp, #44]
	b	.LBB2_9
.LBB2_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #9
	b.hs	.LBB2_12
	b	.LBB2_10
.LBB2_10:                               //   in Loop: Header=BB2_9 Depth=1
	add	x0, sp, #48
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	sub_bytes
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	shift_rows
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	mix_columns
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #44]
	add	w10, w9, #1
	mov	w9, #4                          // =0x4
	mul	w9, w9, w10
	add	x1, x8, w9, uxtw #2
	bl	add_round_key
	b	.LBB2_11
.LBB2_11:                               //   in Loop: Header=BB2_9 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB2_9
.LBB2_12:
	add	x0, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	sub_bytes
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	shift_rows
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #44]
	mov	w10, #1                         // =0x1
	str	w10, [sp, #20]                  // 4-byte Folded Spill
	add	w10, w9, #1
	mov	w9, #4                          // =0x4
	mul	w9, w9, w10
	add	x1, x8, w9, uxtw #2
	bl	add_round_key
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	mov	w3, #16                         // =0x10
	str	w3, [sp, #4]                    // 4-byte Folded Spill
	mov	w1, w3
	bl	_copy
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, wzr
	bl	_set
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB2_13
.LBB2_13:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	tc_aes_encrypt, .Lfunc_end2-tc_aes_encrypt
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function add_round_key
	.type	add_round_key,@function
add_round_key:                          // @add_round_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	w10, [x8]
	ldr	x9, [sp, #8]
	ldrb	w8, [x9]
	eor	w8, w8, w10, lsr #24
	strb	w8, [x9]
	ldr	x8, [sp]
	ldr	w8, [x8]
	lsr	w8, w8, #16
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #1]
	eor	w8, w8, w10
	strb	w8, [x9, #1]
	ldr	x8, [sp]
	ldr	w8, [x8]
	lsr	w8, w8, #8
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #2]
	eor	w8, w8, w10
	strb	w8, [x9, #2]
	ldr	x8, [sp]
	ldr	w8, [x8]
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #3]
	eor	w8, w8, w10
	strb	w8, [x9, #3]
	ldr	x8, [sp]
	ldr	w10, [x8, #4]
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #4]
	eor	w8, w8, w10, lsr #24
	strb	w8, [x9, #4]
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	lsr	w8, w8, #16
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #5]
	eor	w8, w8, w10
	strb	w8, [x9, #5]
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	lsr	w8, w8, #8
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #6]
	eor	w8, w8, w10
	strb	w8, [x9, #6]
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #7]
	eor	w8, w8, w10
	strb	w8, [x9, #7]
	ldr	x8, [sp]
	ldr	w10, [x8, #8]
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #8]
	eor	w8, w8, w10, lsr #24
	strb	w8, [x9, #8]
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	lsr	w8, w8, #16
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #9]
	eor	w8, w8, w10
	strb	w8, [x9, #9]
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	lsr	w8, w8, #8
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #10]
	eor	w8, w8, w10
	strb	w8, [x9, #10]
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #11]
	eor	w8, w8, w10
	strb	w8, [x9, #11]
	ldr	x8, [sp]
	ldr	w10, [x8, #12]
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #12]
	eor	w8, w8, w10, lsr #24
	strb	w8, [x9, #12]
	ldr	x8, [sp]
	ldr	w8, [x8, #12]
	lsr	w8, w8, #16
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #13]
	eor	w8, w8, w10
	strb	w8, [x9, #13]
	ldr	x8, [sp]
	ldr	w8, [x8, #12]
	lsr	w8, w8, #8
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #14]
	eor	w8, w8, w10
	strb	w8, [x9, #14]
	ldr	x8, [sp]
	ldr	w8, [x8, #12]
	and	w10, w8, #0xff
	ldr	x9, [sp, #8]
	ldrb	w8, [x9, #15]
	eor	w8, w8, w10
	strb	w8, [x9, #15]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end3:
	.size	add_round_key, .Lfunc_end3-add_round_key
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function sub_bytes
	.type	sub_bytes,@function
sub_bytes:                              // @sub_bytes
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB4_1
.LBB4_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #16
	b.hs	.LBB4_4
	b	.LBB4_2
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #4]
                                        // kill: def $x9 killed $w9
	ldrb	w8, [x8, x9]
	mov	w9, w8
	adrp	x8, sbox
	add	x8, x8, :lo12:sbox
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB4_3
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB4_1
.LBB4_4:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end4:
	.size	sub_bytes, .Lfunc_end4-sub_bytes
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function shift_rows
	.type	shift_rows,@function
shift_rows:                             // @shift_rows
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	add	x2, sp, #8
	strb	w8, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #5]
	strb	w8, [sp, #9]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #10]
	strb	w8, [sp, #10]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #15]
	strb	w8, [sp, #11]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #4]
	strb	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #9]
	strb	w8, [sp, #13]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #14]
	strb	w8, [sp, #14]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #3]
	strb	w8, [sp, #15]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #8]
	strb	w8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #13]
	strb	w8, [sp, #17]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #2]
	strb	w8, [sp, #18]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #7]
	strb	w8, [sp, #19]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #12]
	strb	w8, [sp, #20]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #1]
	strb	w8, [sp, #21]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #6]
	strb	w8, [sp, #22]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #11]
	strb	w8, [sp, #23]
	ldur	x0, [x29, #-8]
	mov	w3, #16                         // =0x10
	mov	w1, w3
	bl	_copy
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end5:
	.size	shift_rows, .Lfunc_end5-shift_rows
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function mix_columns
	.type	mix_columns,@function
mix_columns:                            // @mix_columns
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	add	x0, sp, #8
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	mult_row_column
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x0, x9, #4
	add	x1, x8, #4
	bl	mult_row_column
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x0, x9, #8
	add	x1, x8, #8
	bl	mult_row_column
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x0, x9, #12
	add	x1, x8, #12
	bl	mult_row_column
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	w3, #16                         // =0x10
	mov	w1, w3
	bl	_copy
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end6:
	.size	mix_columns, .Lfunc_end6-mix_columns
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        // @mult_row_column
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w9, w0, #0xff
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #1]
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9, #2]
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9, #3]
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #2]
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9, #3]
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #1]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9, #1]
	eor	w8, w8, w9
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #3]
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #2]
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	and	w8, w0, #0xff
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9, #1]
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9, #2]
	eor	w8, w8, w9
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #3]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end7:
	.size	mult_row_column, .Lfunc_end7-mult_row_column
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
	.addrsig_sym rotword
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym sub_bytes
	.addrsig_sym shift_rows
	.addrsig_sym mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym sbox

	.text
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       // -- Begin function tc_aes128_set_decrypt_key
	.p2align	2
	.type	tc_aes128_set_decrypt_key,@function
tc_aes128_set_decrypt_key:              // @tc_aes128_set_decrypt_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	tc_aes128_set_encrypt_key
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cfi_endproc
                                        // -- End function
	.globl	tc_aes_decrypt                  // -- Begin function tc_aes_decrypt
	.p2align	2
	.type	tc_aes_decrypt,@function
tc_aes_decrypt:                         // @tc_aes_decrypt
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
	cbnz	x8, .LBB1_2
	b	.LBB1_1
.LBB1_1:
	stur	wzr, [x29, #-4]
	b	.LBB1_13
.LBB1_2:
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB1_4
	b	.LBB1_3
.LBB1_3:
	stur	wzr, [x29, #-4]
	b	.LBB1_13
.LBB1_4:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB1_6
	b	.LBB1_5
.LBB1_5:
	stur	wzr, [x29, #-4]
	b	.LBB1_13
.LBB1_6:
	b	.LBB1_7
.LBB1_7:
	b	.LBB1_8
.LBB1_8:
	ldur	x2, [x29, #-24]
	add	x0, sp, #48
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w3, #16                         // =0x10
	mov	w1, w3
	bl	_copy
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	add	x1, x8, #160
	bl	add_round_key
	mov	w8, #9                          // =0x9
	str	w8, [sp, #44]
	b	.LBB1_9
.LBB1_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	b.ls	.LBB1_12
	b	.LBB1_10
.LBB1_10:                               //   in Loop: Header=BB1_9 Depth=1
	add	x0, sp, #48
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	inv_shift_rows
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	inv_sub_bytes
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	w10, [sp, #44]
	mov	w9, #4                          // =0x4
	mul	w9, w9, w10
	add	x1, x8, w9, uxtw #2
	bl	add_round_key
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	inv_mix_columns
	b	.LBB1_11
.LBB1_11:                               //   in Loop: Header=BB1_9 Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB1_9
.LBB1_12:
	add	x0, sp, #48
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	inv_shift_rows
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	inv_sub_bytes
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	bl	add_round_key
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	mov	w3, #16                         // =0x10
	str	w3, [sp, #12]                   // 4-byte Folded Spill
	mov	w1, w3
	bl	_copy
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w1, wzr
	bl	_set
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB1_13
.LBB1_13:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
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
.Lfunc_end2:
	.size	add_round_key, .Lfunc_end2-add_round_key
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function inv_shift_rows
	.type	inv_shift_rows,@function
inv_shift_rows:                         // @inv_shift_rows
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
	ldrb	w8, [x8, #13]
	strb	w8, [sp, #9]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #10]
	strb	w8, [sp, #10]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #7]
	strb	w8, [sp, #11]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #4]
	strb	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #1]
	strb	w8, [sp, #13]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #14]
	strb	w8, [sp, #14]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #11]
	strb	w8, [sp, #15]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #8]
	strb	w8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #5]
	strb	w8, [sp, #17]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #2]
	strb	w8, [sp, #18]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #15]
	strb	w8, [sp, #19]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #12]
	strb	w8, [sp, #20]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #9]
	strb	w8, [sp, #21]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #6]
	strb	w8, [sp, #22]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #3]
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
.Lfunc_end3:
	.size	inv_shift_rows, .Lfunc_end3-inv_shift_rows
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function inv_sub_bytes
	.type	inv_sub_bytes,@function
inv_sub_bytes:                          // @inv_sub_bytes
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
	adrp	x8, inv_sbox
	add	x8, x8, :lo12:inv_sbox
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
	.size	inv_sub_bytes, .Lfunc_end4-inv_sub_bytes
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function inv_mix_columns
	.type	inv_mix_columns,@function
inv_mix_columns:                        // @inv_mix_columns
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
.Lfunc_end5:
	.size	inv_mix_columns, .Lfunc_end5-inv_mix_columns
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        // @mult_row_column
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	bl	_double_byte
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	ldr	w9, [sp, #8]                    // 4-byte Folded Reload
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #1]
	eor	w9, w9, w10
	eor	w8, w8, w9
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	bl	_double_byte
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #2]
	eor	w9, w9, w10
	eor	w8, w8, w9
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #3]
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9]
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	eor	w8, w8, w9
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	bl	_double_byte
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	ldr	w9, [sp, #32]                   // 4-byte Folded Reload
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	eor	w8, w8, w9
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	ldr	w9, [sp, #40]                   // 4-byte Folded Reload
	ldr	w8, [sp, #44]                   // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #2]
	eor	w9, w9, w10
	eor	w8, w8, w9
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	bl	_double_byte
	ldr	w9, [sp, #48]                   // 4-byte Folded Reload
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #3]
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #1]
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #56]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	bl	_double_byte
	ldr	w8, [sp, #56]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	eor	w8, w8, w9
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldr	w8, [sp, #60]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #1]
	eor	w9, w9, w10
	eor	w8, w8, w9
	stur	w8, [x29, #-56]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	bl	_double_byte
	ldr	w8, [sp, #64]                   // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	stur	w8, [x29, #-60]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	ldur	w9, [x29, #-60]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-56]                 // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	eor	w8, w8, w9
	stur	w8, [x29, #-48]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	stur	w8, [x29, #-52]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	ldur	w9, [x29, #-52]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-48]                 // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #3]
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #2]
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	stur	w8, [x29, #-44]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8]
	bl	_double_byte
	ldur	w8, [x29, #-44]                 // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	eor	w8, w8, w9
	stur	w8, [x29, #-36]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	stur	w8, [x29, #-40]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #1]
	bl	_double_byte
	bl	_double_byte
	ldur	w9, [x29, #-40]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-36]                 // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #1]
	eor	w9, w9, w10
	eor	w8, w8, w9
	stur	w8, [x29, #-32]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldur	w8, [x29, #-32]                 // 4-byte Folded Reload
	and	w9, w0, #0xff
	ldur	x10, [x29, #-16]
	ldrb	w10, [x10, #2]
	eor	w9, w9, w10
	eor	w8, w8, w9
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w8, w0, #0xff
	stur	w8, [x29, #-28]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	bl	_double_byte
	ldur	w8, [x29, #-28]                 // 4-byte Folded Reload
	and	w9, w0, #0xff
	eor	w8, w8, w9
	stur	w8, [x29, #-24]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrb	w0, [x8, #3]
	bl	_double_byte
	ldur	w9, [x29, #-24]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	and	w10, w0, #0xff
	eor	w9, w9, w10
	eor	w8, w8, w9
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #3]
	.cfi_def_cfa wsp, 144
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end6:
	.size	mult_row_column, .Lfunc_end6-mult_row_column
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
	.addrsig_sym tc_aes128_set_encrypt_key
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym inv_shift_rows
	.addrsig_sym inv_sub_bytes
	.addrsig_sym inv_mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym inv_sbox

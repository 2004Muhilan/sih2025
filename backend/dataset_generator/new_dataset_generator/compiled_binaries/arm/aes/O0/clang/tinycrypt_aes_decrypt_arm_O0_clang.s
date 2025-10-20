	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       @ -- Begin function tc_aes128_set_decrypt_key
	.p2align	2
	.type	tc_aes128_set_decrypt_key,%function
	.code	32                              @ @tc_aes128_set_decrypt_key
tc_aes128_set_decrypt_key:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	tc_aes128_set_encrypt_key
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	tc_aes_decrypt                  @ -- Begin function tc_aes_decrypt
	.p2align	2
	.type	tc_aes_decrypt,%function
	.code	32                              @ @tc_aes_decrypt
tc_aes_decrypt:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#40
	sub	sp, sp, #40
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-8]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB1_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_13
.LBB1_2:
	ldr	r0, [r11, #-12]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB1_4
@ %bb.3:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_13
.LBB1_4:
	ldr	r0, [r11, #-16]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB1_6
@ %bb.5:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_13
.LBB1_6:
	b	.LBB1_7
.LBB1_7:
	b	.LBB1_8
.LBB1_8:
	add	r0, sp, #8
	ldr	r2, [r11, #-12]
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	add	r0, sp, #8
	ldr	r1, [r11, #-16]
	add	r1, r1, #160
	bl	add_round_key
	movw	r0, #9
	str	r0, [sp, #4]
.LBB1_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bls	.LBB1_12
@ %bb.10:                               @   in Loop: Header=BB1_9 Depth=1
	add	r0, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
	bl	inv_shift_rows
	ldr	r0, [sp]                        @ 4-byte Reload
	bl	inv_sub_bytes
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #4]
	lsl	r3, r2, #2
	add	r1, r1, r2, lsl #4
	bl	add_round_key
	add	r0, sp, #8
	bl	inv_mix_columns
@ %bb.11:                               @   in Loop: Header=BB1_9 Depth=1
	ldr	r0, [sp, #4]
	mvn	r1, #0
	add	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB1_9
.LBB1_12:
	add	r0, sp, #8
	bl	inv_shift_rows
	add	r0, sp, #8
	bl	inv_sub_bytes
	add	r0, sp, #8
	ldr	r1, [r11, #-16]
	bl	add_round_key
	ldr	r0, [r11, #-8]
	add	r2, sp, #8
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	add	r0, sp, #8
	movw	r1, #0
	movw	r2, #16
	and	r1, r1, #255
	bl	_set
	movw	r0, #1
	str	r0, [r11, #-4]
.LBB1_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function add_round_key
	.type	add_round_key,%function
	.code	32                              @ @add_round_key
add_round_key:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp]
	ldr	r0, [r0]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
	ldr	r0, [sp]
	ldr	r0, [r0]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #1]
	eor	r0, r0, r2
	strb	r0, [r1, #1]
	ldr	r0, [sp]
	ldr	r0, [r0]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #2]
	eor	r0, r0, r2
	strb	r0, [r1, #2]
	ldr	r0, [sp]
	ldr	r0, [r0]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #3]
	eor	r0, r0, r2
	strb	r0, [r1, #3]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #4]
	eor	r0, r0, r2
	strb	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #5]
	eor	r0, r0, r2
	strb	r0, [r1, #5]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #6]
	eor	r0, r0, r2
	strb	r0, [r1, #6]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #7]
	eor	r0, r0, r2
	strb	r0, [r1, #7]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #8]
	eor	r0, r0, r2
	strb	r0, [r1, #8]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #9]
	eor	r0, r0, r2
	strb	r0, [r1, #9]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #10]
	eor	r0, r0, r2
	strb	r0, [r1, #10]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #11]
	eor	r0, r0, r2
	strb	r0, [r1, #11]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #12]
	eor	r0, r0, r2
	strb	r0, [r1, #12]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #13]
	eor	r0, r0, r2
	strb	r0, [r1, #13]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #14]
	eor	r0, r0, r2
	strb	r0, [r1, #14]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #15]
	eor	r0, r0, r2
	strb	r0, [r1, #15]
	add	sp, sp, #8
	bx	lr
.Lfunc_end2:
	.size	add_round_key, .Lfunc_end2-add_round_key
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function inv_shift_rows
	.type	inv_shift_rows,%function
	.code	32                              @ @inv_shift_rows
inv_shift_rows:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	strb	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #13]
	strb	r0, [sp, #5]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #10]
	strb	r0, [sp, #6]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #7]
	strb	r0, [sp, #7]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #4]
	strb	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #1]
	strb	r0, [sp, #9]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #14]
	strb	r0, [sp, #10]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #11]
	strb	r0, [sp, #11]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #8]
	strb	r0, [sp, #12]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #5]
	strb	r0, [sp, #13]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #2]
	strb	r0, [sp, #14]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #15]
	strb	r0, [sp, #15]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #12]
	strb	r0, [sp, #16]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #9]
	strb	r0, [sp, #17]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #6]
	strb	r0, [sp, #18]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #3]
	strb	r0, [sp, #19]
	ldr	r0, [r11, #-4]
	add	r2, sp, #4
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	inv_shift_rows, .Lfunc_end3-inv_shift_rows
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function inv_sub_bytes
	.type	inv_sub_bytes,%function
	.code	32                              @ @inv_sub_bytes
inv_sub_bytes:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	movw	r0, #0
	str	r0, [sp]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #16
	bhs	.LBB4_4
@ %bb.2:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1
	ldrb	r1, [r0]
	ldr	r0, .LCPI4_0
.LPC4_0:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB4_1
.LBB4_4:
	add	sp, sp, #8
	bx	lr
	.p2align	2
@ %bb.5:
.LCPI4_0:
	.long	inv_sbox-(.LPC4_0+8)
.Lfunc_end4:
	.size	inv_sub_bytes, .Lfunc_end4-inv_sub_bytes
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function inv_mix_columns
	.type	inv_mix_columns,%function
	.code	32                              @ @inv_mix_columns
inv_mix_columns:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	add	r0, sp, #4
	ldr	r1, [r11, #-4]
	bl	mult_row_column
	add	r0, sp, #4
	add	r0, r0, #4
	ldr	r1, [r11, #-4]
	add	r1, r1, #4
	bl	mult_row_column
	add	r0, sp, #4
	add	r0, r0, #8
	ldr	r1, [r11, #-4]
	add	r1, r1, #8
	bl	mult_row_column
	add	r0, sp, #4
	add	r0, r0, #12
	ldr	r1, [r11, #-4]
	add	r1, r1, #12
	bl	mult_row_column
	ldr	r0, [r11, #-4]
	add	r2, sp, #4
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end5:
	.size	inv_mix_columns, .Lfunc_end5-inv_mix_columns
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function mult_row_column
	.type	mult_row_column,%function
	.code	32                              @ @mult_row_column
mult_row_column:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#120
	sub	sp, sp, #120
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #1]
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #2]
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	and	r1, r1, #255
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #3]
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1]
	eor	r0, r0, r1
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #2]
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #3]
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #1]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1]
	eor	r0, r0, r1
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	and	r1, r1, #255
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #1]
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [r11, #-48]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [r11, #-56]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [r11, #-56]                 @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [r11, #-52]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [r11, #-48]                 @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [r11, #-40]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [r11, #-44]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	ldr	r1, [r11, #-44]                 @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [r11, #-40]                 @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #3]
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #2]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [r11, #-36]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1]
	eor	r0, r0, r1
	str	r0, [r11, #-28]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [r11, #-32]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	ldr	r1, [r11, #-32]                 @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [r11, #-28]                 @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #1]
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [r11, #-24]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	and	r1, r1, #255
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #2]
	eor	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [r11, #-20]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	and	r0, r0, #255
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [r11, #-16]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	and	r2, r2, #255
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #3]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end6:
	.size	mult_row_column, .Lfunc_end6-mult_row_column
	.cantunwind
	.fnend
                                        @ -- End function
	.type	inv_sbox,%object                @ @inv_sbox
	.section	.rodata,"a",%progbits
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
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
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals

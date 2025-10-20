	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	arm1022e
	.eabi_attribute	6, 4	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"tinycrypt_hmac_prng.c"
	.globl	tc_hmac_prng_init               @ -- Begin function tc_hmac_prng_init
	.p2align	2
	.type	tc_hmac_prng_init,%function
	.code	32                              @ @tc_hmac_prng_init
tc_hmac_prng_init:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	r0, [sp, #16]
	cmn	r0, #1
	bls	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	r0, [r11, #-8]
	add	r0, r0, #240
	mov	r1, #0
	str	r1, [sp, #8]                    @ 4-byte Spill
	mov	r2, #32
	str	r2, [sp, #4]                    @ 4-byte Spill
	bl	_set
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [r11, #-8]
	add	r0, r0, #272
	mov	r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	bl	_set
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	ldr	r2, [sp, #16]
	mov	r12, sp
	str	r3, [r12]
	bl	update
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [r11, #-8]
	str	r1, [r2, #304]
	str	r0, [r11, #-4]
	b	.LBB0_5
.LBB0_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	tc_hmac_prng_init, .Lfunc_end0-tc_hmac_prng_init
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function update
	.type	update,%function
	.code	32                              @ @update
update:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	mov	r0, #0
	strb	r0, [r11, #-17]
	mov	r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	strb	r0, [r11, #-18]
	ldr	r0, [r11, #-4]
	add	r1, r0, #240
	mov	r2, #32
	str	r2, [sp, #12]                   @ 4-byte Spill
	bl	tc_hmac_set_key
	ldr	r0, [r11, #-4]
	bl	tc_hmac_init
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [r11, #-4]
	add	r1, r0, #272
	bl	tc_hmac_update
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [r11, #-4]
	sub	r1, r11, #17
	bl	tc_hmac_update
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_1
.LBB1_1:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_2
.LBB1_2:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	bl	tc_hmac_update
	b	.LBB1_3
.LBB1_3:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_4
.LBB1_4:
	ldr	r0, [r11, #8]
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_5
.LBB1_5:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #8]
	bl	tc_hmac_update
	b	.LBB1_6
.LBB1_6:
	ldr	r2, [r11, #-4]
	add	r0, r2, #240
	mov	r1, #32
	str	r1, [sp, #8]                    @ 4-byte Spill
	bl	tc_hmac_final
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-4]
	add	r1, r0, #240
	bl	tc_hmac_set_key
	ldr	r0, [r11, #-4]
	bl	tc_hmac_init
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-4]
	add	r1, r0, #272
	bl	tc_hmac_update
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]
	add	r0, r2, #272
	bl	tc_hmac_final
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_7
.LBB1_7:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	bne	.LBB1_9
	b	.LBB1_8
.LBB1_8:
	b	.LBB1_13
.LBB1_9:
	ldr	r0, [r11, #-4]
	add	r1, r0, #240
	mov	r2, #32
	str	r2, [sp, #4]                    @ 4-byte Spill
	bl	tc_hmac_set_key
	ldr	r0, [r11, #-4]
	bl	tc_hmac_init
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [r11, #-4]
	add	r1, r0, #272
	bl	tc_hmac_update
	ldr	r0, [r11, #-4]
	sub	r1, r11, #18
	mov	r2, #1
	bl	tc_hmac_update
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	bl	tc_hmac_update
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB1_12
	b	.LBB1_10
.LBB1_10:
	ldr	r0, [r11, #8]
	cmp	r0, #0
	beq	.LBB1_12
	b	.LBB1_11
.LBB1_11:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #8]
	bl	tc_hmac_update
	b	.LBB1_12
.LBB1_12:
	ldr	r2, [r11, #-4]
	add	r0, r2, #240
	mov	r1, #32
	str	r1, [sp]                        @ 4-byte Spill
	bl	tc_hmac_final
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [r11, #-4]
	add	r1, r0, #240
	bl	tc_hmac_set_key
	ldr	r0, [r11, #-4]
	bl	tc_hmac_init
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [r11, #-4]
	add	r1, r0, #272
	bl	tc_hmac_update
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [r11, #-4]
	add	r0, r2, #272
	bl	tc_hmac_final
	b	.LBB1_13
.LBB1_13:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	update, .Lfunc_end1-update
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	tc_hmac_prng_reseed             @ -- Begin function tc_hmac_prng_reseed
	.p2align	2
	.type	tc_hmac_prng_reseed,%function
	.code	32                              @ @tc_hmac_prng_reseed
tc_hmac_prng_reseed:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB2_4
	b	.LBB2_1
.LBB2_1:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB2_4
	b	.LBB2_2
.LBB2_2:
	ldr	r0, [sp, #8]
	cmp	r0, #32
	blo	.LBB2_4
	b	.LBB2_3
.LBB2_3:
	ldr	r0, [sp, #8]
	cmn	r0, #1
	bls	.LBB2_5
	b	.LBB2_4
.LBB2_4:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_5:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB2_11
	b	.LBB2_6
.LBB2_6:
	ldr	r0, [r11, #8]
	cmp	r0, #0
	beq	.LBB2_8
	b	.LBB2_7
.LBB2_7:
	ldr	r0, [r11, #8]
	cmn	r0, #1
	bls	.LBB2_9
	b	.LBB2_8
.LBB2_8:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_9:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	ldr	r12, [r11, #8]
	mov	lr, sp
	str	r12, [lr]
	bl	update
	b	.LBB2_10
.LBB2_10:
	b	.LBB2_12
.LBB2_11:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	mov	r12, sp
	mov	r3, #0
	str	r3, [r12]
	bl	update
	b	.LBB2_12
.LBB2_12:
	ldr	r1, [r11, #-8]
	mvn	r0, #0
	str	r0, [r1, #304]
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	tc_hmac_prng_reseed, .Lfunc_end2-tc_hmac_prng_reseed
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	tc_hmac_prng_generate           @ -- Begin function tc_hmac_prng_generate
	.p2align	2
	.type	tc_hmac_prng_generate,%function
	.code	32                              @ @tc_hmac_prng_generate
tc_hmac_prng_generate:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB3_4
	b	.LBB3_1
.LBB3_1:
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB3_4
	b	.LBB3_2
.LBB3_2:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB3_4
	b	.LBB3_3
.LBB3_3:
	ldr	r0, [r11, #-12]
	cmp	r0, #524288
	bls	.LBB3_5
	b	.LBB3_4
.LBB3_4:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_18
.LBB3_5:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #304]
	cmp	r0, #0
	bne	.LBB3_7
	b	.LBB3_6
.LBB3_6:
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_18
.LBB3_7:
	b	.LBB3_8
.LBB3_8:
	ldr	r1, [r11, #-16]
	ldr	r0, [r1, #304]
	sub	r0, r0, #1
	str	r0, [r1, #304]
	b	.LBB3_9
.LBB3_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB3_17
	b	.LBB3_10
.LBB3_10:                               @   in Loop: Header=BB3_9 Depth=1
	ldr	r0, [r11, #-16]
	add	r1, r0, #240
	mov	r2, #32
	str	r2, [sp, #16]                   @ 4-byte Spill
	bl	tc_hmac_set_key
	ldr	r0, [r11, #-16]
	bl	tc_hmac_init
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [r11, #-16]
	add	r1, r0, #272
	bl	tc_hmac_update
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [r11, #-16]
	add	r0, r2, #272
	bl	tc_hmac_final
	ldr	r0, [r11, #-12]
	cmp	r0, #31
	bhi	.LBB3_12
	b	.LBB3_11
.LBB3_11:                               @   in Loop: Header=BB3_9 Depth=1
	ldr	r0, [r11, #-12]
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB3_13
.LBB3_12:                               @   in Loop: Header=BB3_9 Depth=1
	mov	r0, #32
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB3_13
.LBB3_13:                               @   in Loop: Header=BB3_9 Depth=1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r3, [sp, #20]
	ldr	r1, [r11, #-16]
	add	r2, r1, #272
	mov	r1, r3
	bl	_copy
	ldr	r1, [sp, #20]
	ldr	r0, [r11, #-8]
	add	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-12]
	cmp	r0, #33
	blo	.LBB3_15
	b	.LBB3_14
.LBB3_14:                               @   in Loop: Header=BB3_9 Depth=1
	ldr	r0, [r11, #-12]
	sub	r0, r0, #32
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB3_16
.LBB3_15:                               @   in Loop: Header=BB3_9 Depth=1
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB3_16
.LBB3_16:                               @   in Loop: Header=BB3_9 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [r11, #-12]
	b	.LBB3_9
.LBB3_17:
	ldr	r0, [r11, #-16]
	mov	r1, sp
	mov	r3, #0
	str	r3, [r1]
	mov	r1, r3
	mov	r2, r3
	bl	update
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB3_18
.LBB3_18:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	tc_hmac_prng_generate, .Lfunc_end3-tc_hmac_prng_generate
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym _set
	.addrsig_sym update
	.addrsig_sym tc_hmac_set_key
	.addrsig_sym tc_hmac_init
	.addrsig_sym tc_hmac_update
	.addrsig_sym tc_hmac_final
	.addrsig_sym _copy

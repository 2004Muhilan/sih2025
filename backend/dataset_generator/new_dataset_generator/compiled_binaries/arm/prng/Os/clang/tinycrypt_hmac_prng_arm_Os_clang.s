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
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	cmp	r0, #0
	mov	r7, #0
	movne	r6, r1
	cmpne	r1, #0
	beq	.LBB0_2
@ %bb.1:
	mov	r5, r2
	mov	r4, r0
	add	r0, r0, #240
	mov	r1, #0
	mov	r2, #32
	mov	r8, #0
	bl	_set
	add	r0, r4, #272
	mov	r1, #1
	mov	r2, #32
	mov	r7, #1
	bl	_set
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r8, [sp]
	bl	update
	str	r8, [r4, #304]
.LBB0_2:
	mov	r0, r7
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, pc}
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
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, #0
	mov	r8, r2
	mov	r7, r1
	mov	r2, #32
	mov	r9, r3
	strb	r0, [sp, #3]
	mov	r0, #1
	add	r6, r4, #240
	strb	r0, [sp, #2]
	mov	r0, r4
	mov	r1, r6
	bl	tc_hmac_set_key
	mov	r0, r4
	bl	tc_hmac_init
	add	r5, r4, #272
	mov	r0, r4
	mov	r2, #32
	mov	r1, r5
	bl	tc_hmac_update
	add	r1, sp, #3
	mov	r0, r4
	mov	r2, #1
	bl	tc_hmac_update
	ldr	r10, [sp, #40]
	cmp	r7, #0
	cmpne	r8, #0
	beq	.LBB1_2
@ %bb.1:
	mov	r0, r4
	mov	r1, r7
	mov	r2, r8
	bl	tc_hmac_update
.LBB1_2:
	cmp	r10, #0
	mov	r0, r10
	mov	r1, r9
	movne	r0, #1
	cmp	r9, #0
	movne	r1, #1
	and	r11, r1, r0
	cmp	r11, #1
	bne	.LBB1_4
@ %bb.3:
	mov	r0, r4
	mov	r1, r9
	mov	r2, r10
	bl	tc_hmac_update
.LBB1_4:
	mov	r0, r6
	mov	r1, #32
	mov	r2, r4
	bl	tc_hmac_final
	mov	r0, r4
	mov	r1, r6
	mov	r2, #32
	bl	tc_hmac_set_key
	mov	r0, r4
	bl	tc_hmac_init
	mov	r0, r4
	mov	r1, r5
	mov	r2, #32
	bl	tc_hmac_update
	mov	r0, r5
	mov	r1, #32
	mov	r2, r4
	bl	tc_hmac_final
	cmp	r7, #0
	cmpne	r8, #0
	beq	.LBB1_8
@ %bb.5:
	mov	r0, r4
	mov	r1, r6
	mov	r2, #32
	bl	tc_hmac_set_key
	mov	r0, r4
	bl	tc_hmac_init
	mov	r0, r4
	mov	r1, r5
	mov	r2, #32
	bl	tc_hmac_update
	add	r1, sp, #2
	mov	r0, r4
	mov	r2, #1
	bl	tc_hmac_update
	mov	r0, r4
	mov	r1, r7
	mov	r2, r8
	bl	tc_hmac_update
	cmp	r11, #0
	beq	.LBB1_7
@ %bb.6:
	mov	r0, r4
	mov	r1, r9
	mov	r2, r10
	bl	tc_hmac_update
.LBB1_7:
	mov	r0, r6
	mov	r1, #32
	mov	r2, r4
	bl	tc_hmac_final
	mov	r0, r4
	mov	r1, r6
	mov	r2, #32
	bl	tc_hmac_set_key
	mov	r0, r4
	bl	tc_hmac_init
	mov	r0, r4
	mov	r1, r5
	mov	r2, #32
	bl	tc_hmac_update
	mov	r0, r5
	mov	r1, #32
	mov	r2, r4
	bl	tc_hmac_final
.LBB1_8:
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
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
	push	{r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	mov	r0, #0
	cmp	r4, #0
	cmpne	r1, #0
	bne	.LBB2_2
.LBB2_1:
	add	sp, sp, #8
	pop	{r4, pc}
.LBB2_2:
	cmp	r2, #32
	blo	.LBB2_1
@ %bb.3:
	cmp	r3, #0
	beq	.LBB2_6
@ %bb.4:
	ldr	r12, [sp, #16]
	cmp	r12, #0
	beq	.LBB2_1
@ %bb.5:
	str	r12, [sp]
	mov	r0, r4
	b	.LBB2_7
.LBB2_6:
	str	r0, [sp]
	mov	r0, r4
	mov	r3, #0
.LBB2_7:
	bl	update
	mvn	r0, #0
	str	r0, [r4, #304]
	mov	r0, #1
	b	.LBB2_1
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
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	sub	sp, sp, #8
	mov	r6, r0
	mvn	r0, #524288
	mov	r5, r1
	add	r1, r1, r0
	mov	r0, #0
	cmn	r1, #524288
	blo	.LBB3_2
@ %bb.1:
	cmp	r6, #0
	movne	r4, r2
	cmpne	r2, #0
	bne	.LBB3_3
.LBB3_2:
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB3_3:
	ldr	r0, [r4, #304]
	cmp	r0, #0
	beq	.LBB3_7
@ %bb.4:
	sub	r0, r0, #1
	add	r9, r4, #272
	add	r8, r4, #240
	str	r0, [r4, #304]
.LBB3_5:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r8
	mov	r2, #32
	bl	tc_hmac_set_key
	mov	r0, r4
	bl	tc_hmac_init
	mov	r0, r4
	mov	r1, r9
	mov	r2, #32
	bl	tc_hmac_update
	mov	r0, r9
	mov	r1, #32
	mov	r2, r4
	bl	tc_hmac_final
	cmp	r5, #32
	mov	r7, #32
	mov	r0, r6
	mov	r2, r9
	movlo	r7, r5
	mov	r1, r7
	mov	r3, r7
	bl	_copy
	add	r6, r6, r7
	subs	r5, r5, #32
	bhi	.LBB3_5
@ %bb.6:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp]
	mov	r0, r4
	bl	update
	mov	r0, #1
	b	.LBB3_2
.LBB3_7:
	mvn	r0, #0
	b	.LBB3_2
.Lfunc_end3:
	.size	tc_hmac_prng_generate, .Lfunc_end3-tc_hmac_prng_generate
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig

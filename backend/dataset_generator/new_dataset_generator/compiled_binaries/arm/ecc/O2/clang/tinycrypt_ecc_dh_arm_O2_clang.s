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
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            @ -- Begin function uECC_make_key_with_d
	.p2align	2
	.type	uECC_make_key_with_d,%function
	.code	32                              @ @uECC_make_key_with_d
uECC_make_key_with_d:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.pad	#104
	sub	sp, sp, #104
	mov	r5, r3
	mov	r9, r1
	add	r8, sp, #72
	ldm	r2!, {r1, r3, r4, r7}
	mov	r6, r0
	mov	r0, r8
	stm	r0!, {r1, r3, r4, r7}
	ldm	r2, {r1, r3, r4, r7}
	mov	r2, r5
	stm	r0, {r1, r3, r4, r7}
	add	r7, sp, #8
	mov	r1, r8
	mov	r0, r7
	bl	EccPoint_compute_public_key
	cmp	r0, #0
	beq	.LBB0_2
@ %bb.1:
	ldrsh	r0, [r5, #2]
	mov	r2, r8
	add	r0, r0, #7
	add	r0, r0, r0, lsr #29
	asr	r1, r0, #3
	mov	r0, r9
	bl	uECC_vli_nativeToBytes
	ldrsb	r1, [r5, #1]
	mov	r0, r6
	mov	r2, r7
	bl	uECC_vli_nativeToBytes
	ldrsb	r2, [r5]
	ldrsb	r1, [r5, #1]
	add	r0, r6, r1
	add	r2, r7, r2, lsl #2
	bl	uECC_vli_nativeToBytes
	mov	r0, #0
	str	r0, [sp, #100]
	str	r0, [sp, #96]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	str	r0, [sp, #84]
	str	r0, [sp, #80]
	str	r0, [sp, #76]
	str	r0, [sp, #72]
	add	r0, sp, #4
	str	r8, [sp, #4]
	@APP
	@NO_APP
	mov	r0, #1
	add	sp, sp, #104
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB0_2:
	mov	r0, #0
	add	sp, sp, #104
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_make_key                   @ -- Begin function uECC_make_key
	.p2align	2
	.type	uECC_make_key,%function
	.code	32                              @ @uECC_make_key
uECC_make_key:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#172
	sub	sp, sp, #172
	mov	r5, r2
	str	r1, [sp]                        @ 4-byte Spill
	mov	r9, r0
	add	r6, r2, #36
	mov	r8, #64
	add	r7, sp, #108
	add	r11, sp, #72
	add	r10, sp, #8
	mov	r4, #0
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	bl	uECC_get_rng
	cmp	r0, #0
	beq	.LBB1_6
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	mov	r2, r0
	mov	r0, r7
	mov	r1, #64
	blx	r2
	cmp	r0, #0
	beq	.LBB1_6
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldrsh	r0, [r5, #2]
	mov	r1, r7
	mov	r2, r6
	add	r0, r0, #31
	add	r0, r0, r0, lsr #27
	sbfx	r3, r0, #5, #8
	mov	r0, r11
	bl	uECC_vli_mmod
	mov	r0, r10
	mov	r1, r11
	mov	r2, r5
	bl	EccPoint_compute_public_key
	cmp	r0, #0
	bne	.LBB1_5
@ %bb.4:                                @   in Loop: Header=BB1_1 Depth=1
	subs	r8, r8, #1
	bne	.LBB1_1
	b	.LBB1_6
.LBB1_5:
	ldrsh	r0, [r5, #2]
	mov	r2, r11
	add	r0, r0, #7
	add	r0, r0, r0, lsr #29
	asr	r1, r0, #3
	ldr	r0, [sp]                        @ 4-byte Reload
	bl	uECC_vli_nativeToBytes
	ldrsb	r1, [r5, #1]
	mov	r0, r9
	mov	r2, r10
	bl	uECC_vli_nativeToBytes
	ldrsb	r2, [r5]
	ldrsb	r1, [r5, #1]
	add	r0, r9, r1
	add	r2, r10, r2, lsl #2
	bl	uECC_vli_nativeToBytes
	mov	r0, #0
	mov	r4, #1
	str	r0, [sp, #100]
	str	r0, [sp, #96]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	str	r0, [sp, #84]
	str	r0, [sp, #80]
	str	r0, [sp, #76]
	str	r0, [sp, #72]
	add	r0, sp, #4
	str	r11, [sp, #4]
	@APP
	@NO_APP
.LBB1_6:
	mov	r0, r4
	add	sp, sp, #172
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end1:
	.size	uECC_make_key, .Lfunc_end1-uECC_make_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_shared_secret              @ -- Begin function uECC_shared_secret
	.p2align	2
	.type	uECC_shared_secret,%function
	.code	32                              @ @uECC_shared_secret
uECC_shared_secret:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#164
	sub	sp, sp, #164
	mov	r4, r0
	ldrsh	r0, [r3, #2]
	add	r10, sp, #64
	mov	r9, r2
	add	r0, r0, #7
	add	r8, sp, #32
	mov	r11, r3
	ldrsb	r5, [r3]
	add	r0, r0, r0, lsr #29
	ldrsb	r7, [r3, #1]
	str	r8, [sp, #28]
	asr	r2, r0, #3
	mov	r0, r10
	str	r10, [sp, #24]
	bl	uECC_vli_bytesToNative
	add	r6, sp, #100
	mov	r1, r4
	mov	r2, r7
	mov	r0, r6
	bl	uECC_vli_bytesToNative
	add	r1, r4, r7
	add	r0, r6, r5, lsl #2
	mov	r2, r7
	bl	uECC_vli_bytesToNative
	mov	r0, r10
	mov	r1, r10
	mov	r2, r8
	mov	r3, r11
	bl	regularize_k
	mov	r4, r0
	bl	uECC_get_rng
	cmp	r0, #0
	beq	.LBB2_3
@ %bb.1:
	add	r0, sp, #24
	add	r1, r11, #4
	mov	r2, r5
	ldr	r6, [r0, r4, lsl #2]
	mov	r0, r6
	bl	uECC_generate_random_int
	cmp	r0, #0
	bne	.LBB2_4
@ %bb.2:
	mov	r0, #0
	b	.LBB2_5
.LBB2_3:
	mov	r6, #0
.LBB2_4:
	clz	r2, r4
	add	r0, sp, #24
	ldrh	r1, [r11, #2]
	add	r4, sp, #100
	lsr	r2, r2, #5
	mov	r3, r6
	orr	r0, r0, r2, lsl #2
	ldr	r2, [r0]
	add	r0, r1, #1
	mov	r1, r4
	sxth	r0, r0
	stm	sp, {r0, r11}
	mov	r0, r4
	bl	EccPoint_mult
	mov	r0, r9
	mov	r1, r7
	mov	r2, r4
	bl	uECC_vli_nativeToBytes
	mov	r0, r4
	mov	r1, r11
	bl	EccPoint_isZero
	clz	r0, r0
	lsr	r0, r0, #5
.LBB2_5:
	add	r1, sp, #24
	str	r1, [sp, #20]
	mov	r1, #0
	add	r2, sp, #20
	str	r1, [sp, #28]
	str	r1, [sp, #24]
	@APP
	@NO_APP
	str	r1, [sp, #60]
	add	r2, sp, #16
	str	r1, [sp, #56]
	str	r1, [sp, #52]
	str	r1, [sp, #48]
	str	r1, [sp, #44]
	str	r1, [sp, #40]
	str	r1, [sp, #36]
	str	r1, [sp, #32]
	str	r8, [sp, #16]
	@APP
	@NO_APP
	str	r1, [sp, #92]
	str	r1, [sp, #88]
	str	r1, [sp, #84]
	str	r1, [sp, #80]
	str	r1, [sp, #76]
	str	r1, [sp, #72]
	str	r1, [sp, #68]
	str	r1, [sp, #64]
	add	r1, sp, #12
	str	r10, [sp, #12]
	@APP
	@NO_APP
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	uECC_shared_secret, .Lfunc_end2-uECC_shared_secret
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

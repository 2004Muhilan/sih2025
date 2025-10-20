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
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                @ -- Begin function uECC_sign_with_k
	.p2align	2
	.type	uECC_sign_with_k,%function
	.code	32                              @ @uECC_sign_with_k
uECC_sign_with_k:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#164
	sub	sp, sp, #164
	ldr	r5, [sp, #204]
	mov	r7, r0
	add	r0, sp, #100
	str	r0, [sp, #96]
	add	r0, sp, #132
	str	r0, [sp, #92]
	ldrsb	r9, [r5]
	mov	r6, r1
	mov	r0, r3
	mov	r11, r3
	mov	r4, r2
	ldrsh	r8, [r5, #2]
	mov	r1, r9
	bl	uECC_vli_isZero
	mov	r10, #0
	cmp	r0, #0
	beq	.LBB0_2
.LBB0_1:
	mov	r0, r10
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB0_2:
	add	r0, r8, #31
	str	r6, [sp, #20]                   @ 4-byte Spill
	add	r6, r5, #36
	str	r4, [sp, #24]                   @ 4-byte Spill
	add	r0, r0, r0, lsr #27
	mov	r1, r11
	str	r7, [sp, #16]                   @ 4-byte Spill
	asr	r0, r0, #5
	sxtb	r4, r0
	mov	r0, r6
	mov	r2, r4
	bl	uECC_vli_cmp
	cmp	r0, #1
	bne	.LBB0_1
@ %bb.3:
	str	r4, [sp, #12]                   @ 4-byte Spill
	add	r4, sp, #100
	add	r1, sp, #132
	mov	r0, r11
	mov	r2, r4
	mov	r3, r5
	str	r6, [sp, #8]                    @ 4-byte Spill
	uxth	r6, r8
	bl	regularize_k
	clz	r0, r0
	add	r1, sp, #92
	mov	r3, #0
	mov	r10, #0
	lsr	r0, r0, #5
	ldr	r2, [r1, r0, lsl #2]
	add	r0, r6, #1
	add	r1, r5, #68
	sxth	r8, r0
	str	r8, [sp]
	add	r8, sp, #28
	str	r5, [sp, #4]
	mov	r0, r8
	bl	EccPoint_mult
	mov	r0, r8
	mov	r1, r9
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB0_1
@ %bb.4:
	mov	r5, r4
	bl	uECC_get_rng
	cmp	r0, #0
	beq	.LBB0_6
@ %bb.5:
	ldr	r8, [sp, #8]                    @ 4-byte Reload
	add	r0, sp, #132
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	mov	r1, r8
	mov	r2, r7
	bl	uECC_generate_random_int
	ldr	r6, [sp, #204]
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_1
.LBB0_6:
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	add	r0, sp, #132
	mov	r1, r7
	bl	uECC_vli_clear
	mov	r0, #1
	ldr	r8, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #132]
	ldr	r6, [sp, #204]
.LBB0_7:
	add	r4, sp, #132
	mov	r0, r11
	mov	r1, r11
	mov	r3, r8
	mov	r2, r4
	ldr	r10, [sp, #200]
	str	r7, [sp]
	bl	uECC_vli_modMult
	mov	r0, r11
	mov	r1, r11
	mov	r2, r8
	mov	r3, r7
	bl	uECC_vli_modInv
	mov	r0, r11
	mov	r1, r11
	mov	r2, r4
	mov	r3, r8
	str	r7, [sp]
	bl	uECC_vli_modMult
	mov	r7, r8
	ldrsb	r1, [r6, #1]
	mov	r8, r6
	add	r6, sp, #28
	mov	r0, r10
	mov	r2, r6
	bl	uECC_vli_nativeToBytes
	ldrsh	r0, [r8, #2]
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r0, r0, #7
	add	r0, r0, r0, lsr #29
	asr	r2, r0, #3
	mov	r0, r4
	bl	uECC_vli_bytesToNative
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r10, #0
	mov	r1, r6
	mov	r2, r9
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	add	r0, r5, r0, lsl #2
	str	r10, [r0, #-4]
	mov	r0, r5
	bl	uECC_vli_set
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r7
	str	r6, [sp]
	bl	uECC_vli_modMult
	ldrsh	r5, [r8, #2]
	add	r0, r5, #31
	add	r9, r0, r0, lsr #27
	mov	r0, r4
	sbfx	r1, r9, #5, #8
	bl	uECC_vli_clear
	add	r0, r5, #7
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, r0, lsr #29
	cmp	r6, r0, asr #3
	asrhi	r6, r0, #3
	mov	r0, r4
	mov	r2, r6
	bl	uECC_vli_bytesToNative
	ldrsh	r1, [r8, #2]
	cmp	r1, r6, lsl #3
	bhs	.LBB0_13
@ %bb.8:
	asr	r0, r9, #5
	cmp	r5, #1
	blt	.LBB0_11
@ %bb.9:
	lsl	r2, r6, #3
	sub	r1, r2, r1
	add	r2, r4, r0, lsl #2
	rsb	r3, r1, #32
	mov	r7, #0
.LBB0_10:                               @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r2, #-4]!
	cmp	r2, r4
	orr	r7, r7, r5, lsr r1
	str	r7, [r2]
	lsl	r7, r5, r3
	bhi	.LBB0_10
.LBB0_11:
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	sxtb	r5, r0
	add	r1, sp, #132
	mov	r2, r5
	mov	r0, r7
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	beq	.LBB0_13
@ %bb.12:
	add	r0, sp, #132
	mov	r2, r7
	mov	r3, r5
	mov	r1, r0
	bl	uECC_vli_sub
.LBB0_13:
	add	r5, sp, #100
	add	r1, sp, #132
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	mov	r3, r7
	mov	r0, r5
	mov	r2, r5
	str	r4, [sp]
	bl	uECC_vli_modAdd
	mov	r0, r5
	mov	r1, r5
	mov	r2, r11
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modMult
	mov	r0, r5
	mov	r1, r4
	bl	uECC_vli_numBits
	ldr	r1, [sp, #204]
	ldrsb	r1, [r1, #1]
	cmp	r0, r1, lsl #3
	bgt	.LBB0_1
@ %bb.14:
	ldr	r0, [sp, #200]
	add	r2, sp, #100
	add	r0, r0, r1
	bl	uECC_vli_nativeToBytes
	mov	r10, #1
	mov	r0, r10
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_sign                       @ -- Begin function uECC_sign
	.p2align	2
	.type	uECC_sign,%function
	.code	32                              @ @uECC_sign
uECC_sign:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#116
	sub	sp, sp, #116
	ldr	r11, [sp, #152]
	mov	r9, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r10, r0
	str	r2, [sp, #12]                   @ 4-byte Spill
	add	r7, r11, #36
	mov	r8, #64
	add	r4, sp, #52
	add	r6, sp, #20
	mov	r5, #0
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	bl	uECC_get_rng
	cmp	r0, #0
	beq	.LBB1_5
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	mov	r2, r0
	mov	r0, r4
	mov	r1, #64
	blx	r2
	cmp	r0, #0
	beq	.LBB1_5
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldrsh	r0, [r11, #2]
	mov	r1, r4
	mov	r2, r7
	add	r0, r0, #31
	add	r0, r0, r0, lsr #27
	sbfx	r3, r0, #5, #8
	mov	r0, r6
	bl	uECC_vli_mmod
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, r9
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	mov	r3, r6
	stm	sp, {r0, r11}
	mov	r0, r10
	bl	uECC_sign_with_k
	cmp	r0, #0
	bne	.LBB1_6
@ %bb.4:                                @   in Loop: Header=BB1_1 Depth=1
	subs	r8, r8, #1
	bne	.LBB1_1
.LBB1_5:
	mov	r0, r5
	add	sp, sp, #116
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB1_6:
	mov	r5, #1
	mov	r0, r5
	add	sp, sp, #116
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end1:
	.size	uECC_sign, .Lfunc_end1-uECC_sign
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_verify                     @ -- Begin function uECC_verify
	.p2align	2
	.type	uECC_verify,%function
	.code	32                              @ @uECC_verify
uECC_verify:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#492
	sub	sp, sp, #492
	ldr	r11, [sp, #528]
	mov	r10, r0
	str	r1, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #300
	str	r2, [sp, #24]                   @ 4-byte Spill
	mov	r8, #0
	ldrsh	r1, [r11, #2]
	add	r5, sp, #92
	ldrsb	r4, [r11]
	mov	r6, r3
	add	r1, r1, #31
	ldrsb	r2, [r11, #1]
	add	r9, r1, r1, lsr #27
	sbfx	r1, r9, #5, #8
	sub	r7, r1, #1
	mov	r1, r10
	str	r8, [r0, r7, lsl #2]
	add	r0, sp, #60
	str	r8, [r0, r7, lsl #2]
	add	r0, sp, #28
	str	r8, [r0, r7, lsl #2]
	mov	r0, r5
	bl	uECC_vli_bytesToNative
	ldrsb	r2, [r11, #1]
	add	r5, r5, r4, lsl #2
	add	r1, r10, r2
	mov	r0, r5
	mov	r10, r5
	bl	uECC_vli_bytesToNative
	add	r5, sp, #60
	ldrsb	r2, [r11, #1]
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_bytesToNative
	ldrsb	r2, [r11, #1]
	add	r0, sp, #28
	add	r1, r6, r2
	bl	uECC_vli_bytesToNative
	mov	r0, r5
	mov	r1, r4
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB2_2
.LBB2_1:
	mov	r0, r8
	add	sp, sp, #492
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB2_2:
	add	r0, sp, #28
	mov	r1, r4
	mov	r6, r9
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldr	r9, [sp, #24]                   @ 4-byte Reload
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB2_1
@ %bb.3:
	str	r4, [sp, #16]                   @ 4-byte Spill
	asr	r0, r6, #5
	ldr	r4, [sp, #528]
	add	r1, sp, #60
	str	r10, [sp, #12]                  @ 4-byte Spill
	sxtb	r10, r0
	add	r5, r4, #36
	mov	r2, r10
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	bne	.LBB2_1
@ %bb.4:
	add	r1, sp, #28
	mov	r0, r5
	mov	r2, r10
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	bne	.LBB2_1
@ %bb.5:
	add	r0, sp, #396
	add	r1, sp, #28
	mov	r2, r5
	mov	r3, r10
	bl	uECC_vli_modInv
	add	r8, sp, #460
	ldrsh	r6, [r4, #2]
	mov	r0, #0
	str	r0, [r8, r7, lsl #2]
	add	r0, r6, #31
	add	r0, r0, r0, lsr #27
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbfx	r1, r0, #5, #8
	mov	r0, r8
	bl	uECC_vli_clear
	add	r0, r6, #7
	mov	r1, r11
	add	r0, r0, r0, lsr #29
	cmp	r9, r0, asr #3
	asrhi	r9, r0, #3
	mov	r0, r8
	mov	r2, r9
	bl	uECC_vli_bytesToNative
	ldrsh	r1, [r4, #2]
	cmp	r1, r9, lsl #3
	bhs	.LBB2_11
@ %bb.6:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r6, #1
	asr	r0, r0, #5
	blt	.LBB2_9
@ %bb.7:
	lsl	r2, r9, #3
	sub	r1, r2, r1
	add	r2, r8, r0, lsl #2
	rsb	r3, r1, #32
	mov	r7, #0
.LBB2_8:                                @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2, #-4]!
	cmp	r2, r8
	orr	r7, r7, r6, lsr r1
	str	r7, [r2]
	lsl	r7, r6, r3
	bhi	.LBB2_8
.LBB2_9:
	sxtb	r6, r0
	add	r1, sp, #460
	mov	r0, r5
	mov	r2, r6
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	beq	.LBB2_11
@ %bb.10:
	add	r0, sp, #460
	mov	r2, r5
	mov	r3, r6
	mov	r1, r0
	bl	uECC_vli_sub
.LBB2_11:
	add	r0, sp, #460
	add	r4, sp, #396
	mov	r3, r5
	str	r10, [sp]
	mov	r1, r0
	mov	r2, r4
	bl	uECC_vli_modMult
	add	r0, sp, #428
	add	r1, sp, #60
	mov	r2, r4
	mov	r3, r5
	str	r10, [sp]
	str	r5, [sp, #20]                   @ 4-byte Spill
	bl	uECC_vli_modMult
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	add	r9, sp, #332
	add	r1, sp, #92
	mov	r0, r9
	mov	r2, r4
	bl	uECC_vli_set
	add	r6, r9, r4, lsl #2
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r2, r4
	mov	r0, r6
	bl	uECC_vli_set
	ldr	r5, [sp, #528]
	add	r11, sp, #236
	mov	r2, r4
	add	r7, r5, #68
	mov	r0, r11
	mov	r1, r7
	bl	uECC_vli_set
	add	r1, r7, r4, lsl #2
	add	r0, sp, #204
	mov	r2, r4
	bl	uECC_vli_set
	add	r8, r5, #4
	add	r0, sp, #396
	mov	r1, r9
	mov	r2, r11
	mov	r3, r8
	str	r4, [sp]
	bl	uECC_vli_modSub
	add	r1, sp, #204
	mov	r0, r11
	mov	r2, r9
	mov	r3, r6
	str	r5, [sp]
	bl	XYcZ_add
	add	r0, sp, #396
	mov	r2, r8
	mov	r3, r4
	str	r8, [sp, #24]                   @ 4-byte Spill
	mov	r1, r0
	mov	r5, r0
	bl	uECC_vli_modInv
	ldr	r3, [sp, #528]
	mov	r0, r9
	mov	r1, r6
	mov	r2, r5
	bl	apply_z
	str	r9, [sp, #168]
	add	r0, sp, #92
	add	r9, sp, #460
	str	r0, [sp, #164]
	mov	r0, #0
	mov	r1, r10
	str	r0, [sp, #156]
	mov	r0, r9
	str	r7, [sp, #160]
	bl	uECC_vli_numBits
	add	r11, sp, #428
	mov	r7, r0
	mov	r1, r10
	str	r10, [sp, #12]                  @ 4-byte Spill
	mov	r0, r11
	bl	uECC_vli_numBits
	mov	r6, r0
	cmp	r7, r0
	movgt	r6, r7
	sub	r0, r6, #1
	sxth	r8, r0
	mov	r0, r9
	mov	r1, r8
	bl	uECC_vli_testBit
	mov	r7, r0
	cmp	r0, #0
	mov	r0, r11
	mov	r1, r8
	movwne	r7, #1
	bl	uECC_vli_testBit
	cmp	r0, #0
	add	r0, sp, #156
	orrne	r7, r7, #2
	mov	r2, r4
	ldr	r7, [r0, r7, lsl #2]
	add	r0, sp, #300
	mov	r1, r7
	bl	uECC_vli_set
	add	r1, r7, r4, lsl #2
	add	r0, sp, #268
	mov	r2, r4
	bl	uECC_vli_set
	mov	r0, r5
	mov	r1, r4
	bl	uECC_vli_clear
	mov	r0, #1
	str	r0, [sp, #396]
	sub	r0, r6, #2
	ldr	r6, [sp, #528]
	sxth	r11, r0
	cmp	r11, #0
	bmi	.LBB2_16
@ %bb.12:
	add	r5, sp, #300
	add	r8, sp, #268
	add	r7, sp, #396
	b	.LBB2_14
.LBB2_13:                               @   in Loop: Header=BB2_14 Depth=1
	sub	r11, r11, #1
	cmp	r9, #0
	ble	.LBB2_16
.LBB2_14:                               @ =>This Inner Loop Header: Depth=1
	mov	r4, r6
	ldr	r6, [r6, #164]
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, r4
	blx	r6
	sxth	r9, r11
	add	r0, sp, #460
	mov	r1, r9
	bl	uECC_vli_testBit
	mov	r6, r0
	cmp	r0, #0
	add	r0, sp, #428
	mov	r1, r9
	movwne	r6, #1
	bl	uECC_vli_testBit
	cmp	r0, #0
	add	r0, sp, #156
	orrne	r6, r6, #2
	ldr	r10, [r0, r6, lsl #2]
	mov	r6, r4
	cmp	r10, #0
	beq	.LBB2_13
@ %bb.15:                               @   in Loop: Header=BB2_14 Depth=1
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	add	r7, sp, #236
	mov	r1, r10
	mov	r0, r7
	mov	r2, r4
	bl	uECC_vli_set
	add	r1, r10, r4, lsl #2
	add	r10, sp, #204
	mov	r2, r4
	mov	r0, r10
	bl	uECC_vli_set
	add	r2, sp, #396
	mov	r0, r7
	mov	r1, r10
	mov	r3, r6
	bl	apply_z
	str	r4, [sp]
	add	r4, sp, #172
	ldr	r3, [sp, #24]                   @ 4-byte Reload
	mov	r1, r5
	mov	r0, r4
	mov	r2, r7
	bl	uECC_vli_modSub
	mov	r0, r7
	mov	r1, r10
	mov	r2, r5
	mov	r3, r8
	str	r6, [sp]
	add	r7, sp, #396
	bl	XYcZ_add
	mov	r0, r7
	mov	r1, r7
	mov	r2, r4
	mov	r3, r6
	bl	uECC_vli_modMult_fast
	b	.LBB2_13
.LBB2_16:
	mov	r4, r6
	add	r6, sp, #396
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	mov	r0, r6
	mov	r1, r6
	bl	uECC_vli_modInv
	add	r7, sp, #300
	add	r1, sp, #268
	mov	r2, r6
	mov	r3, r4
	mov	r0, r7
	bl	apply_z
	ldr	r5, [sp, #20]                   @ 4-byte Reload
	mov	r1, r7
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	mov	r0, r5
	mov	r2, r6
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	beq	.LBB2_18
@ %bb.17:
	add	r0, sp, #300
	mov	r2, r5
	mov	r3, r6
	mov	r1, r0
	bl	uECC_vli_sub
.LBB2_18:
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	add	r0, sp, #300
	add	r1, sp, #60
	bl	uECC_vli_equal
	clz	r0, r0
	lsr	r8, r0, #5
	mov	r0, r8
	add	sp, sp, #492
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	uECC_verify, .Lfunc_end2-uECC_verify
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals

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
	ldr	r4, [sp, #204]
	mov	r5, r0
	add	r0, sp, #100
	str	r0, [sp, #96]
	add	r0, sp, #132
	str	r0, [sp, #92]
	ldrsb	r7, [r4]
	mov	r8, r1
	mov	r0, r3
	mov	r6, r3
	mov	r10, r2
	ldrsh	r9, [r4, #2]
	mov	r1, r7
	bl	uECC_vli_isZero
	mov	r2, #0
	cmp	r0, #0
	bne	.LBB0_4
@ %bb.1:
	add	r0, r9, #31
	add	r11, r4, #36
	str	r5, [sp, #20]                   @ 4-byte Spill
	mov	r5, r4
	add	r0, r0, r0, lsr #27
	mov	r1, r6
	str	r7, [sp, #24]                   @ 4-byte Spill
	mov	r7, r6
	asr	r0, r0, #5
	sxtb	r4, r0
	mov	r0, r11
	mov	r2, r4
	bl	uECC_vli_cmp
	mov	r2, #0
	cmp	r0, #1
	bne	.LBB0_4
@ %bb.2:
	add	r1, sp, #132
	add	r2, sp, #100
	mov	r0, r7
	mov	r3, r5
	str	r4, [sp, #16]                   @ 4-byte Spill
	mov	r4, r5
	str	r8, [sp, #12]                   @ 4-byte Spill
	uxth	r6, r9
	bl	regularize_k
	clz	r0, r0
	add	r1, sp, #92
	mov	r3, #0
	lsr	r0, r0, #5
	ldr	r2, [r1, r0, lsl #2]
	add	r0, r6, #1
	add	r1, r5, #68
	sxth	r0, r0
	stm	sp, {r0, r4}
	add	r4, sp, #28
	mov	r0, r4
	bl	EccPoint_mult
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	mov	r0, r4
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB0_5
@ %bb.3:
	mov	r2, #0
.LBB0_4:
	mov	r0, r2
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB0_5:
	mov	r4, r7
	bl	uECC_get_rng
	cmp	r0, #0
	beq	.LBB0_7
@ %bb.6:
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	add	r0, sp, #132
	mov	r1, r11
	mov	r8, r11
	mov	r2, r7
	bl	uECC_generate_random_int
	ldr	r5, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	ldr	r11, [sp, #204]
	mov	r2, #0
	bne	.LBB0_8
	b	.LBB0_4
.LBB0_7:
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	add	r0, sp, #132
	mov	r1, r7
	bl	uECC_vli_clear
	mov	r0, #1
	mov	r8, r11
	str	r0, [sp, #132]
	ldr	r5, [sp, #12]                   @ 4-byte Reload
	ldr	r11, [sp, #204]
.LBB0_8:
	str	r10, [sp, #8]                   @ 4-byte Spill
	add	r10, sp, #132
	mov	r0, r4
	mov	r1, r4
	mov	r2, r10
	mov	r3, r8
	ldr	r9, [sp, #200]
	str	r7, [sp]
	bl	uECC_vli_modMult
	mov	r0, r4
	mov	r1, r4
	mov	r2, r8
	mov	r3, r7
	bl	uECC_vli_modInv
	mov	r0, r4
	mov	r1, r4
	mov	r2, r10
	mov	r3, r8
	str	r7, [sp]
	bl	uECC_vli_modMult
	ldrsb	r1, [r11, #1]
	add	r2, sp, #28
	mov	r0, r9
	mov	r9, r2
	bl	uECC_vli_nativeToBytes
	ldrsh	r0, [r11, #2]
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, #7
	add	r0, r0, r0, lsr #29
	asr	r2, r0, #3
	mov	r0, r10
	bl	uECC_vli_bytesToNative
	add	r6, sp, #100
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	add	r0, r6, r7, lsl #2
	mov	r1, #0
	str	r1, [r0, #-4]
	mov	r0, r6
	mov	r1, r9
	bl	uECC_vli_set
	mov	r0, r6
	mov	r1, r10
	mov	r2, r6
	mov	r3, r8
	str	r7, [sp]
	bl	uECC_vli_modMult
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	mov	r0, r10
	mov	r1, r5
	mov	r3, r11
	bl	bits2int
	mov	r0, r6
	mov	r1, r10
	mov	r2, r6
	mov	r3, r8
	str	r7, [sp]
	bl	uECC_vli_modAdd
	mov	r0, r6
	mov	r1, r6
	mov	r2, r4
	mov	r3, r8
	str	r7, [sp]
	bl	uECC_vli_modMult
	mov	r0, r6
	mov	r1, r7
	bl	uECC_vli_numBits
	ldrsb	r1, [r11, #1]
	mov	r2, #0
	cmp	r0, r1, lsl #3
	bgt	.LBB0_4
@ %bb.9:
	ldr	r0, [sp, #200]
	add	r2, sp, #100
	add	r0, r0, r1
	bl	uECC_vli_nativeToBytes
	mov	r2, #1
	b	.LBB0_4
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function bits2int
	.type	bits2int,%function
	.code	32                              @ @bits2int
bits2int:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	ldrsh	r5, [r3, #2]
	mov	r4, r0
	mov	r9, r1
	mov	r8, r3
	add	r0, r5, #31
	mov	r6, r2
	add	r7, r0, r0, lsr #27
	mov	r0, r4
	sbfx	r1, r7, #5, #8
	bl	uECC_vli_clear
	add	r0, r5, #7
	mov	r1, r9
	add	r0, r0, r0, lsr #29
	cmp	r6, r0, asr #3
	asrhi	r6, r0, #3
	mov	r0, r4
	mov	r2, r6
	bl	uECC_vli_bytesToNative
	ldrsh	r1, [r8, #2]
	cmp	r1, r6, lsl #3
	bhs	.LBB1_5
@ %bb.1:
	asr	r0, r7, #5
	cmp	r5, #1
	blt	.LBB1_4
@ %bb.2:
	lsl	r2, r6, #3
	sub	r1, r2, r1
	add	r2, r4, r0, lsl #2
	rsb	r3, r1, #32
	mov	r7, #0
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2, #-4]!
	cmp	r2, r4
	orr	r7, r7, r6, lsr r1
	str	r7, [r2]
	lsl	r7, r6, r3
	bhi	.LBB1_3
.LBB1_4:
	add	r5, r8, #36
	sxtb	r6, r0
	mov	r1, r4
	mov	r2, r6
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	bne	.LBB1_6
.LBB1_5:
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB1_6:
	mov	r0, r4
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	uECC_vli_sub
.Lfunc_end1:
	.size	bits2int, .Lfunc_end1-bits2int
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
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	bl	uECC_get_rng
	cmp	r0, #0
	beq	.LBB2_6
@ %bb.2:                                @   in Loop: Header=BB2_1 Depth=1
	mov	r2, r0
	mov	r0, r4
	mov	r1, #64
	blx	r2
	cmp	r0, #0
	beq	.LBB2_6
@ %bb.3:                                @   in Loop: Header=BB2_1 Depth=1
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
	bne	.LBB2_5
@ %bb.4:                                @   in Loop: Header=BB2_1 Depth=1
	subs	r8, r8, #1
	bne	.LBB2_1
	b	.LBB2_6
.LBB2_5:
	mov	r5, #1
.LBB2_6:
	mov	r0, r5
	add	sp, sp, #116
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	uECC_sign, .Lfunc_end2-uECC_sign
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
	ldr	r4, [sp, #528]
	mov	r10, r0
	str	r1, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #300
	str	r2, [sp, #24]                   @ 4-byte Spill
	mov	r8, #0
	ldrsh	r1, [r4, #2]
	add	r11, sp, #92
	ldrsb	r6, [r4]
	add	r9, sp, #60
	add	r1, r1, #31
	ldrsb	r2, [r4, #1]
	mov	r7, r3
	add	r1, r1, r1, lsr #27
	str	r1, [sp, #16]                   @ 4-byte Spill
	sbfx	r1, r1, #5, #8
	sub	r5, r1, #1
	mov	r1, r10
	str	r8, [r0, r5, lsl #2]
	add	r0, sp, #28
	str	r8, [r0, r5, lsl #2]
	mov	r0, r11
	str	r8, [r9, r5, lsl #2]
	bl	uECC_vli_bytesToNative
	ldrsb	r2, [r4, #1]
	add	r0, r11, r6, lsl #2
	add	r1, r10, r2
	mov	r10, r0
	bl	uECC_vli_bytesToNative
	ldrsb	r2, [r4, #1]
	mov	r0, r9
	mov	r1, r7
	bl	uECC_vli_bytesToNative
	ldrsb	r2, [r4, #1]
	add	r0, sp, #28
	add	r1, r7, r2
	bl	uECC_vli_bytesToNative
	mov	r0, r9
	mov	r1, r6
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB3_12
@ %bb.1:
	add	r11, sp, #16
	add	r0, sp, #28
	mov	r1, r6
	ldm	r11, {r7, r9, r11}              @ 12-byte Folded Reload
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB3_12
@ %bb.2:
	asr	r0, r7, #5
	add	r7, r4, #36
	str	r10, [sp, #12]                  @ 4-byte Spill
	sxtb	r10, r0
	add	r1, sp, #60
	mov	r0, r7
	mov	r2, r10
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	bne	.LBB3_12
@ %bb.3:
	add	r1, sp, #28
	mov	r0, r7
	mov	r2, r10
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	bne	.LBB3_12
@ %bb.4:
	add	r0, sp, #396
	add	r1, sp, #28
	mov	r2, r7
	mov	r3, r10
	bl	uECC_vli_modInv
	add	r8, sp, #460
	mov	r0, #0
	mov	r1, r9
	mov	r2, r11
	str	r0, [r8, r5, lsl #2]
	mov	r0, r8
	mov	r3, r4
	mov	r5, r4
	bl	bits2int
	add	r4, sp, #396
	mov	r0, r8
	mov	r1, r8
	mov	r3, r7
	mov	r2, r4
	str	r10, [sp]
	bl	uECC_vli_modMult
	add	r0, sp, #428
	add	r1, sp, #60
	mov	r2, r4
	mov	r3, r7
	str	r10, [sp]
	str	r7, [sp, #16]                   @ 4-byte Spill
	bl	uECC_vli_modMult
	add	r8, sp, #332
	add	r1, sp, #92
	mov	r2, r6
	mov	r4, r6
	mov	r0, r8
	bl	uECC_vli_set
	add	r7, r8, r6, lsl #2
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r2, r6
	mov	r0, r7
	bl	uECC_vli_set
	add	r6, r5, #68
	add	r9, sp, #236
	mov	r2, r4
	mov	r0, r9
	mov	r1, r6
	bl	uECC_vli_set
	add	r1, r6, r4, lsl #2
	add	r0, sp, #204
	mov	r2, r4
	bl	uECC_vli_set
	add	r11, r5, #4
	add	r0, sp, #396
	mov	r1, r8
	mov	r2, r9
	mov	r3, r11
	str	r4, [sp]
	bl	uECC_vli_modSub
	add	r1, sp, #204
	mov	r0, r9
	mov	r2, r8
	mov	r3, r7
	str	r5, [sp]
	bl	XYcZ_add
	add	r0, sp, #396
	mov	r2, r11
	mov	r3, r4
	str	r11, [sp, #20]                  @ 4-byte Spill
	mov	r1, r0
	mov	r5, r0
	bl	uECC_vli_modInv
	ldr	r3, [sp, #528]
	mov	r0, r8
	mov	r1, r7
	mov	r2, r5
	bl	apply_z
	add	r0, sp, #92
	add	r11, sp, #460
	str	r0, [sp, #164]
	mov	r0, #0
	str	r0, [sp, #156]
	mov	r0, r11
	mov	r1, r10
	str	r8, [sp, #168]
	str	r6, [sp, #160]
	bl	uECC_vli_numBits
	add	r9, sp, #428
	mov	r7, r0
	mov	r1, r10
	str	r10, [sp, #12]                  @ 4-byte Spill
	mov	r0, r9
	bl	uECC_vli_numBits
	mov	r6, r0
	cmp	r7, r0
	movgt	r6, r7
	sub	r0, r6, #1
	sxth	r8, r0
	mov	r0, r11
	mov	r1, r8
	bl	uECC_vli_testBit
	mov	r7, r0
	cmp	r0, #0
	mov	r0, r9
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
	ldr	r8, [sp, #528]
	bl	uECC_vli_set
	mov	r0, r5
	mov	r1, r4
	str	r4, [sp, #24]                   @ 4-byte Spill
	bl	uECC_vli_clear
	mov	r0, #1
	str	r0, [sp, #396]
	sub	r0, r6, #2
	sxth	r11, r0
	cmp	r11, #0
	bmi	.LBB3_9
@ %bb.5:
	add	r5, sp, #300
	add	r4, sp, #268
	add	r6, sp, #396
	b	.LBB3_7
.LBB3_6:                                @   in Loop: Header=BB3_7 Depth=1
	sub	r11, r11, #1
	cmp	r9, #0
	ble	.LBB3_9
.LBB3_7:                                @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r8, #164]
	mov	r0, r5
	mov	r1, r4
	mov	r2, r6
	mov	r3, r8
	blx	r7
	sxth	r9, r11
	add	r0, sp, #460
	mov	r1, r9
	bl	uECC_vli_testBit
	mov	r7, r0
	cmp	r0, #0
	add	r0, sp, #428
	mov	r1, r9
	movwne	r7, #1
	bl	uECC_vli_testBit
	cmp	r0, #0
	add	r0, sp, #156
	orrne	r7, r7, #2
	ldr	r10, [r0, r7, lsl #2]
	cmp	r10, #0
	beq	.LBB3_6
@ %bb.8:                                @   in Loop: Header=BB3_7 Depth=1
	mov	r7, r6
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	add	r0, sp, #236
	mov	r1, r10
	mov	r2, r6
	bl	uECC_vli_set
	add	r1, r10, r6, lsl #2
	add	r0, sp, #204
	mov	r2, r6
	bl	uECC_vli_set
	add	r10, sp, #236
	add	r1, sp, #204
	mov	r2, r7
	mov	r3, r8
	mov	r0, r10
	bl	apply_z
	str	r6, [sp]
	mov	r6, r7
	add	r7, sp, #172
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	mov	r1, r5
	mov	r2, r10
	mov	r0, r7
	bl	uECC_vli_modSub
	add	r1, sp, #204
	mov	r0, r10
	mov	r2, r5
	mov	r3, r4
	str	r8, [sp]
	bl	XYcZ_add
	mov	r0, r6
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	uECC_vli_modMult_fast
	b	.LBB3_6
.LBB3_9:
	add	r6, sp, #396
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r3, [sp, #24]                   @ 4-byte Reload
	mov	r0, r6
	mov	r1, r6
	bl	uECC_vli_modInv
	add	r7, sp, #300
	add	r1, sp, #268
	mov	r2, r6
	mov	r3, r8
	mov	r0, r7
	bl	apply_z
	ldr	r5, [sp, #16]                   @ 4-byte Reload
	mov	r1, r7
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	mov	r0, r5
	mov	r2, r6
	bl	uECC_vli_cmp_unsafe
	cmp	r0, #1
	beq	.LBB3_11
@ %bb.10:
	add	r0, sp, #300
	mov	r2, r5
	mov	r3, r6
	mov	r1, r0
	bl	uECC_vli_sub
.LBB3_11:
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	add	r0, sp, #300
	add	r1, sp, #60
	bl	uECC_vli_equal
	clz	r0, r0
	lsr	r8, r0, #5
.LBB3_12:
	mov	r0, r8
	add	sp, sp, #492
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

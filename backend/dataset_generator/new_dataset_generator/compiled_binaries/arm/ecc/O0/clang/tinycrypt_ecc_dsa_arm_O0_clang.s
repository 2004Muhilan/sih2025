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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#184
	sub	sp, sp, #184
	ldr	r12, [r11, #12]
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	sub	r0, r11, #52
	str	r0, [sp, #92]
	sub	r0, r11, #84
	str	r0, [sp, #96]
	ldr	r0, [r11, #12]
	ldrb	r0, [r0]
	strb	r0, [sp, #23]
	ldr	r0, [r11, #12]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	strb	r0, [sp, #22]
	ldr	r0, [r11, #12]
	ldrh	r0, [r0, #2]
	strh	r0, [sp, #20]
	ldr	r0, [r11, #-20]
	ldrsb	r1, [sp, #23]
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB0_2
@ %bb.1:
	ldr	r0, [r11, #12]
	add	r0, r0, #36
	ldr	r1, [r11, #-20]
	ldrsb	r2, [sp, #22]
	bl	uECC_vli_cmp
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB0_3
.LBB0_2:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_13
.LBB0_3:
	ldr	r0, [r11, #-20]
	ldr	r3, [r11, #12]
	sub	r1, r11, #52
	sub	r2, r11, #84
	bl	regularize_k
	str	r0, [sp, #24]
	add	r0, sp, #28
	ldr	r1, [r11, #12]
	add	r1, r1, #68
	ldr	r2, [sp, #24]
	clz	r2, r2
	lsr	r3, r2, #5
	add	r2, sp, #92
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	ldrsh	r3, [sp, #20]
	add	lr, r3, #1
	ldr	r12, [r11, #12]
	movw	r3, #0
	sxth	lr, lr
	str	lr, [sp]
	str	r12, [sp, #4]
	bl	EccPoint_mult
	add	r0, sp, #28
	ldrsb	r1, [sp, #23]
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB0_5
@ %bb.4:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_13
.LBB0_5:
	bl	uECC_get_rng
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB0_7
@ %bb.6:
	sub	r0, r11, #52
	ldrsb	r1, [sp, #22]
	bl	uECC_vli_clear
	movw	r0, #1
	str	r0, [r11, #-52]
	b	.LBB0_10
.LBB0_7:
	sub	r0, r11, #52
	ldr	r1, [r11, #12]
	add	r1, r1, #36
	ldrsb	r2, [sp, #22]
	bl	uECC_generate_random_int
	cmp	r0, #0
	bne	.LBB0_9
@ %bb.8:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_13
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldr	r1, [r11, #-20]
	ldr	r0, [r11, #12]
	add	r3, r0, #36
	ldrsb	r0, [sp, #22]
	mov	r2, sp
	str	r0, [r2]
	sub	r2, r11, #52
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r0, r1
	bl	uECC_vli_modMult
	ldr	r1, [r11, #-20]
	ldr	r0, [r11, #12]
	add	r2, r0, #36
	ldrsb	r3, [sp, #22]
	mov	r0, r1
	bl	uECC_vli_modInv
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [r11, #-20]
	ldr	r0, [r11, #12]
	add	r3, r0, #36
	ldrsb	r0, [sp, #22]
	mov	r12, sp
	str	r0, [r12]
	mov	r0, r1
	bl	uECC_vli_modMult
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #12]
	ldrsb	r1, [r1, #1]
	add	r2, sp, #28
	str	r2, [sp, #8]                    @ 4-byte Spill
	bl	uECC_vli_nativeToBytes
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #12]
	ldrsh	r2, [r2, #2]
	add	r2, r2, #7
	add	r2, r2, r2, lsr #29
	asr	r2, r2, #3
	bl	uECC_vli_bytesToNative
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldrsb	r2, [sp, #22]
	sub	r0, r11, #84
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r3, r0, r2, lsl #2
	mov	r2, #0
	str	r2, [r3, #-4]
	ldrsb	r2, [sp, #23]
	bl	uECC_vli_set
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [r11, #12]
	add	r3, r0, #36
	ldrsb	r0, [sp, #22]
	mov	r12, sp
	str	r0, [r12]
	mov	r0, r2
	bl	uECC_vli_modMult
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #12]
	bl	bits2int
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [r11, #12]
	add	r3, r0, #36
	ldrsb	r0, [sp, #22]
	mov	r12, sp
	str	r0, [r12]
	mov	r0, r2
	bl	uECC_vli_modAdd
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [r11, #-20]
	ldr	r0, [r11, #12]
	add	r3, r0, #36
	ldrsb	r0, [sp, #22]
	mov	r12, sp
	str	r0, [r12]
	mov	r0, r1
	bl	uECC_vli_modMult
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldrsb	r1, [sp, #22]
	bl	uECC_vli_numBits
	ldr	r1, [r11, #12]
	ldrsb	r1, [r1, #1]
	lsl	r1, r1, #3
	cmp	r0, r1
	ble	.LBB0_12
@ %bb.11:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_13
.LBB0_12:
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #12]
	ldrsb	r1, [r1, #1]
	add	r0, r0, r1
	ldr	r1, [r11, #12]
	ldrsb	r1, [r1, #1]
	sub	r2, r11, #84
	bl	uECC_vli_nativeToBytes
	movw	r0, #1
	str	r0, [r11, #-4]
.LBB0_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#40
	sub	sp, sp, #40
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #7
	movw	r1, #8
	bl	__aeabi_idiv
	str	r0, [sp, #20]
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	str	r0, [sp, #16]
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #20]
	cmp	r0, r1
	bls	.LBB1_2
@ %bb.1:
	ldr	r0, [sp, #20]
	str	r0, [r11, #-12]
.LBB1_2:
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #16]
	bl	uECC_vli_clear
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	bl	uECC_vli_bytesToNative
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #3
	ldr	r1, [r11, #-16]
	ldrsh	r1, [r1, #2]
	cmp	r0, r1
	bhi	.LBB1_4
@ %bb.3:
	b	.LBB1_9
.LBB1_4:
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	rsb	r0, r0, r1, lsl #3
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #16]
	add	r0, r0, r1, lsl #2
	str	r0, [sp, #4]
.LBB1_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	mvn	r1, #3
	add	r1, r0, r1
	str	r1, [sp, #4]
	ldr	r1, [r11, #-4]
	cmp	r0, r1
	bls	.LBB1_7
@ %bb.6:                                @   in Loop: Header=BB1_5 Depth=1
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #12]
	lsr	r0, r0, r1
	ldr	r1, [sp, #8]
	orr	r0, r0, r1
	ldr	r1, [sp, #4]
	str	r0, [r1]
	ldr	r0, [sp]
	ldr	r2, [sp, #12]
	movw	r1, #32
	sub	r1, r1, r2
	lsl	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB1_5
.LBB1_7:
	ldr	r0, [r11, #-16]
	add	r0, r0, #36
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #16]
	sxtb	r2, r2
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB1_9
@ %bb.8:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-16]
	add	r2, r2, #36
	ldr	r3, [sp, #16]
	sxtb	r3, r3
	bl	uECC_vli_sub
.LBB1_9:
	mov	sp, r11
	pop	{r11, pc}
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#144
	sub	sp, sp, #144
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	movw	r0, #0
	str	r0, [sp, #24]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	cmp	r0, #64
	bhs	.LBB2_9
@ %bb.2:                                @   in Loop: Header=BB2_1 Depth=1
	bl	uECC_get_rng
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB2_4
@ %bb.3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r2, [sp, #20]
	add	r0, sp, #60
	movw	r1, #64
	blx	r2
	cmp	r0, #0
	bne	.LBB2_5
.LBB2_4:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_10
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	add	r0, sp, #28
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r0, sp, #60
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [r11, #8]
	add	r0, r0, #36
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [r11, #8]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	mov	r3, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	sxtb	r3, r3
	bl	uECC_vli_mmod
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-16]
	add	r3, sp, #28
	ldr	lr, [r11, #-20]
	ldr	r12, [r11, #8]
	str	lr, [sp]
	str	r12, [sp, #4]
	bl	uECC_sign_with_k
	cmp	r0, #0
	beq	.LBB2_7
@ %bb.6:
	movw	r0, #1
	str	r0, [r11, #-4]
	b	.LBB2_10
.LBB2_7:                                @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_8
.LBB2_8:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #24]
	add	r0, r0, #1
	str	r0, [sp, #24]
	b	.LBB2_1
.LBB2_9:
	movw	r0, #0
	str	r0, [r11, #-4]
.LBB2_10:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
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
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#560
	sub	sp, sp, #560
	add	r12, sp, #196
	str	r12, [sp, #52]                  @ 4-byte Spill
	ldr	r12, [r11, #8]
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [r11, #-24]
	str	r3, [r11, #-28]
	ldr	r0, [r11, #8]
	ldrb	r0, [r0]
	strb	r0, [sp, #67]
	ldr	r0, [r11, #8]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	add	r0, r0, r0, lsr #27
	lsr	r0, r0, #5
	strb	r0, [sp, #66]
	ldrsb	r1, [sp, #66]
	sub	r0, r11, #220
	add	r1, r0, r1, lsl #2
	mov	r0, #0
	str	r0, [r1, #-4]
	ldrsb	r2, [sp, #66]
	add	r1, sp, #100
	add	r1, r1, r2, lsl #2
	str	r0, [r1, #-4]
	ldrsb	r2, [sp, #66]
	add	r1, sp, #68
	add	r1, r1, r2, lsl #2
	str	r0, [r1, #-4]
	ldr	r1, [r11, #-16]
	ldr	r0, [r11, #8]
	ldrsb	r2, [r0, #1]
	add	r0, sp, #132
	str	r0, [sp, #56]                   @ 4-byte Spill
	bl	uECC_vli_bytesToNative
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldrsb	r1, [sp, #67]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #8]
	ldrsb	r2, [r2, #1]
	add	r1, r1, r2
	ldr	r2, [r11, #8]
	ldrsb	r2, [r2, #1]
	bl	uECC_vli_bytesToNative
	add	r0, sp, #100
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #8]
	ldrsb	r2, [r2, #1]
	bl	uECC_vli_bytesToNative
	add	r0, sp, #68
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #8]
	ldrsb	r2, [r2, #1]
	add	r1, r1, r2
	ldr	r2, [r11, #8]
	ldrsb	r2, [r2, #1]
	bl	uECC_vli_bytesToNative
	add	r0, sp, #100
	ldrsb	r1, [sp, #67]
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB3_2
@ %bb.1:
	add	r0, sp, #68
	ldrsb	r1, [sp, #67]
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB3_3
.LBB3_2:
	movw	r0, #0
	str	r0, [r11, #-12]
	b	.LBB3_15
.LBB3_3:
	ldr	r0, [r11, #8]
	add	r0, r0, #36
	add	r1, sp, #100
	ldrsb	r2, [sp, #66]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	bne	.LBB3_5
@ %bb.4:
	ldr	r0, [r11, #8]
	add	r0, r0, #36
	add	r1, sp, #68
	ldrsb	r2, [sp, #66]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB3_6
.LBB3_5:
	movw	r0, #0
	str	r0, [r11, #-12]
	b	.LBB3_15
.LBB3_6:
	ldr	r0, [r11, #8]
	add	r2, r0, #36
	ldrsb	r3, [sp, #66]
	sub	r0, r11, #124
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r1, sp, #68
	bl	uECC_vli_modInv
	ldrsb	r1, [sp, #66]
	sub	r0, r11, #60
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r2, r0, r1, lsl #2
	mov	r1, #0
	str	r1, [sp, #24]                   @ 4-byte Spill
	str	r1, [r2, #-4]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #8]
	bl	bits2int
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r0, [r11, #8]
	add	r3, r0, #36
	ldrsb	r0, [sp, #66]
	mov	r12, sp
	str	r0, [r12]
	mov	r0, r1
	bl	uECC_vli_modMult
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [r11, #8]
	add	r3, r0, #36
	ldrsb	r0, [sp, #66]
	mov	r1, sp
	str	r0, [r1]
	sub	r0, r11, #92
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r1, sp, #100
	bl	uECC_vli_modMult
	ldrsb	r2, [sp, #67]
	sub	r0, r11, #188
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	r1, sp, #132
	str	r1, [sp, #28]                   @ 4-byte Spill
	bl	uECC_vli_set
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldrsb	r2, [sp, #67]
	add	r0, r0, r2, lsl #2
	add	r1, r1, r2, lsl #2
	bl	uECC_vli_set
	ldr	r0, [r11, #8]
	add	r1, r0, #68
	ldrsb	r2, [sp, #67]
	add	r0, sp, #284
	str	r0, [sp, #12]                   @ 4-byte Spill
	bl	uECC_vli_set
	ldr	r0, [r11, #8]
	ldrsb	r2, [sp, #67]
	add	r0, r0, r2, lsl #2
	add	r1, r0, #68
	add	r0, sp, #252
	str	r0, [sp, #16]                   @ 4-byte Spill
	bl	uECC_vli_set
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #67]
	mov	lr, sp
	str	r12, [lr]
	bl	uECC_vli_modSub
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldrsb	r3, [sp, #67]
	add	r3, r2, r3, lsl #2
	ldr	r12, [r11, #8]
	mov	lr, sp
	str	r12, [lr]
	bl	XYcZ_add
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [r11, #8]
	add	r2, r0, #4
	ldrsb	r3, [sp, #67]
	mov	r0, r1
	bl	uECC_vli_modInv
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldrsb	r1, [sp, #67]
	add	r1, r0, r1, lsl #2
	ldr	r3, [r11, #8]
	bl	apply_z
	ldr	r3, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	str	r3, [sp, #204]
	ldr	r3, [r11, #8]
	add	r3, r3, #68
	str	r3, [sp, #208]
	str	r2, [sp, #212]
	str	r1, [sp, #216]
	ldrsb	r1, [sp, #66]
	bl	uECC_vli_numBits
	mov	r1, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldrsb	r1, [sp, #66]
	bl	uECC_vli_numBits
	mov	r1, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	bl	smax
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	strh	r2, [r1, #2]
	ldrh	r1, [r1, #2]
	sub	r1, r1, #1
	sxth	r1, r1
	bl	uECC_vli_testBit
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	cmp	r2, #0
	movwne	r2, #1
	str	r2, [sp, #48]                   @ 4-byte Spill
	ldrh	r1, [r1, #2]
	sub	r1, r1, #1
	sxth	r1, r1
	bl	uECC_vli_testBit
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	cmp	r0, #0
	movwne	r0, #1
	lsl	r0, r0, #3
	orr	r1, r0, r1, lsl #2
	add	r0, sp, #204
	ldr	r0, [r0, r1]
	str	r0, [sp, #200]
	ldr	r1, [sp, #200]
	ldrsb	r2, [sp, #67]
	sub	r0, r11, #220
	bl	uECC_vli_set
	sub	r0, r11, #252
	ldr	r1, [sp, #200]
	ldrsb	r2, [sp, #67]
	add	r1, r1, r2, lsl #2
	ldrsb	r2, [sp, #67]
	bl	uECC_vli_set
	sub	r0, r11, #124
	ldrsb	r1, [sp, #67]
	bl	uECC_vli_clear
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	movw	r0, #1
	str	r0, [r11, #-124]
	ldrsh	r0, [sp, #198]
	sub	r0, r0, #2
	strh	r0, [r1]
.LBB3_7:                                @ =>This Inner Loop Header: Depth=1
	ldrsh	r0, [sp, #196]
	cmp	r0, #0
	blt	.LBB3_12
@ %bb.8:                                @   in Loop: Header=BB3_7 Depth=1
	ldr	r3, [r11, #8]
	ldr	r12, [r3, #164]
	sub	r0, r11, #220
	sub	r1, r11, #252
	sub	r2, r11, #124
	blx	r12
	ldrsh	r1, [sp, #196]
	sub	r0, r11, #60
	bl	uECC_vli_testBit
	cmp	r0, #0
	movwne	r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldrsh	r1, [sp, #196]
	sub	r0, r11, #92
	bl	uECC_vli_testBit
	mov	r1, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r1, #0
	movwne	r1, #1
	orr	r0, r0, r1, lsl #1
	str	r0, [sp, #60]
	ldr	r1, [sp, #60]
	add	r0, sp, #204
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	str	r0, [sp, #200]
	ldr	r0, [sp, #200]
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB3_10
@ %bb.9:                                @   in Loop: Header=BB3_7 Depth=1
	ldr	r1, [sp, #200]
	ldrsb	r2, [sp, #67]
	add	r0, sp, #284
	bl	uECC_vli_set
	add	r0, sp, #252
	ldr	r1, [sp, #200]
	ldrsb	r2, [sp, #67]
	add	r1, r1, r2, lsl #2
	ldrsb	r2, [sp, #67]
	bl	uECC_vli_set
	add	r0, sp, #284
	add	r1, sp, #252
	sub	r2, r11, #124
	ldr	r3, [r11, #8]
	bl	apply_z
	add	r0, sp, #220
	sub	r1, r11, #220
	add	r2, sp, #284
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #67]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #284
	add	r1, sp, #252
	sub	r2, r11, #220
	sub	r3, r11, #252
	ldr	r12, [r11, #8]
	str	r12, [sp]
	bl	XYcZ_add
	sub	r0, r11, #124
	sub	r1, r11, #124
	add	r2, sp, #220
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
.LBB3_10:                               @   in Loop: Header=BB3_7 Depth=1
	b	.LBB3_11
.LBB3_11:                               @   in Loop: Header=BB3_7 Depth=1
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	ldrh	r0, [r1]
	movw	r2, #65535
	add	r0, r0, r2
	strh	r0, [r1]
	b	.LBB3_7
.LBB3_12:
	sub	r0, r11, #124
	sub	r1, r11, #124
	ldr	r2, [r11, #8]
	add	r2, r2, #4
	ldrsb	r3, [sp, #67]
	bl	uECC_vli_modInv
	sub	r0, r11, #220
	sub	r1, r11, #252
	sub	r2, r11, #124
	ldr	r3, [r11, #8]
	bl	apply_z
	ldr	r0, [r11, #8]
	add	r0, r0, #36
	sub	r1, r11, #220
	ldrsb	r2, [sp, #66]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB3_14
@ %bb.13:
	sub	r0, r11, #220
	sub	r1, r11, #220
	ldr	r2, [r11, #8]
	add	r2, r2, #36
	ldrsb	r3, [sp, #66]
	bl	uECC_vli_sub
.LBB3_14:
	sub	r0, r11, #220
	add	r1, sp, #100
	ldrsb	r2, [sp, #67]
	bl	uECC_vli_equal
	cmp	r0, #0
	movw	r0, #0
	moveq	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-12]
.LBB3_15:
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function smax
	.type	smax,%function
	.code	32                              @ @smax
smax:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	strh	r0, [sp, #6]
	strh	r1, [sp, #4]
	ldrsh	r0, [sp, #6]
	ldrsh	r1, [sp, #4]
	cmp	r0, r1
	ble	.LBB4_2
@ %bb.1:
	ldrsh	r0, [sp, #6]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB4_3
.LBB4_2:
	ldrsh	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
.LBB4_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	sxth	r0, r0
	add	sp, sp, #8
	bx	lr
.Lfunc_end4:
	.size	smax, .Lfunc_end4-smax
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym uECC_sign_with_k
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_mult
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym uECC_vli_modMult
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_vli_set
	.addrsig_sym bits2int
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym XYcZ_add
	.addrsig_sym apply_z
	.addrsig_sym smax
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_equal
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals

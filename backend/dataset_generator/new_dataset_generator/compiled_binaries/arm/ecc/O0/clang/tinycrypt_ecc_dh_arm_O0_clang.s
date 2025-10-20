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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#120
	sub	sp, sp, #120
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	sub	r0, r11, #52
	ldr	r1, [r11, #-16]
	movw	r2, #32
	bl	memcpy
	add	r0, sp, #4
	sub	r1, r11, #52
	ldr	r2, [r11, #-20]
	bl	EccPoint_compute_public_key
	cmp	r0, #0
	beq	.LBB0_2
@ %bb.1:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-20]
	ldrsh	r1, [r1, #2]
	add	r1, r1, #7
	add	r1, r1, r1, lsr #29
	asr	r1, r1, #3
	sub	r2, r11, #52
	bl	uECC_vli_nativeToBytes
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-20]
	ldrsb	r1, [r1, #1]
	add	r2, sp, #4
	str	r2, [sp]                        @ 4-byte Spill
	bl	uECC_vli_nativeToBytes
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r3, [r11, #-20]
	ldrsb	r1, [r3, #1]
	add	r0, r0, r1
	ldrsb	r3, [r3]
	add	r2, r2, r3, lsl #2
	bl	uECC_vli_nativeToBytes
	sub	r0, r11, #52
	movw	r1, #0
	movw	r2, #32
	and	r1, r1, #255
	bl	_set_secure
	movw	r0, #1
	str	r0, [r11, #-4]
	b	.LBB0_3
.LBB0_2:
	movw	r0, #0
	str	r0, [r11, #-4]
.LBB0_3:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function _set_secure
	.type	_set_secure,%function
	.code	32                              @ @_set_secure
_set_secure:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	strb	r1, [r11, #-5]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	ldrb	r1, [r11, #-5]
	ldr	r2, [sp, #4]
	and	r1, r1, #255
	bl	memset
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	mov	r0, sp
	@APP
	@NO_APP
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	_set_secure, .Lfunc_end1-_set_secure
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#200
	sub	sp, sp, #200
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	movw	r0, #0
	str	r0, [sp, #20]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #64
	bhs	.LBB2_9
@ %bb.2:                                @   in Loop: Header=BB2_1 Depth=1
	bl	uECC_get_rng
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB2_4
@ %bb.3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r2, [sp, #16]
	sub	r0, r11, #80
	movw	r1, #64
	blx	r2
	cmp	r0, #0
	bne	.LBB2_5
.LBB2_4:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_10
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	add	r0, sp, #88
	str	r0, [sp, #12]                   @ 4-byte Spill
	sub	r0, r11, #80
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-16]
	add	r0, r0, #36
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	mov	r3, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	sxtb	r3, r3
	bl	uECC_vli_mmod
	add	r0, sp, #24
	add	r1, sp, #88
	ldr	r2, [r11, #-16]
	bl	EccPoint_compute_public_key
	cmp	r0, #0
	beq	.LBB2_7
@ %bb.6:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	ldrsh	r1, [r1, #2]
	add	r1, r1, #7
	add	r1, r1, r1, lsr #29
	asr	r1, r1, #3
	add	r2, sp, #88
	bl	uECC_vli_nativeToBytes
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldrsb	r1, [r1, #1]
	add	r2, sp, #24
	str	r2, [sp]                        @ 4-byte Spill
	bl	uECC_vli_nativeToBytes
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r3, [r11, #-16]
	ldrsb	r1, [r3, #1]
	add	r0, r0, r1
	ldrsb	r3, [r3]
	add	r2, r2, r3, lsl #2
	bl	uECC_vli_nativeToBytes
	add	r0, sp, #88
	movw	r1, #0
	movw	r2, #32
	and	r1, r1, #255
	bl	_set_secure
	movw	r0, #1
	str	r0, [r11, #-4]
	b	.LBB2_10
.LBB2_7:                                @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_8
.LBB2_8:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB2_1
.LBB2_9:
	movw	r0, #0
	str	r0, [r11, #-4]
.LBB2_10:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	uECC_make_key, .Lfunc_end2-uECC_make_key
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#184
	sub	sp, sp, #184
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	add	r0, sp, #72
	str	r0, [sp, #32]
	add	r1, sp, #40
	str	r1, [sp, #36]
	mov	r1, #0
	str	r1, [sp, #28]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1]
	strb	r1, [sp, #23]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #1]
	strb	r1, [sp, #22]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-16]
	ldrsh	r2, [r2, #2]
	add	r2, r2, #7
	add	r2, r2, r2, lsr #29
	asr	r2, r2, #3
	bl	uECC_vli_bytesToNative
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #22]
	sub	r0, r11, #80
	str	r0, [sp, #12]                   @ 4-byte Spill
	bl	uECC_vli_bytesToNative
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldrsb	r1, [sp, #23]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #22]
	add	r1, r1, r2
	ldrsb	r2, [sp, #22]
	bl	uECC_vli_bytesToNative
	add	r0, sp, #72
	add	r1, sp, #72
	add	r2, sp, #40
	ldr	r3, [r11, #-16]
	bl	regularize_k
	str	r0, [sp, #24]
	bl	uECC_get_rng
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB3_4
@ %bb.1:
	ldr	r1, [sp, #24]
	add	r0, sp, #32
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	ldr	r1, [r11, #-16]
	add	r1, r1, #4
	ldrsb	r2, [sp, #23]
	bl	uECC_generate_random_int
	cmp	r0, #0
	bne	.LBB3_3
@ %bb.2:
	movw	r0, #0
	str	r0, [sp, #16]
	b	.LBB3_5
.LBB3_3:
	ldr	r1, [sp, #24]
	add	r0, sp, #32
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	str	r0, [sp, #28]
.LBB3_4:
	sub	r1, r11, #80
	mov	r0, r1
	ldr	r2, [sp, #24]
	clz	r2, r2
	lsr	r3, r2, #5
	add	r2, sp, #32
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #28]
	ldr	r12, [r11, #-16]
	ldrsh	r12, [r12, #2]
	add	lr, r12, #1
	ldr	r12, [r11, #-16]
	sxth	lr, lr
	str	lr, [sp]
	str	r12, [sp, #4]
	bl	EccPoint_mult
	ldr	r0, [r11, #-12]
	ldrsb	r1, [sp, #22]
	sub	r2, r11, #80
	bl	uECC_vli_nativeToBytes
	sub	r0, r11, #80
	ldr	r1, [r11, #-16]
	bl	EccPoint_isZero
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	mvn	r1, #0
	eor	r0, r0, r1
	and	r0, r0, #1
	str	r0, [sp, #16]
.LBB3_5:
	add	r0, sp, #32
	movw	r1, #0
	movw	r2, #8
	and	r1, r1, #255
	bl	_set_secure
	add	r0, sp, #40
	movw	r1, #0
	movw	r2, #32
	and	r1, r1, #255
	bl	_set_secure
	add	r0, sp, #72
	movw	r1, #0
	movw	r2, #32
	and	r1, r1, #255
	bl	_set_secure
	ldr	r0, [sp, #16]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	uECC_shared_secret, .Lfunc_end3-uECC_shared_secret
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym _set_secure
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym regularize_k
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym EccPoint_mult
	.addrsig_sym EccPoint_isZero
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals

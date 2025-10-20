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
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   @ -- Begin function rc4_drop_init
	.p2align	2
	.type	rc4_drop_init,%function
	.code	32                              @ @rc4_drop_init
rc4_drop_init:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r3
	mov	r8, r2
	mov	r9, r1
	mov	r5, r0
	mov	r0, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r0, [r5, r0]
	add	r0, r0, #1
	cmp	r0, #256
	bne	.LBB0_1
@ %bb.2:
	mov	r7, #0
	mov	r6, #0
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r4, [r5, r6]
	mov	r0, r6
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r9, r1]
	add	r1, r4, r7
	add	r7, r1, r0
	uxtb	r0, r7
	ldrb	r1, [r5, r0]
	strb	r1, [r5, r6]
	strb	r4, [r5, r0]
	add	r6, r6, #1
	cmp	r6, #256
	bne	.LBB0_3
@ %bb.4:
	mov	r0, #256
	mov	r1, #0
	strh	r1, [r5, r0]
	cmp	r10, #0
	beq	.LBB0_8
@ %bb.5:
	ldrb	r0, [r5, #256]
	ldrb	r1, [r5, #257]
.LBB0_6:                                @ =>This Inner Loop Header: Depth=1
	add	r0, r0, #1
	uxtb	r2, r0
	ldrb	r3, [r5, r2]
	add	r1, r3, r1
	uxtb	r7, r1
	ldrb	r6, [r5, r7]
	strb	r6, [r5, r2]
	strb	r3, [r5, r7]
	subs	r10, r10, #1
	bne	.LBB0_6
@ %bb.7:
	strb	r1, [r5, #257]
	strb	r0, [r5, #256]
.LBB0_8:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_drop_crypt                  @ -- Begin function rc4_drop_crypt
	.p2align	2
	.type	rc4_drop_crypt,%function
	.code	32                              @ @rc4_drop_crypt
rc4_drop_crypt:
	.fnstart
@ %bb.0:
	cmp	r2, #0
	bxeq	lr
.LBB1_1:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r0, #256]
	ldrb	r12, [r0, #257]
	add	lr, r3, #1
	uxtb	r3, lr
	ldrb	r4, [r0, r3]
	add	r12, r4, r12
	uxtb	r5, r12
	ldrb	r6, [r0, r5]
	strb	r6, [r0, r3]
	strb	r4, [r0, r5]
	ldrb	r3, [r0, r3]
	strb	lr, [r0, #256]
	strb	r12, [r0, #257]
	add	r3, r3, r4
	uxtb	r3, r3
	ldrb	r3, [r0, r3]
	ldrb	r6, [r1]
	eor	r3, r6, r3
	strb	r3, [r1], #1
	subs	r2, r2, #1
	bne	.LBB1_2
@ %bb.3:
	pop	{r4, r5, r6, lr}
	bx	lr
.Lfunc_end1:
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_drop_encrypt                @ -- Begin function rc4_drop_encrypt
	.p2align	2
	.type	rc4_drop_encrypt,%function
	.code	32                              @ @rc4_drop_encrypt
rc4_drop_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#268
	sub	sp, sp, #268
	mov	r11, r3
	str	r2, [sp, #4]                    @ 4-byte Spill
	mov	r5, r1
	mov	r10, r0
	ldr	r9, [sp, #304]
	mov	r0, #0
	add	r6, sp, #10
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r0, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #256
	bne	.LBB2_1
@ %bb.2:
	mov	r4, #0
	mov	r7, #0
.LBB2_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r8, [r6, r7]
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_uidivmod
	ldrb	r0, [r10, r1]
	add	r1, r8, r4
	add	r4, r1, r0
	uxtb	r0, r4
	ldrb	r1, [r6, r0]
	strb	r1, [r6, r7]
	strb	r8, [r6, r0]
	add	r7, r7, #1
	cmp	r7, #256
	bne	.LBB2_3
@ %bb.4:
	mov	r1, #256
	mov	r0, #0
	strh	r0, [r6, r1]
	mov	r1, #768
	mov	r2, #0
.LBB2_5:                                @ =>This Inner Loop Header: Depth=1
	add	r2, r2, #1
	uxtb	r3, r2
	ldrb	r7, [r6, r3]
	add	r0, r7, r0
	uxtb	r4, r0
	ldrb	r5, [r6, r4]
	strb	r5, [r6, r3]
	strb	r7, [r6, r4]
	subs	r1, r1, #1
	bne	.LBB2_5
@ %bb.6:
	strb	r0, [sp, #267]
	mov	r0, #0
	strb	r0, [sp, #266]
	mov	r0, r9
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	r2, r11
	bl	memcpy
	cmp	r11, #0
	beq	.LBB2_10
@ %bb.7:
	ldrb	r0, [sp, #266]
	ldrb	r1, [sp, #267]
.LBB2_8:                                @ =>This Inner Loop Header: Depth=1
	add	r0, r0, #1
	uxtb	r2, r0
	ldrb	r3, [r6, r2]
	add	r1, r3, r1
	uxtb	r7, r1
	ldrb	r5, [r6, r7]
	strb	r5, [r6, r2]
	strb	r3, [r6, r7]
	ldrb	r2, [r6, r2]
	add	r2, r2, r3
	uxtb	r2, r2
	ldrb	r2, [r6, r2]
	ldrb	r3, [r9]
	eor	r2, r3, r2
	strb	r2, [r9], #1
	subs	r11, r11, #1
	bne	.LBB2_8
@ %bb.9:
	strb	r1, [sp, #267]
	strb	r0, [sp, #266]
.LBB2_10:
	add	sp, sp, #268
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

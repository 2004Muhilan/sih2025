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
	.file	"rc4_standard.c"
	.globl	rc4_init                        @ -- Begin function rc4_init
	.p2align	2
	.type	rc4_init,%function
	.code	32                              @ @rc4_init
rc4_init:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	r4, r0
	mov	r8, r2
	mov	r9, r1
	mov	r0, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r0, [r4, r0]
	add	r0, r0, #1
	cmp	r0, #256
	bne	.LBB0_1
@ %bb.2:
	mov	r7, #0
	mov	r5, #0
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r6, [r4, r7]
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r9, r1]
	add	r1, r6, r5
	add	r5, r1, r0
	uxtb	r0, r5
	ldrb	r1, [r4, r0]
	strb	r1, [r4, r7]
	add	r7, r7, #1
	cmp	r7, #256
	strb	r6, [r4, r0]
	bne	.LBB0_3
@ %bb.4:
	mov	r0, #256
	mov	r1, #0
	strh	r1, [r4, r0]
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end0:
	.size	rc4_init, .Lfunc_end0-rc4_init
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_crypt                       @ -- Begin function rc4_crypt
	.p2align	2
	.type	rc4_crypt,%function
	.code	32                              @ @rc4_crypt
rc4_crypt:
	.fnstart
@ %bb.0:
	cmp	r2, #0
	bxeq	lr
.LBB1_1:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r0, #256]
	subs	r2, r2, #1
	ldrb	r12, [r0, #257]
	add	lr, r3, #1
	strb	lr, [r0, #256]
	uxtb	r3, lr
	ldrb	r4, [r0, r3]
	add	r12, r4, r12
	strb	r12, [r0, #257]
	uxtb	r5, r12
	ldrb	r6, [r0, r5]
	strb	r6, [r0, r3]
	strb	r4, [r0, r5]
	ldrb	r3, [r0, r3]
	ldrb	r6, [r1]
	add	r3, r3, r4
	uxtb	r3, r3
	ldrb	r3, [r0, r3]
	eor	r3, r6, r3
	strb	r3, [r1], #1
	bne	.LBB1_2
@ %bb.3:
	pop	{r4, r5, r6, lr}
	bx	lr
.Lfunc_end1:
	.size	rc4_crypt, .Lfunc_end1-rc4_crypt
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_encrypt                     @ -- Begin function rc4_encrypt
	.p2align	2
	.type	rc4_encrypt,%function
	.code	32                              @ @rc4_encrypt
rc4_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#268
	sub	sp, sp, #268
	ldr	r5, [sp, #304]
	add	r6, sp, #10
	mov	r10, r0
	mov	r11, r3
	mov	r9, r1
	mov	r0, #0
	str	r2, [sp, #4]                    @ 4-byte Spill
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r0, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #256
	bne	.LBB2_1
@ %bb.2:
	mov	r7, #0
	mov	r4, #0
.LBB2_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r8, [r6, r7]
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r10, r1]
	add	r1, r8, r4
	add	r4, r1, r0
	uxtb	r0, r4
	ldrb	r1, [r6, r0]
	strb	r1, [r6, r7]
	add	r7, r7, #1
	cmp	r7, #256
	strb	r8, [r6, r0]
	bne	.LBB2_3
@ %bb.4:
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	r0, r5
	mov	r2, r11
	bl	memcpy
	cmp	r11, #0
	beq	.LBB2_7
@ %bb.5:
	mov	r0, #0
	mov	r1, #0
.LBB2_6:                                @ =>This Inner Loop Header: Depth=1
	add	r1, r1, #1
	subs	r11, r11, #1
	uxtb	r2, r1
	ldrb	r3, [r6, r2]
	add	r0, r3, r0
	uxtb	r7, r0
	ldrb	r4, [r6, r7]
	strb	r4, [r6, r2]
	strb	r3, [r6, r7]
	ldrb	r2, [r6, r2]
	add	r2, r2, r3
	ldrb	r3, [r5]
	uxtb	r2, r2
	ldrb	r2, [r6, r2]
	eor	r2, r3, r2
	strb	r2, [r5], #1
	bne	.LBB2_6
.LBB2_7:
	add	sp, sp, #268
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	rc4_encrypt, .Lfunc_end2-rc4_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_decrypt                     @ -- Begin function rc4_decrypt
	.p2align	2
	.type	rc4_decrypt,%function
	.code	32                              @ @rc4_decrypt
rc4_decrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#268
	sub	sp, sp, #268
	ldr	r5, [sp, #304]
	add	r6, sp, #10
	mov	r10, r0
	mov	r11, r3
	mov	r9, r1
	mov	r0, #0
	str	r2, [sp, #4]                    @ 4-byte Spill
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r0, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #256
	bne	.LBB3_1
@ %bb.2:
	mov	r7, #0
	mov	r4, #0
.LBB3_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r8, [r6, r7]
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r10, r1]
	add	r1, r8, r4
	add	r4, r1, r0
	uxtb	r0, r4
	ldrb	r1, [r6, r0]
	strb	r1, [r6, r7]
	add	r7, r7, #1
	cmp	r7, #256
	strb	r8, [r6, r0]
	bne	.LBB3_3
@ %bb.4:
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	r0, r5
	mov	r2, r11
	bl	memcpy
	cmp	r11, #0
	beq	.LBB3_7
@ %bb.5:
	mov	r0, #0
	mov	r1, #0
.LBB3_6:                                @ =>This Inner Loop Header: Depth=1
	add	r1, r1, #1
	subs	r11, r11, #1
	uxtb	r2, r1
	ldrb	r3, [r6, r2]
	add	r0, r3, r0
	uxtb	r7, r0
	ldrb	r4, [r6, r7]
	strb	r4, [r6, r2]
	strb	r3, [r6, r7]
	ldrb	r2, [r6, r2]
	add	r2, r2, r3
	ldrb	r3, [r5]
	uxtb	r2, r2
	ldrb	r2, [r6, r2]
	eor	r2, r3, r2
	strb	r2, [r5], #1
	bne	.LBB3_6
.LBB3_7:
	add	sp, sp, #268
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

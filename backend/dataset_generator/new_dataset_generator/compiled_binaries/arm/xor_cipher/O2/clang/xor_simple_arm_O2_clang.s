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
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               @ -- Begin function xor_cipher_simple
	.p2align	2
	.type	xor_cipher_simple,%function
	.code	32                              @ @xor_cipher_simple
xor_cipher_simple:
	.fnstart
@ %bb.0:
	cmp	r1, #0
	bxeq	lr
.LBB0_1:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r3
	mov	r5, r2
	mov	r6, r1
	mov	r7, r0
	mov	r4, #0
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r7, r4]
	ldrb	r1, [r5, r1]
	eor	r0, r0, r1
	strb	r0, [r7, r4]
	add	r4, r4, #1
	cmp	r6, r4
	bne	.LBB0_2
@ %bb.3:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.Lfunc_end0:
	.size	xor_cipher_simple, .Lfunc_end0-xor_cipher_simple
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	xor_encrypt_simple              @ -- Begin function xor_encrypt_simple
	.p2align	2
	.type	xor_encrypt_simple,%function
	.code	32                              @ @xor_encrypt_simple
xor_encrypt_simple:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, [sp, #24]
	mov	r6, r1
	mov	r5, r2
	mov	r1, r0
	mov	r2, r6
	mov	r8, r3
	mov	r0, r7
	bl	memcpy
	cmp	r6, #0
	beq	.LBB1_3
@ %bb.1:
	mov	r4, #0
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r7, r4]
	ldrb	r1, [r5, r1]
	eor	r0, r0, r1
	strb	r0, [r7, r4]
	add	r4, r4, #1
	cmp	r6, r4
	bne	.LBB1_2
.LBB1_3:
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end1:
	.size	xor_encrypt_simple, .Lfunc_end1-xor_encrypt_simple
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	xor_decrypt_simple              @ -- Begin function xor_decrypt_simple
	.p2align	2
	.type	xor_decrypt_simple,%function
	.code	32                              @ @xor_decrypt_simple
xor_decrypt_simple:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, [sp, #24]
	mov	r6, r1
	mov	r5, r2
	mov	r1, r0
	mov	r2, r6
	mov	r8, r3
	mov	r0, r7
	bl	memcpy
	cmp	r6, #0
	beq	.LBB2_3
@ %bb.1:
	mov	r4, #0
.LBB2_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r7, r4]
	ldrb	r1, [r5, r1]
	eor	r0, r0, r1
	strb	r0, [r7, r4]
	add	r4, r4, #1
	cmp	r6, r4
	bne	.LBB2_2
.LBB2_3:
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end2:
	.size	xor_decrypt_simple, .Lfunc_end2-xor_decrypt_simple
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

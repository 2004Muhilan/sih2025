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
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             @ -- Begin function xor_cipher_rotating
	.p2align	2
	.type	xor_cipher_rotating,%function
	.code	32                              @ @xor_cipher_rotating
xor_cipher_rotating:
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
	ldrb	r2, [r5, r1]
	eor	r0, r0, r2
	strb	r0, [r7, r4]
	add	r4, r4, #1
	lsl	r0, r2, #1
	cmp	r6, r4
	orr	r0, r0, r2, lsr #7
	strb	r0, [r5, r1]
	bne	.LBB0_2
@ %bb.3:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	xor_encrypt_rotating            @ -- Begin function xor_encrypt_rotating
	.p2align	2
	.type	xor_encrypt_rotating,%function
	.code	32                              @ @xor_encrypt_rotating
xor_encrypt_rotating:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.pad	#256
	sub	sp, sp, #256
	ldr	r6, [sp, #288]
	mov	r5, r1
	mov	r4, r2
	mov	r1, r0
	mov	r2, r5
	mov	r8, r3
	mov	r0, r6
	bl	memcpy
	mov	r7, sp
	mov	r1, r4
	mov	r0, r7
	mov	r2, r8
	bl	memcpy
	cmp	r5, #0
	beq	.LBB1_3
@ %bb.1:
	mov	r4, #0
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r6, r4]
	ldrb	r2, [r7, r1]
	eor	r0, r0, r2
	strb	r0, [r6, r4]
	add	r4, r4, #1
	lsl	r0, r2, #1
	cmp	r5, r4
	orr	r0, r0, r2, lsr #7
	strb	r0, [r7, r1]
	bne	.LBB1_2
.LBB1_3:
	add	sp, sp, #256
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end1:
	.size	xor_encrypt_rotating, .Lfunc_end1-xor_encrypt_rotating
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	xor_decrypt_rotating            @ -- Begin function xor_decrypt_rotating
	.p2align	2
	.type	xor_decrypt_rotating,%function
	.code	32                              @ @xor_decrypt_rotating
xor_decrypt_rotating:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.pad	#256
	sub	sp, sp, #256
	ldr	r6, [sp, #288]
	mov	r5, r1
	mov	r4, r2
	mov	r1, r0
	mov	r2, r5
	mov	r8, r3
	mov	r0, r6
	bl	memcpy
	mov	r7, sp
	mov	r1, r4
	mov	r0, r7
	mov	r2, r8
	bl	memcpy
	cmp	r5, #0
	beq	.LBB2_3
@ %bb.1:
	mov	r4, #0
.LBB2_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r6, r4]
	ldrb	r2, [r7, r1]
	eor	r0, r0, r2
	strb	r0, [r6, r4]
	add	r4, r4, #1
	lsl	r0, r2, #1
	cmp	r5, r4
	orr	r0, r0, r2, lsr #7
	strb	r0, [r7, r1]
	bne	.LBB2_2
.LBB2_3:
	add	sp, sp, #256
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end2:
	.size	xor_decrypt_rotating, .Lfunc_end2-xor_decrypt_rotating
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

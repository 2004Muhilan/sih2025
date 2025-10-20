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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [r11, #-8]
	cmp	r0, r1
	bhs	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	bl	__aeabi_uidivmod
                                        @ kill: def $r2 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, r1
	ldrb	r2, [r0]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #4]
	add	r1, r0, r1
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	mov	sp, r11
	pop	{r11, pc}
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	bl	memcpy
	ldr	r0, [r11, #8]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	xor_cipher_simple
	mov	sp, r11
	pop	{r11, pc}
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	bl	memcpy
	ldr	r0, [r11, #8]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	xor_cipher_simple
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	xor_decrypt_simple, .Lfunc_end2-xor_decrypt_simple
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym xor_cipher_simple
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals

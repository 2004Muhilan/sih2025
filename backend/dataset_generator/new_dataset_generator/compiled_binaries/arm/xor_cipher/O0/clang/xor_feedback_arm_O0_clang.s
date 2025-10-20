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
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             @ -- Begin function xor_cipher_feedback
	.p2align	2
	.type	xor_cipher_feedback,%function
	.code	32                              @ @xor_cipher_feedback
xor_cipher_feedback:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#40
	sub	sp, sp, #40
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #8]
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB0_2
@ %bb.1:
	ldr	r0, [r11, #8]
	ldrb	r0, [r0]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_3
.LBB0_2:
	movw	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_3
.LBB0_3:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	strb	r0, [r11, #-17]
	movw	r0, #0
	str	r0, [sp, #16]
.LBB0_4:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-8]
	cmp	r0, r1
	bhs	.LBB0_7
@ %bb.5:                                @   in Loop: Header=BB0_4 Depth=1
	ldr	r0, [r11, #-12]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-16]
	bl	__aeabi_uidivmod
                                        @ kill: def $r2 killed $r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldrb	r1, [r11, #-17]
	eor	r0, r0, r1
	strb	r0, [sp, #15]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #16]
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #14]
	ldrb	r2, [sp, #15]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #16]
	add	r1, r0, r1
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
	ldrb	r0, [sp, #14]
	strb	r0, [r11, #-17]
@ %bb.6:                                @   in Loop: Header=BB0_4 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB0_4
.LBB0_7:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	xor_cipher_feedback, .Lfunc_end0-xor_cipher_feedback
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	xor_encrypt_feedback            @ -- Begin function xor_encrypt_feedback
	.p2align	2
	.type	xor_encrypt_feedback,%function
	.code	32                              @ @xor_encrypt_feedback
xor_encrypt_feedback:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	mov	r12, r0
	ldr	r0, [r11, #12]
	ldr	r0, [r11, #8]
	str	r12, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	strb	r0, [sp, #7]
	ldr	r0, [r11, #12]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-8]
	bl	memcpy
	ldr	r0, [r11, #12]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	add	r12, sp, #7
	str	r12, [sp]
	bl	xor_cipher_feedback
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	xor_encrypt_feedback, .Lfunc_end1-xor_encrypt_feedback
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	xor_decrypt_feedback            @ -- Begin function xor_decrypt_feedback
	.p2align	2
	.type	xor_decrypt_feedback,%function
	.code	32                              @ @xor_decrypt_feedback
xor_decrypt_feedback:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	mov	r12, r0
	ldr	r0, [r11, #12]
	ldr	r0, [r11, #8]
	str	r12, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [sp, #16]
	strb	r0, [sp, #15]
	ldrb	r0, [sp, #15]
	strb	r0, [sp, #14]
	movw	r0, #0
	str	r0, [sp, #8]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [r11, #-8]
	cmp	r0, r1
	bhs	.LBB2_4
@ %bb.2:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r11, #-12]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #16]
	bl	__aeabi_uidivmod
                                        @ kill: def $r2 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldrb	r1, [sp, #14]
	eor	r0, r0, r1
	strb	r0, [sp, #7]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #14]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldrb	r1, [sp, #7]
	eor	r0, r0, r1
	ldr	r1, [r11, #12]
	ldr	r2, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB2_1
.LBB2_4:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym xor_cipher_feedback
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals

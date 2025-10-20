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
	movw	r0, #0
	str	r0, [sp, #20]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-8]
	cmp	r0, r1
	bhs	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-12]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-16]
	bl	__aeabi_uidivmod
                                        @ kill: def $r2 killed $r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldrb	r0, [r0, r1]
	strb	r0, [sp, #19]
	ldrb	r3, [sp, #19]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #20]
	ldrb	r0, [r1, r2]
	eor	r0, r0, r3
	strb	r0, [r1, r2]
	ldrb	r0, [sp, #19]
	mov	r1, #1
	bl	rotate_left
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [r11, #-12]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-16]
	bl	__aeabi_uidivmod
                                        @ kill: def $r2 killed $r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	r2, r1
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function rotate_left
	.type	rotate_left,%function
	.code	32                              @ @rotate_left
rotate_left:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	strb	r0, [sp, #7]
	str	r1, [sp]
	ldrb	r0, [sp, #7]
	ldr	r1, [sp]
	lsl	r0, r0, r1
	ldrb	r1, [sp, #7]
	ldr	r3, [sp]
	movw	r2, #8
	sub	r2, r2, r3
	asr	r1, r1, r2
	orr	r0, r0, r1
	and	r0, r0, #255
	add	sp, sp, #8
	bx	lr
.Lfunc_end1:
	.size	rotate_left, .Lfunc_end1-rotate_left
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
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#272
	sub	sp, sp, #272
	ldr	r12, [r11, #8]
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	str	r3, [r11, #-24]
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-16]
	bl	memcpy
	mov	r0, sp
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-24]
	bl	memcpy
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #-16]
	mov	r2, sp
	ldr	r3, [r11, #-24]
	bl	xor_cipher_rotating
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end2:
	.size	xor_encrypt_rotating, .Lfunc_end2-xor_encrypt_rotating
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	ldr	r12, [r11, #8]
	str	r12, [sp]
	bl	xor_encrypt_rotating
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	xor_decrypt_rotating, .Lfunc_end3-xor_decrypt_rotating
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym xor_cipher_rotating
	.addrsig_sym rotate_left
	.addrsig_sym xor_encrypt_rotating
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals

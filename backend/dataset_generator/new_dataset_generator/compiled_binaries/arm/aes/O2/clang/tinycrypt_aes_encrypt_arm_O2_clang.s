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
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       @ -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,%function
	.code	32                              @ @tc_aes128_set_encrypt_key
tc_aes128_set_encrypt_key:
	.fnstart
@ %bb.0:
	cmp	r0, #0
	mov	r2, #0
	cmpne	r1, #0
	bne	.LBB0_2
@ %bb.1:
	mov	r0, r2
	bx	lr
.LBB0_2:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	ldr	r2, [r1]
	rev	r2, r2
	str	r2, [r0]
	ldr	r2, [r1, #4]
	rev	r2, r2
	str	r2, [r0, #4]
	ldr	r2, [r1, #8]
	rev	r2, r2
	str	r2, [r0, #8]
	ldr	r1, [r1, #12]
	rev	r2, r1
	str	r2, [r0, #12]
	ldr	r12, .LCPI0_0
	mov	r1, #0
	ldr	lr, .LCPI0_1
.LPC0_0:
	add	r12, pc, r12
.LPC0_1:
	add	lr, pc, lr
	b	.LBB0_4
.LBB0_3:                                @   in Loop: Header=BB0_4 Depth=1
	mov	r3, r0
	ldr	r4, [r3, r1, lsl #2]!
	add	r1, r1, #1
	cmp	r1, #40
	eor	r2, r4, r2
	str	r2, [r3, #16]
	beq	.LBB0_6
.LBB0_4:                                @ =>This Inner Loop Header: Depth=1
	add	r3, r1, #4
	tst	r3, #3
	bne	.LBB0_3
@ %bb.5:                                @   in Loop: Header=BB0_4 Depth=1
	ror	r4, r2, #24
	uxtb	r2, r2, ror #24
	ubfx	r5, r4, #16, #8
	ldrb	r2, [lr, r2]
	ldrb	r6, [lr, r4, lsr #24]
	ldrb	r5, [lr, r5]
	ubfx	r4, r4, #8, #8
	ldr	r3, [r12, r3]
	ldrb	r4, [lr, r4]
	lsl	r5, r5, #16
	orr	r5, r5, r6, lsl #24
	orr	r4, r5, r4, lsl #8
	orr	r2, r4, r2
	eor	r2, r2, r3
	b	.LBB0_3
.LBB0_6:
	mov	r2, #1
	pop	{r4, r5, r6, lr}
	mov	r0, r2
	bx	lr
	.p2align	2
@ %bb.7:
.LCPI0_0:
	.long	.L__const.tc_aes128_set_encrypt_key.rconst-(.LPC0_0+8)
.LCPI0_1:
	.long	sbox-(.LPC0_1+8)
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	tc_aes_encrypt                  @ -- Begin function tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,%function
	.code	32                              @ @tc_aes_encrypt
tc_aes_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#100
	sub	sp, sp, #100
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.LBB1_2
@ %bb.1:
	cmp	r1, #0
	mov	r4, r2
	mov	r2, r1
	cmpne	r4, #0
	bne	.LBB1_3
.LBB1_2:
	add	sp, sp, #100
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB1_3:
	add	r0, sp, #68
	mov	r1, #16
	mov	r3, #16
	str	r5, [sp]                        @ 4-byte Spill
	bl	_copy
	ldrb	r3, [sp, #80]
	ldrb	r7, [sp, #76]
	ldmib	r4, {r0, r1, r2}
	eor	r3, r3, r2, lsr #24
	str	r3, [sp, #52]                   @ 4-byte Spill
	eor	r3, r7, r1, lsr #24
	ldrb	r6, [sp, #82]
	ldr	lr, [r4]
	str	r3, [sp, #60]                   @ 4-byte Spill
	ubfx	r3, r2, #8, #8
	eor	r3, r6, r3
	str	r3, [sp, #40]                   @ 4-byte Spill
	ldrb	r3, [sp, #81]
	ubfx	r7, r2, #16, #8
	eor	r3, r3, r7
	str	r3, [sp, #36]                   @ 4-byte Spill
	ldrb	r3, [sp, #78]
	ubfx	r7, r1, #8, #8
	eor	r3, r3, r7
	str	r3, [sp, #48]                   @ 4-byte Spill
	ldrb	r3, [sp, #77]
	ubfx	r7, r1, #16, #8
	str	r4, [sp, #4]                    @ 4-byte Spill
	eor	r9, r3, r7
	ldrb	r3, [sp, #74]
	ubfx	r7, r0, #8, #8
	eor	r11, r3, r7
	ldrb	r3, [sp, #73]
	ubfx	r7, r0, #16, #8
	ldrb	r6, [sp, #70]
	eor	r5, r3, r7
	ldrb	r3, [sp, #71]
	ldrb	r7, [sp, #69]
	eor	r3, r3, lr
	strb	r3, [sp, #71]
	ldrb	r4, [sp, #68]
	uxtb	r3, r3
	str	r3, [sp, #44]                   @ 4-byte Spill
	ldrb	r3, [sp, #83]
	eor	r2, r3, r2
	uxtb	r2, r2
	str	r2, [sp, #28]                   @ 4-byte Spill
	ldrb	r2, [sp, #79]
	eor	r1, r2, r1
	uxtb	r1, r1
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldrb	r1, [sp, #75]
	eor	r1, r1, r0
	uxtb	r1, r1
	str	r1, [sp, #56]                   @ 4-byte Spill
	ldrb	r1, [sp, #72]
	eor	r0, r1, r0, lsr #24
	strb	r0, [sp, #72]
	uxtb	r10, r0
	eor	r0, r6, lr, lsr #8
	strb	r0, [sp, #70]
	uxtb	r8, r0
	eor	r0, r7, lr, lsr #16
	strb	r0, [sp, #69]
	uxtb	r12, r0
	eor	r0, r4, lr, lsr #24
	strb	r0, [sp, #68]
	uxtb	lr, r0
	mov	r0, #0
.LBB1_4:                                @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r2, .LCPI1_0
	ldr	r1, [sp, #40]                   @ 4-byte Reload
.LPC1_0:
	add	r2, pc, r2
	ldrb	r0, [r2, lr]
	ldrb	r6, [r2, r11]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldrb	r0, [r2, r12]
	ldrb	r12, [r2, r5]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldrb	r0, [r2, r8]
	ldr	r8, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldrb	r8, [r2, r8]
	str	r12, [sp, #8]                   @ 4-byte Spill
	ldrb	r0, [r2, r0]
	strb	r8, [sp, #83]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldrb	r0, [r2, r10]
	ldrb	r10, [r2, r9]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	strb	r8, [sp, #87]
	add	r8, sp, #68
	strb	r10, [sp, #77]
	ldrb	r5, [r2, r0]
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	strb	r10, [sp, #89]
	add	r10, sp, #84
	ldrb	r4, [r2, r1]
	ldrb	r7, [r2, r0]
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	strb	r12, [sp, #73]
	ldrb	r3, [r2, r0]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r3, [sp, #60]                   @ 4-byte Spill
	strb	r3, [sp, #78]
	ldrb	r11, [r2, r0]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	ldr	r12, [sp, #24]                  @ 4-byte Reload
	ldrb	r9, [r2, r0]
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	strb	r1, [sp, #71]
	strb	r1, [sp, #91]
	mov	r1, #16
	ldrb	lr, [r2, r0]
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	strb	r0, [sp, #70]
	strb	r0, [sp, #94]
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	strb	r0, [sp, #86]
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	strb	r0, [sp, #85]
	mov	r0, r8
	strb	r2, [sp, #72]
	strb	r2, [sp, #88]
	mov	r2, r10
	strb	r3, [sp, #69]
	strb	r3, [sp, #97]
	mov	r3, #16
	strb	r4, [sp, #82]
	strb	lr, [sp, #81]
	strb	r9, [sp, #80]
	strb	r11, [sp, #79]
	strb	r7, [sp, #76]
	strb	r5, [sp, #75]
	strb	r6, [sp, #74]
	strb	r12, [sp, #68]
	strb	r11, [sp, #99]
	strb	r6, [sp, #98]
	strb	r9, [sp, #96]
	strb	r5, [sp, #95]
	strb	lr, [sp, #93]
	strb	r7, [sp, #92]
	strb	r4, [sp, #90]
	strb	r12, [sp, #84]
	bl	_copy
	ldrb	r0, [sp, #68]
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #69]
	bl	_double_byte
	ldrb	r2, [sp, #70]
	eor	r0, r0, r5
	ldrb	r3, [sp, #71]
	eor	r0, r0, r2
	ldrb	r1, [sp, #69]
	eor	r0, r0, r3
	ldrb	r4, [sp, #68]
	eor	r0, r0, r1
	strb	r0, [sp, #84]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #70]
	bl	_double_byte
	eor	r3, r5, r4
	ldrb	r2, [sp, #71]
	eor	r0, r3, r0
	ldrb	r1, [sp, #70]
	eor	r0, r0, r2
	ldrb	r6, [sp, #68]
	eor	r0, r0, r1
	strb	r0, [sp, #85]
	mov	r0, r1
	ldrb	r7, [sp, #69]
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #71]
	bl	_double_byte
	eor	r2, r7, r6
	ldrb	r1, [sp, #68]
	eor	r2, r2, r5
	ldrb	r3, [sp, #71]
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #86]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #68]
	ldrb	r1, [sp, #71]
	ldrb	r3, [sp, #69]
	eor	r0, r2, r0
	ldrb	r4, [sp, #70]
	eor	r5, r0, r3
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [sp, #72]
	eor	r2, r5, r4
	eor	r0, r2, r0
	strb	r0, [sp, #87]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #73]
	bl	_double_byte
	ldrb	r2, [sp, #74]
	eor	r0, r0, r5
	ldrb	r3, [sp, #75]
	eor	r0, r0, r2
	ldrb	r1, [sp, #73]
	eor	r0, r0, r3
	ldrb	r4, [sp, #72]
	eor	r0, r0, r1
	strb	r0, [sp, #88]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #74]
	bl	_double_byte
	eor	r3, r5, r4
	ldrb	r2, [sp, #75]
	eor	r0, r3, r0
	ldrb	r1, [sp, #74]
	eor	r0, r0, r2
	ldrb	r6, [sp, #72]
	eor	r0, r0, r1
	strb	r0, [sp, #89]
	mov	r0, r1
	ldrb	r7, [sp, #73]
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #75]
	bl	_double_byte
	eor	r2, r7, r6
	ldrb	r1, [sp, #72]
	eor	r2, r2, r5
	ldrb	r3, [sp, #75]
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #90]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #72]
	ldrb	r1, [sp, #75]
	ldrb	r3, [sp, #73]
	eor	r0, r2, r0
	ldrb	r4, [sp, #74]
	eor	r5, r0, r3
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [sp, #76]
	eor	r2, r5, r4
	eor	r0, r2, r0
	strb	r0, [sp, #91]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #77]
	bl	_double_byte
	ldrb	r2, [sp, #78]
	eor	r0, r0, r5
	ldrb	r3, [sp, #79]
	eor	r0, r0, r2
	ldrb	r1, [sp, #77]
	eor	r0, r0, r3
	ldrb	r4, [sp, #76]
	eor	r0, r0, r1
	strb	r0, [sp, #92]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #78]
	bl	_double_byte
	eor	r3, r5, r4
	ldrb	r2, [sp, #79]
	eor	r0, r3, r0
	ldrb	r1, [sp, #78]
	eor	r0, r0, r2
	ldrb	r6, [sp, #76]
	eor	r0, r0, r1
	strb	r0, [sp, #93]
	mov	r0, r1
	ldrb	r7, [sp, #77]
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #79]
	bl	_double_byte
	eor	r2, r7, r6
	ldrb	r1, [sp, #76]
	eor	r2, r2, r5
	ldrb	r3, [sp, #79]
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #94]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #76]
	ldrb	r1, [sp, #79]
	ldrb	r3, [sp, #77]
	eor	r0, r2, r0
	ldrb	r4, [sp, #78]
	eor	r5, r0, r3
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [sp, #80]
	eor	r2, r5, r4
	eor	r0, r2, r0
	strb	r0, [sp, #95]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #81]
	bl	_double_byte
	ldrb	r2, [sp, #82]
	eor	r0, r0, r5
	ldrb	r3, [sp, #83]
	eor	r0, r0, r2
	ldrb	r1, [sp, #81]
	eor	r0, r0, r3
	ldrb	r4, [sp, #80]
	eor	r0, r0, r1
	strb	r0, [sp, #96]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #82]
	bl	_double_byte
	eor	r3, r5, r4
	ldrb	r2, [sp, #83]
	eor	r0, r3, r0
	ldrb	r1, [sp, #82]
	eor	r0, r0, r2
	ldrb	r6, [sp, #80]
	eor	r0, r0, r1
	strb	r0, [sp, #97]
	mov	r0, r1
	ldrb	r7, [sp, #81]
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #83]
	bl	_double_byte
	eor	r2, r7, r6
	ldrb	r1, [sp, #80]
	eor	r2, r2, r5
	ldrb	r3, [sp, #83]
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #98]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #80]
	ldrb	r3, [sp, #81]
	ldrb	r1, [sp, #83]
	eor	r0, r2, r0
	ldrb	r7, [sp, #82]
	eor	r0, r0, r3
	eor	r4, r0, r7
	mov	r0, r1
	bl	_double_byte
	eor	r0, r4, r0
	strb	r0, [sp, #99]
	mov	r0, r8
	mov	r1, #16
	mov	r2, r10
	mov	r3, #16
	bl	_copy
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldrb	r5, [sp, #71]
	add	r2, r0, r1
	ldrb	r0, [sp, #75]
	ldrb	r7, [sp, #69]
	ldr	r1, [r2, #16]
	ldr	r3, [r2, #20]
	eor	r5, r5, r1
	strb	r5, [sp, #71]
	eor	r0, r0, r3
	strb	r0, [sp, #75]
	uxtb	r5, r5
	ldrb	r6, [sp, #70]
	uxtb	r0, r0
	str	r5, [sp, #44]                   @ 4-byte Spill
	ldrb	r5, [sp, #74]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldrb	r0, [sp, #68]
	ubfx	r4, r3, #8, #8
	eor	r11, r5, r4
	ldrb	r5, [sp, #73]
	ubfx	r4, r3, #16, #8
	eor	lr, r0, r1, lsr #24
	eor	r5, r5, r4
	ubfx	r4, r1, #8, #8
	eor	r8, r6, r4
	ubfx	r6, r1, #16, #8
	ldr	r0, [r2, #24]
	eor	r12, r7, r6
	ldrb	r1, [sp, #76]
	ldrb	r7, [sp, #72]
	eor	r1, r1, r0, lsr #24
	str	r1, [sp, #60]                   @ 4-byte Spill
	strb	r1, [sp, #76]
	eor	r10, r7, r3, lsr #24
	ldrb	r1, [sp, #77]
	strb	lr, [sp, #68]
	strb	r10, [sp, #72]
	strb	r12, [sp, #69]
	strb	r8, [sp, #70]
	strb	r5, [sp, #73]
	strb	r11, [sp, #74]
	ubfx	r3, r0, #16, #8
	eor	r9, r1, r3
	ldrb	r1, [sp, #78]
	strb	r9, [sp, #77]
	ubfx	r3, r0, #8, #8
	eor	r1, r1, r3
	str	r1, [sp, #48]                   @ 4-byte Spill
	strb	r1, [sp, #78]
	ldrb	r1, [sp, #79]
	eor	r0, r1, r0
	strb	r0, [sp, #79]
	ldrb	r1, [sp, #80]
	uxtb	r0, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [r2, #28]
	eor	r1, r1, r0, lsr #24
	str	r1, [sp, #52]                   @ 4-byte Spill
	strb	r1, [sp, #80]
	ldrb	r1, [sp, #81]
	ubfx	r2, r0, #16, #8
	eor	r1, r1, r2
	str	r1, [sp, #36]                   @ 4-byte Spill
	strb	r1, [sp, #81]
	ldrb	r1, [sp, #82]
	ubfx	r2, r0, #8, #8
	eor	r1, r1, r2
	str	r1, [sp, #40]                   @ 4-byte Spill
	strb	r1, [sp, #82]
	ldrb	r1, [sp, #83]
	eor	r0, r1, r0
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	strb	r0, [sp, #83]
	add	r1, r1, #16
	uxtb	r0, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	cmp	r1, #144
	mov	r0, r1
	bne	.LBB1_4
@ %bb.5:
	ldr	r2, .LCPI1_1
.LPC1_1:
	add	r2, pc, r2
	ldrb	r1, [r2, r8]
	ldrb	r0, [r2, lr]
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldrb	r0, [r2, r12]
	ldrb	r1, [r2, r1]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	str	r1, [sp, #44]                   @ 4-byte Spill
	ldrb	r1, [r2, r10]
	ldrb	r10, [r2, r0]
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldrb	r12, [r2, r5]
	ldrb	r5, [r2, r11]
	ldrb	r11, [r2, r0]
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r8, [sp, #28]                   @ 4-byte Reload
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldrb	r3, [r2, r0]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	str	r3, [sp, #60]                   @ 4-byte Spill
	ldrb	r6, [r2, r0]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldrb	r4, [r2, r1]
	ldrb	r9, [r2, r9]
	ldrb	r7, [r2, r0]
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldrb	r8, [r2, r8]
	str	r12, [sp, #12]                  @ 4-byte Spill
	ldrb	lr, [r2, r0]
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	strb	r6, [sp, #79]
	strb	r6, [sp, #99]
	add	r6, sp, #68
	strb	r0, [sp, #69]
	strb	r0, [sp, #97]
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	strb	r3, [sp, #78]
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	strb	r0, [sp, #86]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	strb	r2, [sp, #72]
	strb	r2, [sp, #88]
	add	r2, sp, #84
	strb	r12, [sp, #73]
	ldr	r12, [sp, #64]                  @ 4-byte Reload
	strb	r0, [sp, #85]
	mov	r0, r6
	strb	r1, [sp, #71]
	strb	r1, [sp, #91]
	mov	r1, #16
	strb	r3, [sp, #70]
	strb	r3, [sp, #94]
	mov	r3, #16
	strb	r8, [sp, #83]
	strb	r4, [sp, #82]
	strb	lr, [sp, #81]
	strb	r7, [sp, #80]
	strb	r9, [sp, #77]
	strb	r11, [sp, #76]
	strb	r10, [sp, #75]
	strb	r5, [sp, #74]
	strb	r12, [sp, #68]
	strb	r5, [sp, #98]
	strb	r7, [sp, #96]
	strb	r10, [sp, #95]
	strb	lr, [sp, #93]
	strb	r11, [sp, #92]
	strb	r4, [sp, #90]
	strb	r9, [sp, #89]
	strb	r8, [sp, #87]
	strb	r12, [sp, #84]
	bl	_copy
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	ldrb	r0, [sp, #68]
	ldrb	r1, [sp, #69]
	ldr	r7, [r4, #160]
	ldrb	r2, [sp, #70]
	ldr	r5, [r4, #164]
	eor	r0, r0, r7, lsr #24
	strb	r0, [sp, #68]
	eor	r0, r1, r7, lsr #16
	ldrb	r1, [sp, #72]
	strb	r0, [sp, #69]
	eor	r0, r2, r7, lsr #8
	strb	r0, [sp, #70]
	eor	r0, r1, r5, lsr #24
	ldrb	r1, [sp, #74]
	strb	r0, [sp, #72]
	eor	r1, r1, r5, lsr #8
	ldr	r0, [r4, #168]
	strb	r1, [sp, #74]
	ldrb	r1, [sp, #76]
	ldrb	r3, [sp, #71]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #76]
	ldrb	r1, [sp, #77]
	eor	r3, r3, r7
	ldrb	r2, [sp, #73]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #77]
	ldrb	r1, [sp, #78]
	eor	r2, r2, r5, lsr #16
	strb	r3, [sp, #71]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #78]
	ldrb	r1, [sp, #79]
	ldrb	r3, [sp, #75]
	eor	r0, r1, r0
	strb	r0, [sp, #79]
	ldr	r0, [r4, #172]
	eor	r3, r3, r5
	ldrb	r1, [sp, #80]
	strb	r3, [sp, #75]
	mov	r3, #16
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #80]
	ldrb	r1, [sp, #81]
	strb	r2, [sp, #73]
	mov	r2, r6
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #81]
	ldrb	r1, [sp, #82]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #82]
	ldrb	r1, [sp, #83]
	eor	r0, r1, r0
	strb	r0, [sp, #83]
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r1, #16
	bl	_copy
	mov	r0, r6
	mov	r1, #0
	mov	r2, #16
	bl	_set
	mov	r0, #1
	add	sp, sp, #100
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.6:
.LCPI1_0:
	.long	sbox-(.LPC1_0+8)
.LCPI1_1:
	.long	sbox-(.LPC1_1+8)
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,%object @ @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",%progbits
	.p2align	2, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.long	0                               @ 0x0
	.long	16777216                        @ 0x1000000
	.long	33554432                        @ 0x2000000
	.long	67108864                        @ 0x4000000
	.long	134217728                       @ 0x8000000
	.long	268435456                       @ 0x10000000
	.long	536870912                       @ 0x20000000
	.long	1073741824                      @ 0x40000000
	.long	2147483648                      @ 0x80000000
	.long	452984832                       @ 0x1b000000
	.long	905969664                       @ 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,%object                    @ @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals

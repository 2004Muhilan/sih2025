	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"rsa_extended_gcd.c"
	.text
	.global	__aeabi_ldivmod
	.align	1
	.global	rsa_extended_gcd
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_extended_gcd, %function
rsa_extended_gcd:
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	strd	r0, [r7, #16]
	strd	r2, [r7, #8]
	ldr	r3, [r7, #96]
	str	r3, [r7, #4]
	ldr	r3, [r7, #100]
	str	r3, [r7]
	ldr	r2, .L6
.LPIC0:
	add	r2, pc
	ldr	r3, .L6+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	mov	r3, #0
	ldrd	r2, [r7, #16]
	orrs	r3, r3, r2
	bne	.L2
	ldr	r1, [r7, #4]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1]
	ldr	r1, [r7]
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r1]
	ldrd	r2, [r7, #8]
	b	.L4
.L2:
	ldrd	r0, [r7, #8]
	ldrd	r2, [r7, #16]
	bl	__aeabi_ldivmod(PLT)
	mov	r0, r2
	mov	r1, r3
	add	r3, r7, #32
	str	r3, [sp, #4]
	add	r3, r7, #24
	str	r3, [sp]
	ldrd	r2, [r7, #16]
	bl	rsa_extended_gcd(PLT)
	strd	r0, [r7, #40]
	ldrd	r8, [r7, #32]
	ldrd	r2, [r7, #16]
	ldrd	r0, [r7, #8]
	bl	__aeabi_ldivmod(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [r7, #24]
	mul	ip, r2, r1
	mul	r6, r0, r3
	add	r6, r6, ip
	umull	r4, r5, r0, r2
	adds	r3, r6, r5
	mov	r5, r3
	subs	r10, r8, r4
	sbc	fp, r9, r5
	ldr	r3, [r7, #4]
	strd	r10, [r3]
	ldrd	r2, [r7, #24]
	ldr	r1, [r7]
	strd	r2, [r1]
	ldrd	r2, [r7, #40]
.L4:
	ldr	r0, .L6+8
.LPIC1:
	add	r0, pc
	ldr	r1, .L6+4
	ldr	r1, [r0, r1]
	ldr	r0, [r1]
	ldr	r1, [r7, #52]
	eors	r0, r1, r0
	mov	r1, #0
	beq	.L5
	bl	__stack_chk_fail(PLT)
.L5:
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L7:
	.align	2
.L6:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

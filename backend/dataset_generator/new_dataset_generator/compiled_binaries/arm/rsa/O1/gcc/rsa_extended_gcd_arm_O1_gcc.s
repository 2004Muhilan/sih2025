	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
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
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	mov	r4, r0
	mov	r5, r1
	mov	r7, r2
	mov	r6, r3
	ldr	r10, [sp, #80]
	ldr	r9, [sp, #84]
	ldr	r2, .L8
.LPIC1:
	add	r2, pc
	ldr	r3, .L8+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	orrs	r3, r0, r1
	itt	eq
	moveq	r8, #1
	moveq	fp, #0
	bne	.L6
.L2:
	str	r4, [r10]
	str	r5, [r10, #4]
	str	r8, [r9]
	str	fp, [r9, #4]
	ldr	r2, .L8+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L8+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L7
	mov	r0, r7
	mov	r1, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L6:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_ldivmod(PLT)
	mov	r0, r2
	mov	r1, r3
	add	r3, sp, #24
	str	r3, [sp, #4]
	add	r3, sp, #16
	str	r3, [sp]
	mov	r2, r4
	mov	r3, r5
	bl	rsa_extended_gcd(PLT)
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	r8, [sp, #16]
	ldr	fp, [sp, #20]
	mov	r2, r4
	mov	r3, r5
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_ldivmod(PLT)
	mul	r3, r0, fp
	mla	r3, r8, r1, r3
	umull	r0, r2, r0, r8
	add	r3, r3, r2
	ldr	r4, [sp, #24]
	subs	r4, r4, r0
	ldr	r5, [sp, #28]
	sbc	r5, r5, r3
	ldr	r7, [sp, #8]
	ldr	r6, [sp, #12]
	b	.L2
.L7:
	bl	__stack_chk_fail(PLT)
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

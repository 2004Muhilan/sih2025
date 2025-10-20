	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"custom_rsa.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.global	mod_exp
	.syntax unified
	.thumb
	.thumb_func
	.type	mod_exp, %function
mod_exp:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r2
	mov	fp, r3
	ldrd	r8, [sp, #40]
	movs	r7, #1
	movs	r6, #0
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_uldivmod(PLT)
	mov	r4, r2
	mov	r5, r3
.L2:
	orrs	r3, r10, fp
	bne	.L4
	mov	r0, r7
	mov	r1, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L4:
	tst	r10, #1
	beq	.L3
	muls	r6, r4, r6
	mov	r2, r8
	mla	r6, r7, r5, r6
	mov	r3, r9
	umull	r0, r1, r4, r7
	add	r1, r1, r6
	bl	__aeabi_uldivmod(PLT)
	mov	r7, r2
	mov	r6, r3
.L3:
	muls	r5, r4, r5
	lsr	r10, r10, #1
	umull	r0, r4, r4, r4
	mov	r2, r8
	mov	r3, r9
	orr	r10, r10, fp, lsl #31
	lsr	fp, fp, #1
	add	r1, r4, r5, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r4, r2
	mov	r5, r3
	b	.L2
	.size	mod_exp, .-mod_exp
	.global	__aeabi_ldivmod
	.align	1
	.global	extended_gcd
	.syntax unified
	.thumb
	.thumb_func
	.type	extended_gcd, %function
extended_gcd:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	mov	r0, r2
	ldr	r2, .L9
	mov	r5, r1
	mov	r1, r3
	ldr	r3, .L9+4
.LPIC1:
	add	r2, pc
	sub	sp, sp, #36
	ldr	r3, [r2, r3]
	ldrd	r8, r7, [sp, #64]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	orrs	r3, r4, r5
	beq	.L8
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod(PLT)
	mov	r6, r0
	mov	r9, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, r4
	add	r3, sp, #16
	str	r3, [sp, #4]
	add	r3, sp, #8
	str	r3, [sp]
	mov	r3, r5
	bl	extended_gcd(PLT)
	ldr	r5, [sp, #20]
	ldrd	r3, ip, [sp, #8]
	mul	r2, r6, ip
	mla	r2, r3, r9, r2
	umull	r6, r4, r6, r3
	add	r2, r2, r4
	ldr	r4, [sp, #16]
	subs	r4, r4, r6
	sbc	r5, r5, r2
.L6:
	ldr	r2, .L9+8
	strd	r4, r5, [r8]
	strd	r3, ip, [r7]
.LPIC0:
	add	r2, pc
	ldr	r3, .L9+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L7
	bl	__stack_chk_fail(PLT)
.L8:
	movs	r3, #1
	mov	ip, #0
	b	.L6
.L7:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	extended_gcd, .-extended_gcd
	.align	1
	.global	rsa_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_encrypt, %function
rsa_encrypt:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	mod_exp(PLT)
	.size	rsa_encrypt, .-rsa_encrypt
	.align	1
	.global	rsa_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_decrypt, %function
rsa_decrypt:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	mod_exp(PLT)
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

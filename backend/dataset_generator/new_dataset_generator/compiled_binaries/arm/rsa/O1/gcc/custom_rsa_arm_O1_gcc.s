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
	mov	r9, r2
	mov	r10, r3
	ldrd	r2, [sp, #40]
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	orrs	r3, r9, r10
	beq	.L5
	mov	r4, r2
	movs	r6, #1
	mov	fp, #0
	b	.L4
.L3:
	lsr	r7, r9, #1
	orr	r7, r7, r10, lsl #31
	lsr	r8, r10, #1
	mov	r9, r7
	mov	r10, r8
	mul	r5, r4, r5
	umull	r0, r4, r4, r4
	ldrd	r2, [sp, #40]
	add	r1, r4, r5, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r4, r2
	mov	r5, r3
	orrs	r8, r7, r8
	beq	.L1
.L4:
	and	r3, r9, #1
	cmp	r3, #0
	beq	.L3
	mul	r1, r4, fp
	mla	r1, r6, r5, r1
	umull	r0, r6, r4, r6
	ldrd	r2, [sp, #40]
	add	r1, r1, r6
	bl	__aeabi_uldivmod(PLT)
	mov	r6, r2
	mov	fp, r3
	b	.L3
.L5:
	movs	r6, #1
	mov	fp, #0
.L1:
	mov	r0, r6
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	mod_exp, .-mod_exp
	.global	__aeabi_ldivmod
	.align	1
	.global	extended_gcd
	.syntax unified
	.thumb
	.thumb_func
	.type	extended_gcd, %function
extended_gcd:
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
	ldr	r2, .L15
.LPIC1:
	add	r2, pc
	ldr	r3, .L15+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	orrs	r3, r0, r1
	itt	eq
	moveq	r8, #1
	moveq	fp, #0
	bne	.L13
.L9:
	str	r4, [r10]
	str	r5, [r10, #4]
	str	r8, [r9]
	str	fp, [r9, #4]
	ldr	r2, .L15+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L15+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L14
	mov	r0, r7
	mov	r1, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L13:
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
	bl	extended_gcd(PLT)
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
	b	.L9
.L14:
	bl	__stack_chk_fail(PLT)
.L16:
	.align	2
.L15:
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
	push	{lr}
	sub	sp, sp, #12
	vldr.64	d7, [sp, #16]	@ int
	vstr.64	d7, [sp]	@ int
	bl	mod_exp(PLT)
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
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
	push	{lr}
	sub	sp, sp, #12
	vldr.64	d7, [sp, #16]	@ int
	vstr.64	d7, [sp]	@ int
	bl	mod_exp(PLT)
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

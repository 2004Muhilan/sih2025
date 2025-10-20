	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"custom_rsa.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.p2align 2,,3
	.global	mod_exp
	.syntax unified
	.thumb
	.thumb_func
	.type	mod_exp, %function
mod_exp:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	mov	r10, r3
	ldrd	r8, [sp, #40]
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	orrs	r3, r6, r10
	beq	.L5
	mov	r4, r2
	movs	r7, #1
	mov	fp, #0
.L4:
	mul	r1, r4, fp
	mov	r2, r8
	umull	r0, ip, r4, r7
	mov	r3, r9
	mla	r1, r7, r5, r1
	tst	r6, #1
	add	r1, r1, ip
	beq	.L3
	bl	__aeabi_uldivmod(PLT)
	mov	r7, r2
	mov	fp, r3
.L3:
	umull	r0, r1, r4, r4
	lsrs	r6, r6, #1
	mul	r4, r5, r4
	orr	r6, r6, r10, lsl #31
	mov	r2, r8
	mov	r3, r9
	lsr	r10, r10, #1
	add	r1, r1, r4, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	mov	r4, r2
	orrs	r3, r6, r10
	bne	.L4
	mov	r0, r7
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	movs	r7, #1
	mov	fp, #0
	mov	r0, r7
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	mod_exp, .-mod_exp
	.global	__aeabi_ldivmod
	.align	1
	.p2align 2,,3
	.global	extended_gcd
	.syntax unified
	.thumb
	.thumb_func
	.type	extended_gcd, %function
extended_gcd:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r0, .L23
	mov	r4, r1
	ldr	r1, .L23+4
.LPIC1:
	add	r0, pc
	sub	sp, sp, #60
	ldr	r1, [r0, r1]
	mov	r0, r2
	ldr	r7, [sp, #96]
	ldr	r1, [r1]
	str	r1, [sp, #52]
	mov	r1, #0
	mov	r1, r3
	orrs	r3, r5, r4
	ldr	r6, [sp, #100]
	itt	eq
	moveq	fp, #1
	moveq	r10, #0
	bne	.L20
.L10:
	ldr	r2, .L23+8
	ldr	r3, .L23+4
.LPIC0:
	add	r2, pc
	strd	r5, r4, [r7]
	strd	fp, r10, [r6]
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #52]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L21
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L20:
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_ldivmod(PLT)
	mov	r8, r3
	mov	r9, r2
	mov	r10, r3
	orrs	r3, r8, r9
	mov	fp, r2
	itt	eq
	moveq	r3, #1
	moveq	ip, #0
	strd	r0, r1, [sp, #16]
	beq	.L11
	mov	r0, r5
	mov	r1, r4
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_ldivmod(PLT)
	mov	r5, r2
	mov	r4, r3
	strd	r2, r3, [sp, #8]
	orrs	r3, r4, r5
	strd	r0, r1, [sp, #24]
	itt	eq
	moveq	r2, #1
	moveq	ip, #0
	bne	.L22
.L12:
	ldr	r0, [sp, #16]
	mov	r5, fp
	ldr	r3, [sp, #20]
	mov	r4, r10
	mov	fp, r2
	mov	r10, ip
	mul	r1, r0, ip
	mla	r1, r2, r3, r1
	umull	r3, r0, r0, r2
	add	r1, r1, r0
	ldr	r0, [sp, #8]
	subs	r3, r0, r3
	ldr	r0, [sp, #12]
	sbc	ip, r0, r1
.L11:
	mov	r0, r5
	mov	r1, r4
	mov	r5, r3
	mov	r4, ip
	b	.L10
.L22:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_ldivmod(PLT)
	mov	r9, r2
	mov	r8, r3
	mov	fp, r1
	orrs	r1, r8, r9
	mov	r10, r0
	itt	eq
	moveq	r1, #1
	moveq	ip, #0
	beq	.L13
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_ldivmod(PLT)
	mov	r4, r2
	mov	r5, r3
	mov	ip, r1
	mov	lr, r0
	mov	r2, r9
	mov	r3, r8
	mov	r0, r4
	mov	r1, r5
	mov	r5, ip
	add	ip, sp, #40
	str	ip, [sp, #4]
	add	ip, sp, #32
	str	ip, [sp]
	mov	r4, lr
	bl	extended_gcd(PLT)
	strd	r0, r1, [sp, #8]
	ldrd	r1, ip, [sp, #32]
	ldrd	r2, r0, [sp, #40]
	mul	r3, r4, ip
	mla	r3, r1, r5, r3
	umull	r4, r5, r4, r1
	subs	r2, r2, r4
	add	r3, r3, r5
	sbc	r3, r0, r3
	mul	r4, r10, r3
	mla	r4, r2, fp, r4
	umull	r10, r0, r10, r2
	add	r0, r0, r4
	subs	r1, r1, r10
	sbc	ip, ip, r0
.L13:
	ldr	r0, [sp, #24]
	ldr	r5, [sp, #28]
	ldrd	fp, r10, [sp, #8]
	str	ip, [sp, #12]
	mul	r4, r0, ip
	str	r1, [sp, #8]
	mla	r4, r1, r5, r4
	umull	r0, r5, r0, r1
	add	r4, r4, r5
	subs	r2, r2, r0
	sbc	ip, r3, r4
	b	.L12
.L21:
	bl	__stack_chk_fail(PLT)
.L24:
	.align	2
.L23:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	extended_gcd, .-extended_gcd
	.align	1
	.p2align 2,,3
	.global	rsa_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_encrypt, %function
rsa_encrypt:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	mov	r10, r3
	ldrd	r8, [sp, #40]
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	orrs	r3, r6, r10
	beq	.L29
	mov	r4, r2
	movs	r7, #1
	mov	fp, #0
.L28:
	mul	r1, r4, fp
	mov	r2, r8
	umull	r0, ip, r4, r7
	mov	r3, r9
	mla	r1, r7, r5, r1
	tst	r6, #1
	add	r1, r1, ip
	beq	.L27
	bl	__aeabi_uldivmod(PLT)
	mov	r7, r2
	mov	fp, r3
.L27:
	umull	r0, r1, r4, r4
	lsrs	r6, r6, #1
	mul	r4, r5, r4
	orr	r6, r6, r10, lsl #31
	mov	r2, r8
	mov	r3, r9
	lsr	r10, r10, #1
	add	r1, r1, r4, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	mov	r4, r2
	orrs	r3, r6, r10
	bne	.L28
	mov	r0, r7
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L29:
	movs	r7, #1
	mov	fp, #0
	mov	r0, r7
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rsa_encrypt, .-rsa_encrypt
	.align	1
	.p2align 2,,3
	.global	rsa_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_decrypt, %function
rsa_decrypt:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	mov	r10, r3
	ldrd	r8, [sp, #40]
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	orrs	r3, r6, r10
	beq	.L36
	mov	r4, r2
	movs	r7, #1
	mov	fp, #0
.L35:
	mul	r1, r4, fp
	mov	r2, r8
	umull	r0, ip, r4, r7
	mov	r3, r9
	mla	r1, r7, r5, r1
	tst	r6, #1
	add	r1, r1, ip
	beq	.L34
	bl	__aeabi_uldivmod(PLT)
	mov	r7, r2
	mov	fp, r3
.L34:
	umull	r0, r1, r4, r4
	lsrs	r6, r6, #1
	mul	r4, r5, r4
	orr	r6, r6, r10, lsl #31
	mov	r2, r8
	mov	r3, r9
	lsr	r10, r10, #1
	add	r1, r1, r4, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	mov	r4, r2
	orrs	r3, r6, r10
	bne	.L35
	mov	r0, r7
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L36:
	movs	r7, #1
	mov	fp, #0
	mov	r0, r7
	mov	r1, fp
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

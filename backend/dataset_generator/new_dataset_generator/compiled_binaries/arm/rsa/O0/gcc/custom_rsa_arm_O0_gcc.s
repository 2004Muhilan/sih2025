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
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	strd	r0, [r7, #8]
	strd	r2, [r7]
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r7, #16]
	ldrd	r0, [r7, #8]
	ldrd	r2, [r7, #56]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #8]
	b	.L2
.L4:
	ldrd	r2, [r7]
	and	r10, r2, #1
	mov	fp, #0
	orrs	r3, r10, fp
	beq	.L3
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	mul	r2, r3, r2
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #16]
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #8]
	umull	r4, r5, r1, r2
	add	r3, r3, r5
	mov	r5, r3
	ldrd	r2, [r7, #56]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #16]
.L3:
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsrs	r3, r1, #1
	strd	r2, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	mul	r2, r3, r2
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #8]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	umull	r8, r9, r3, r3
	add	r3, r2, r9
	mov	r9, r3
	ldrd	r2, [r7, #56]
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #8]
.L2:
	ldrd	r2, [r7]
	orrs	r3, r3, r2
	bne	.L4
	ldrd	r2, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
	.size	mod_exp, .-mod_exp
	.global	__aeabi_ldivmod
	.align	1
	.global	extended_gcd
	.syntax unified
	.thumb
	.thumb_func
	.type	extended_gcd, %function
extended_gcd:
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
	ldr	r2, .L11
.LPIC0:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	mov	r3, #0
	ldrd	r2, [r7, #16]
	orrs	r3, r3, r2
	bne	.L7
	ldr	r1, [r7, #4]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1]
	ldr	r1, [r7]
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r1]
	ldrd	r2, [r7, #8]
	b	.L9
.L7:
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
	bl	extended_gcd(PLT)
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
.L9:
	ldr	r0, .L11+8
.LPIC1:
	add	r0, pc
	ldr	r1, .L11+4
	ldr	r1, [r0, r1]
	ldr	r0, [r1]
	ldr	r1, [r7, #52]
	eors	r0, r1, r0
	mov	r1, #0
	beq	.L10
	bl	__stack_chk_fail(PLT)
.L10:
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	extended_gcd, .-extended_gcd
	.align	1
	.global	rsa_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_encrypt, %function
rsa_encrypt:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	strd	r0, [r7, #8]
	strd	r2, [r7]
	ldrd	r2, [r7, #24]
	strd	r2, [sp]
	ldrd	r2, [r7]
	ldrd	r0, [r7, #8]
	bl	mod_exp(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	rsa_encrypt, .-rsa_encrypt
	.align	1
	.global	rsa_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_decrypt, %function
rsa_decrypt:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	strd	r0, [r7, #8]
	strd	r2, [r7]
	ldrd	r2, [r7, #24]
	strd	r2, [sp]
	ldrd	r2, [r7]
	ldrd	r0, [r7, #8]
	bl	mod_exp(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

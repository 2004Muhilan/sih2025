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
	.file	"rsa_modular_exponentiation.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.global	rsa_mod_exp
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_mod_exp, %function
rsa_mod_exp:
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
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsrs	r3, r1, #1
	strd	r2, [r7]
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
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

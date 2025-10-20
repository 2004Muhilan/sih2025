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
	.file	"rsa_modular_exponentiation.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.p2align 2,,3
	.global	rsa_mod_exp
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_mod_exp, %function
rsa_mod_exp:
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
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

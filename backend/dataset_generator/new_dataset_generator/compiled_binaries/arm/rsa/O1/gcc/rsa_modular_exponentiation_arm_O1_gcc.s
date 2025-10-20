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
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r2
	mov	fp, r3
	ldrd	r8, [sp, #40]
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r3
	orrs	r3, r10, fp
	beq	.L5
	mov	r4, r2
	movs	r7, #1
	movs	r6, #0
	b	.L4
.L3:
	mul	r5, r4, r5
	umull	r0, r4, r4, r4
	mov	r2, r8
	mov	r3, r9
	add	r1, r4, r5, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r4, r2
	mov	r5, r3
	lsr	r3, r10, #1
	orr	r3, r3, fp, lsl #31
	lsr	r2, fp, #1
	mov	r10, r3
	mov	fp, r2
	orrs	r3, r3, r2
	beq	.L1
.L4:
	and	r3, r10, #1
	cmp	r3, #0
	beq	.L3
	mul	r6, r4, r6
	mla	r6, r7, r5, r6
	umull	r0, r1, r4, r7
	mov	r2, r8
	mov	r3, r9
	add	r1, r1, r6
	bl	__aeabi_uldivmod(PLT)
	mov	r7, r2
	mov	r6, r3
	b	.L3
.L5:
	movs	r7, #1
	movs	r6, #0
.L1:
	mov	r0, r7
	mov	r1, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

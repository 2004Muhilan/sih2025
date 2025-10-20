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
	mov	r2, r8
	umull	r0, r4, r4, r4
	mov	r3, r9
	lsr	r10, r10, #1
	orr	r10, r10, fp, lsl #31
	lsr	fp, fp, #1
	add	r1, r4, r5, lsl #1
	bl	__aeabi_uldivmod(PLT)
	mov	r4, r2
	mov	r5, r3
	b	.L2
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

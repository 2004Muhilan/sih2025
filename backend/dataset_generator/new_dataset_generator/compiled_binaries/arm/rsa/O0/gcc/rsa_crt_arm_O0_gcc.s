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
	.file	"rsa_crt.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.global	rsa_crt_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_crt_decrypt, %function
rsa_crt_decrypt:
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	strd	r0, [r7, #32]
	strd	r2, [r7, #24]
	ldrd	r2, [r7, #104]
	adds	r10, r2, #-1
	adc	fp, r3, #-1
	ldrd	r0, [r7, #24]
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #40]
	ldrd	r2, [r7, #112]
	subs	r1, r2, #1
	str	r1, [r7, #8]
	adc	r3, r3, #-1
	str	r3, [r7, #12]
	ldrd	r0, [r7, #24]
	ldrd	r2, [r7, #8]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #48]
	ldrd	r0, [r7, #32]
	ldrd	r2, [r7, #104]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #56]
	ldrd	r0, [r7, #32]
	ldrd	r2, [r7, #112]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #64]
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #112]
	mul	r2, r3, r2
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #56]
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #112]
	umull	r4, r5, r1, r2
	add	r3, r3, r5
	mov	r5, r3
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #104]
	mul	r2, r3, r2
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #104]
	umull	r8, r9, r1, r2
	add	r3, r3, r9
	mov	r9, r3
	adds	r3, r4, r8
	str	r3, [r7]
	adc	r3, r5, r9
	str	r3, [r7, #4]
	ldr	r3, [r7, #108]
	ldr	r2, [r7, #112]
	mul	r2, r3, r2
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #104]
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r7, #104]
	ldr	r2, [r7, #112]
	umull	r1, r2, r1, r2
	str	r2, [r7, #20]
	mov	r2, r1
	str	r2, [r7, #16]
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldrd	r2, [r7, #16]
	ldrd	r0, [r7]
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

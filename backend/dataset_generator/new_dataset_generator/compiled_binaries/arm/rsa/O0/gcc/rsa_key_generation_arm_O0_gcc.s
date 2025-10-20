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
	.file	"rsa_key_generation.c"
	.text
	.align	1
	.global	rsa_generate_keys
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_generate_keys, %function
rsa_generate_keys:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	mov	r2, #61
	mov	r3, #0
	strd	r2, [r7, #24]
	mov	r2, #53
	mov	r3, #0
	strd	r2, [r7, #32]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	mul	r2, r3, r2
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #24]
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #32]
	umull	r1, r2, r1, r2
	str	r2, [r7, #4]
	mov	r2, r1
	str	r2, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #20]
	ldrd	r1, [r7]
	strd	r1, [r3]
	ldrd	r2, [r7, #24]
	adds	r10, r2, #-1
	adc	fp, r3, #-1
	ldrd	r2, [r7, #32]
	adds	r8, r2, #-1
	adc	r9, r3, #-1
	mul	r2, r8, fp
	mul	r3, r10, r9
	add	r3, r3, r2
	umull	r4, r5, r10, r8
	add	r3, r3, r5
	mov	r5, r3
	strd	r4, [r7, #40]
	strd	r4, [r7, #40]
	ldr	r1, [r7, #16]
	mov	r2, #17
	mov	r3, #0
	strd	r2, [r1]
	ldr	r1, [r7, #12]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1]
	nop
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

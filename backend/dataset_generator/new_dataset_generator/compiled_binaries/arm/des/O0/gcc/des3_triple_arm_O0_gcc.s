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
	.file	"des3_triple.c"
	.text
	.align	1
	.global	des3_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	des3_encrypt, %function
des3_encrypt:
	@ args = 16, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #20
	add	r7, sp, #0
	strd	r0, [r7, #8]
	strd	r2, [r7]
	ldrd	r0, [r7, #8]
	ldrd	r2, [r7]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r7, #8]
	ldrd	r0, [r7, #8]
	ldrd	r2, [r7, #48]
	eor	r8, r0, r2
	eor	r9, r1, r3
	strd	r8, [r7, #8]
	ldrd	r0, [r7, #8]
	ldrd	r2, [r7, #56]
	eor	r4, r0, r2
	eor	r5, r1, r3
	strd	r4, [r7, #8]
	ldrd	r2, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

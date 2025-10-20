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
	.file	"rsa_crt.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.p2align 2,,3
	.global	rsa_crt_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_crt_decrypt, %function
rsa_crt_decrypt:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	mov	r7, r1
	ldrd	r4, r6, [sp, #32]
	ldrd	r5, r9, [sp, #40]
	mov	r2, r4
	mov	r3, r6
	bl	__aeabi_uldivmod(PLT)
	mov	ip, r2
	mov	lr, r3
	mov	r1, r7
	mov	r0, r8
	mov	r2, r5
	mul	r7, ip, r9
	mov	r3, r9
	umull	r8, ip, ip, r5
	mla	r7, r5, lr, r7
	mul	r9, r4, r9
	add	r7, r7, ip
	bl	__aeabi_uldivmod(PLT)
	mul	r1, r2, r6
	mla	r1, r4, r3, r1
	umull	r2, r3, r2, r4
	mla	r9, r5, r6, r9
	adds	r0, r8, r2
	umull	r2, r5, r4, r5
	add	r1, r1, r3
	adc	r1, r7, r1
	add	r3, r9, r5
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r2
	mov	r1, r3
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

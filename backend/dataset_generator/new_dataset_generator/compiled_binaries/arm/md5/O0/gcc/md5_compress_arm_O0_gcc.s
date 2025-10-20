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
	.file	"md5_compress.c"
	.text
	.align	1
	.global	md5_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_compress, %function
md5_compress:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L2
.L3:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ands	r2, r2, r3
	ldr	r3, [r7, #16]
	mvns	r1, r3
	ldr	r3, [r7, #24]
	ands	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	add	r3, r3, r2
	lsls	r3, r3, #7
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	str	r3, [r7, #12]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L2:
	ldr	r3, [r7, #28]
	cmp	r3, #15
	ble	.L3
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r2, [r7, #24]
	add	r2, r2, r1
	str	r2, [r3]
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

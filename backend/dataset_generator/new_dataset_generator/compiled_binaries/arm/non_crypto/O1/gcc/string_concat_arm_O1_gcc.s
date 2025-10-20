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
	.file	"string_concat.c"
	.text
	.align	1
	.global	string_concat
	.syntax unified
	.thumb
	.thumb_func
	.type	string_concat, %function
string_concat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	mov	ip, r2
	cbz	r2, .L18
	subs	r2, r0, #1
	movs	r3, #0
.L4:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cbz	r4, .L19
	adds	r3, r3, #1
	cmp	ip, r3
	bne	.L4
	mov	r3, ip
	b	.L5
.L19:
	add	r4, ip, #-1
	cmp	r4, r3
	bls	.L5
.L10:
	subs	r1, r1, #1
	add	ip, r3, #-1
	add	ip, ip, r0
.L6:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cbz	r2, .L5
	strb	r2, [ip, #1]!
	adds	r3, r3, #1
	cmp	r3, r4
	bne	.L6
	mov	r3, r4
.L5:
	movs	r2, #0
	strb	r2, [r0, r3]
	ldr	r4, [sp], #4
	bx	lr
.L18:
	subs	r4, r2, #1
	mov	r3, r2
	b	.L10
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

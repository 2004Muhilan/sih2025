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
	.file	"string_concat.c"
	.text
	.align	1
	.p2align 2,,3
	.global	string_concat
	.syntax unified
	.thumb
	.thumb_func
	.type	string_concat, %function
string_concat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r2
	push	{r4, lr}
	cbz	r2, .L3
	mov	lr, r0
	movs	r3, #0
	b	.L4
.L6:
	adds	r3, r3, #1
	cmp	r2, r3
	beq	.L13
.L4:
	mov	ip, lr
	ldrb	r4, [lr], #1	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L6
	subs	r4, r2, #1
	cmp	r4, r3
	bls	.L5
.L3:
	subs	r4, r1, #1
	add	lr, r0, r3
	subs	r1, r2, #1
	b	.L7
.L8:
	strb	r2, [lr]
	cmp	r1, r3
	add	lr, ip, #1
	bls	.L14
.L7:
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	adds	r3, r3, #1
	mov	ip, lr
	cmp	r2, #0
	bne	.L8
.L5:
	movs	r3, #0
	strb	r3, [ip]
	pop	{r4, pc}
.L13:
	add	ip, r0, r2
	movs	r3, #0
	strb	r3, [ip]
	pop	{r4, pc}
.L14:
	add	ip, r0, r3
	movs	r3, #0
	strb	r3, [ip]
	pop	{r4, pc}
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

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
	.file	"aes_mix_columns.c"
	.text
	.align	1
	.p2align 2,,3
	.global	aes_mix_columns
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_mix_columns, %function
aes_mix_columns:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	add	r9, r0, #16
.L18:
	ldrb	ip, [r5]	@ zero_extendqisi2
	movs	r3, #8
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	movs	r7, #0
	ldrb	r8, [r5, #2]	@ zero_extendqisi2
	mov	r2, ip
	ldrb	r1, [r5, #3]	@ zero_extendqisi2
	mov	lr, #2
.L3:
	lsls	r0, r2, #1
	sbfx	r4, lr, #0, #1
	tst	r2, #128
	and	r4, r4, r2
	uxtb	r0, r0
	eor	r7, r7, r4
	mov	r2, r0
	lsr	lr, lr, #1
	it	ne
	eorne	r2, r0, #27
	subs	r3, r3, #1
	bne	.L3
	mov	r2, r6
	movs	r0, #8
	mov	r10, #3
.L5:
	lsls	r4, r2, #1
	sbfx	lr, r10, #0, #1
	tst	r2, #128
	and	lr, r2, lr
	uxtb	r4, r4
	eor	r3, r3, lr
	mov	r2, r4
	lsr	r10, r10, #1
	it	ne
	eorne	r2, r4, #27
	subs	r0, r0, #1
	bne	.L5
	eor	r4, r8, r1
	mov	r2, r6
	eors	r7, r7, r4
	mov	lr, #2
	eor	r4, r3, r7
	movs	r3, #8
	strb	r4, [r5]
.L7:
	lsls	r4, r2, #1
	sbfx	r7, lr, #0, #1
	tst	r2, #128
	and	r7, r7, r2
	uxtb	r4, r4
	eor	r0, r0, r7
	mov	r2, r4
	lsr	lr, lr, #1
	it	ne
	eorne	r2, r4, #27
	subs	r3, r3, #1
	bne	.L7
	eor	fp, ip, r1
	mov	r4, r8
	movs	r2, #8
	mov	r10, #3
.L9:
	lsls	r7, r4, #1
	sbfx	lr, r10, #0, #1
	tst	r4, #128
	and	lr, r4, lr
	uxtb	r7, r7
	eor	r3, r3, lr
	mov	r4, r7
	lsr	r10, r10, #1
	it	ne
	eorne	r4, r7, #27
	subs	r2, r2, #1
	bne	.L9
	eor	fp, fp, r0
	eor	r7, ip, r6
	mov	r0, r8
	mov	r10, #8
	mov	lr, #2
	eor	r3, r3, fp
	strb	r3, [r5, #1]
.L11:
	lsls	r3, r0, #1
	sbfx	r4, lr, #0, #1
	tst	r0, #128
	and	r4, r4, r0
	uxtb	r3, r3
	eor	r2, r2, r4
	mov	r0, r3
	lsr	lr, lr, #1
	it	ne
	eorne	r0, r3, #27
	subs	r10, r10, #1
	bne	.L11
	eors	r7, r7, r2
	mov	lr, r1
	movs	r2, #8
	movs	r4, #3
.L13:
	sbfx	r3, r4, #0, #1
	lsl	r0, lr, #1
	and	r3, lr, r3
	tst	lr, #128
	eor	r3, r10, r3
	uxtb	r0, r0
	mov	lr, r0
	lsr	r4, r4, #1
	it	ne
	eorne	lr, r0, #27
	uxtb	r10, r3
	subs	r2, r2, #1
	bne	.L13
	movs	r3, #8
	mov	lr, #3
	eor	r7, r7, r10
	strb	r7, [r5, #2]
.L15:
	lsl	r0, ip, #1
	sbfx	r4, lr, #0, #1
	tst	ip, #128
	and	r4, ip, r4
	uxtb	r0, r0
	eor	r2, r2, r4
	mov	ip, r0
	lsr	lr, lr, #1
	it	ne
	eorne	ip, r0, #27
	subs	r3, r3, #1
	bne	.L15
	eor	r6, r6, r8
	movs	r7, #8
	eors	r2, r2, r6
	movs	r6, #2
.L17:
	lsls	r0, r1, #1
	sbfx	r4, r6, #0, #1
	tst	r1, #128
	and	r4, r4, r1
	uxtb	r0, r0
	eor	r3, r3, r4
	mov	r1, r0
	lsr	r6, r6, #1
	it	ne
	eorne	r1, r0, #27
	subs	r7, r7, #1
	bne	.L17
	adds	r5, r5, #4
	eors	r2, r2, r3
	cmp	r9, r5
	strb	r2, [r5, #-1]
	bne	.L18
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

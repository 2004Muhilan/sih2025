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
	.file	"des_initial_permutation.c"
	.text
	.align	1
	.global	des_initial_permutation
	.syntax unified
	.thumb
	.thumb_func
	.type	des_initial_permutation, %function
des_initial_permutation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L5
	movs	r3, #0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	mov	r5, r1
.LPIC0:
	add	ip, pc
	mov	r0, r3
	mov	r1, r3
	mov	r7, #-2147483648
.L3:
	ldrb	r4, [ip], #1	@ zero_extendqisi2
	rsb	r2, r4, #64
	sub	lr, r4, #32
	rsb	r4, r4, #32
	lsr	r2, r6, r2
	lsl	lr, r5, lr
	orr	r2, r2, lr
	lsr	r4, r5, r4
	orrs	r2, r2, r4
	lsls	r2, r2, #31
	bpl	.L2
	rsb	r2, r3, #32
	sub	r4, r3, #32
	lsl	r2, r7, r2
	lsr	r4, r7, r4
	orrs	r2, r2, r4
	lsr	r4, r7, r3
	orrs	r0, r0, r2
	orrs	r1, r1, r4
.L2:
	adds	r3, r3, #1
	cmp	r3, #64
	bne	.L3
	pop	{r4, r5, r6, r7, pc}
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	IP, %object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\012\002<4,$\034\024\014\004>6.&\036\026"
	.ascii	"\016\006@80( \030\020\01091)!\031\021\011\001;3+#\033"
	.ascii	"\023\013\003=5-%\035\025\015\005?7/'\037\027\017\007"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

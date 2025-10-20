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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	lr, r1
	ldr	r7, .L7
.LPIC0:
	add	r7, pc
	add	ip, r7, #-1
	add	r6, r7, #63
	movs	r0, #0
	mov	r1, r0
	rsb	r7, r7, #1
	mov	r4, #-2147483648
	b	.L3
.L2:
	cmp	ip, r6
	beq	.L6
.L3:
	mov	r8, ip
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	rsb	r3, r2, #64
	sub	r9, r2, #32
	rsb	r2, r2, #32
	lsr	r3, r5, r3
	lsl	r9, lr, r9
	orr	r3, r3, r9
	lsr	r2, lr, r2
	orrs	r3, r3, r2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L2
	add	r3, r7, r8
	rsb	r2, r3, #32
	sub	r8, r3, #32
	lsl	r2, r4, r2
	lsr	r8, r4, r8
	orr	r2, r2, r8
	lsr	r3, r4, r3
	orrs	r0, r0, r2
	orrs	r1, r1, r3
	b	.L2
.L6:
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L8:
	.align	2
.L7:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	IP, %object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\012\002<4,$\034\024\014\004>6.&\036\026"
	.ascii	"\016\006@80( \030\020\01091)!\031\021\011\001;3+#\033"
	.ascii	"\023\013\003=5-%\035\025\015\005?7/'\037\027\017\007"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

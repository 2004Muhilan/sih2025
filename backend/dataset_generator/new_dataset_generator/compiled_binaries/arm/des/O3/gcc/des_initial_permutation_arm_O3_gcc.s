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
	.file	"des_initial_permutation.c"
	.text
	.align	1
	.p2align 2,,3
	.global	des_initial_permutation
	.syntax unified
	.thumb
	.thumb_func
	.type	des_initial_permutation, %function
des_initial_permutation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	ldr	r8, .L7
	movs	r0, #0
	mov	r7, r1
.LPIC0:
	add	r8, pc
	mov	r6, #-2147483648
	add	r4, r8, #-1
	add	r10, r8, #63
	mov	r1, r0
	rsb	r8, r8, #1
.L3:
	mov	ip, r4
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	add	ip, ip, r8
	rsb	r3, r2, #64
	sub	r5, r2, #32
	rsb	r2, r2, #32
	rsb	lr, ip, #32
	sub	fp, ip, #32
	lsr	r3, r9, r3
	lsl	r5, r7, r5
	orrs	r3, r3, r5
	lsr	r2, r7, r2
	lsl	lr, r6, lr
	orrs	r3, r3, r2
	lsr	fp, r6, fp
	orr	lr, lr, fp
	lsr	ip, r6, ip
	lsls	r3, r3, #31
	itt	mi
	orrmi	r0, lr, r0
	orrmi	r1, ip, r1
	cmp	r10, r4
	bne	.L3
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
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

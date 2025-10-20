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
	.file	"des_initial_permutation.c"
	.text
	.section	.rodata
	.align	2
	.type	IP, %object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\012\002<4,$\034\024\014\004>6.&\036\026"
	.ascii	"\016\006@80( \030\020\01091)!\031\021\011\001;3+#\033"
	.ascii	"\023\013\003=5-%\035\025\015\005?7/'\037\027\017\007"
	.text
	.align	1
	.global	des_initial_permutation
	.syntax unified
	.thumb
	.thumb_func
	.type	des_initial_permutation, %function
des_initial_permutation:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	strd	r0, [r7]
	mov	r0, #0
	mov	r1, #0
	strd	r0, [r7, #16]
	movs	r1, #0
	str	r1, [r7, #12]
	b	.L2
.L4:
	ldr	r0, .L6
.LPIC0:
	add	r0, pc
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	rsb	r6, r1, #64
	ldrd	r0, [r7]
	rsb	lr, r6, #32
	sub	ip, r6, #32
	lsr	r4, r0, r6
	lsl	lr, r1, lr
	orr	r4, r4, lr
	lsr	ip, r1, ip
	orr	r4, r4, ip
	lsr	r5, r1, r6
	and	r8, r4, #1
	mov	r9, #0
	orrs	r1, r8, r9
	beq	.L3
	mov	r0, #0
	mov	r1, #-2147483648
	ldr	r6, [r7, #12]
	rsb	lr, r6, #32
	sub	ip, r6, #32
	lsr	r2, r0, r6
	lsl	lr, r1, lr
	orr	r2, r2, lr
	lsr	ip, r1, ip
	orr	r2, r2, ip
	lsr	r3, r1, r6
	ldrd	r0, [r7, #16]
	orr	r10, r0, r2
	orr	fp, r1, r3
	strd	r10, [r7, #16]
.L3:
	ldr	r1, [r7, #12]
	adds	r1, r1, #1
	str	r1, [r7, #12]
.L2:
	ldr	r1, [r7, #12]
	cmp	r1, #63
	ble	.L4
	ldrd	r2, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L7:
	.align	2
.L6:
	.word	IP-(.LPIC0+4)
	.size	des_initial_permutation, .-des_initial_permutation
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

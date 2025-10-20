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
	.file	"custom_des.c"
	.text
	.section	.rodata
	.align	2
	.type	sbox, %object
	.size	sbox, 512
sbox:
	.ascii	"\016\004\015\001\002\017\013\010\003\012\006\014\005"
	.ascii	"\011\000\007\000\017\007\004\016\002\015\001\012\006"
	.ascii	"\014\013\011\005\003\010\004\001\016\010\015\006\002"
	.ascii	"\013\017\014\011\007\003\012\005\000\017\014\010\002"
	.ascii	"\004\011\001\007\005\013\003\016\012\000\006\015"
	.space	448
	.text
	.align	1
	.global	des_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	des_encrypt, %function
des_encrypt:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #44]
	str	r1, [r7, #40]
	str	r2, [r7, #36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L2
.L3:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	movs	r2, #0
	mov	r10, r3
	mov	fp, r2
	ldr	r3, [r7, #48]
	rsb	r3, r3, #7
	lsls	r1, r3, #3
	sub	r3, r1, #32
	rsb	r2, r1, #32
	lsl	r5, fp, r1
	lsl	r3, r10, r3
	orrs	r5, r5, r3
	lsr	r2, r10, r2
	orrs	r5, r5, r2
	lsl	r4, r10, r1
	ldrd	r2, [r7, #72]
	orr	r1, r2, r4
	str	r1, [r7, #8]
	orrs	r3, r3, r5
	str	r3, [r7, #12]
	ldrd	r2, [r7, #8]
	strd	r2, [r7, #72]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L2:
	ldr	r3, [r7, #48]
	cmp	r3, #7
	ble	.L3
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L4
.L5:
	ldr	r3, [r7, #72]
	str	r3, [r7, #60]
	ldrd	r0, [r7, #72]
	mov	r2, #0
	mov	r3, #0
	movs	r2, r1
	movs	r3, #0
	mov	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	rsbs	r2, r3, #0
	and	r3, r3, #7
	and	r2, r2, #7
	it	pl
	rsbpl	r3, r2, #0
	mov	r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #60]
	eors	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	eors	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r3, [r7, #24]
	str	r2, [r7, #28]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [r7, #24]
	movs	r3, r1
	movs	r2, #0
	ldr	r1, [r7, #64]
	movs	r0, #0
	str	r1, [r7, #16]
	str	r0, [r7, #20]
	ldrd	r4, [r7, #16]
	mov	r1, r4
	orrs	r1, r1, r2
	str	r1, [r7]
	mov	r1, r5
	orrs	r3, r3, r1
	str	r3, [r7, #4]
	ldrd	r3, [r7]
	strd	r3, [r7, #72]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L4:
	ldr	r3, [r7, #52]
	cmp	r3, #15
	ble	.L5
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L6
.L7:
	ldr	r3, [r7, #56]
	rsb	r3, r3, #7
	lsls	r1, r3, #3
	ldrd	r2, [r7, #72]
	rsb	r4, r1, #32
	sub	r0, r1, #32
	lsr	r8, r2, r1
	lsl	r4, r3, r4
	orr	r8, r8, r4
	lsr	r0, r3, r0
	orr	r8, r8, r0
	lsr	r9, r3, r1
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	uxtb	r2, r8
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L6:
	ldr	r3, [r7, #56]
	cmp	r3, #7
	ble	.L7
	nop
	nop
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits

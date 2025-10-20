	.arch armv8-a
	.file	"tinycrypt_ecc.c"
	.text
	.align	2
	.p2align 4,,11
	.type	uECC_vli_mult, %function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	sxtb	w3, w3
	cmp	w3, 0
	ble	.L13
	sxtw	x14, w3
	mov	x13, 0
	mov	w7, 0
	mov	w6, 0
	.p2align 3,,7
.L3:
	mov	w12, w13
	sxtb	w11, w13
	uxtw	x5, w6
	mov	w8, 0
	mov	w6, w7
	mov	w7, 0
	.p2align 3,,7
.L6:
	sub	w4, w12, w8
	ldr	w10, [x1, w8, sxtw 2]
	orr	x5, x5, x6, lsl 32
	add	w9, w8, 1
	ldr	w4, [x2, w4, sxtw 2]
	sxtb	w8, w9
	umull	x4, w4, w10
	adds	x4, x4, x5
	cinc	w7, w7, cs
	uxtw	x5, w4
	lsr	x6, x4, 32
	cmp	w11, w9, sxtb
	bge	.L6
	str	w4, [x0, x13, lsl 2]
	add	x13, x13, 1
	cmp	x13, x14
	bne	.L3
.L2:
	lsl	w15, w3, 1
	mov	w4, w3
	sub	w14, w15, #1
	cmp	w3, w14
	bge	.L7
	mov	w13, w3
	mov	w12, 1
	.p2align 3,,7
.L12:
	sxtb	x8, w12
	cmp	w3, w12, sxtb
	ble	.L14
	sxtw	x9, w4
	uxtw	x5, w6
	sub	x9, x9, x8
	mov	w6, w7
	mov	w7, 0
	add	x9, x2, x9, lsl 2
	.p2align 3,,7
.L11:
	ldr	w4, [x1, x8, lsl 2]
	orr	x5, x5, x6, lsl 32
	ldr	w11, [x9], -4
	add	x8, x8, 1
	sxtb	w10, w8
	umull	x4, w4, w11
	adds	x4, x4, x5
	cinc	w7, w7, cs
	uxtw	x5, w4
	lsr	x6, x4, 32
	cmp	w3, w10
	bgt	.L11
	add	w4, w13, 1
	add	w12, w12, 1
	str	w5, [x0, w13, sxtw 2]
	and	w12, w12, 255
	sxtb	w13, w4
	mov	w4, w13
	cmp	w13, w14
	blt	.L12
.L7:
	add	x15, x0, w15, sxtw 2
	str	w6, [x15, -4]
	ret
	.p2align 2,,3
.L14:
	add	w4, w13, 1
	mov	w5, w6
	add	w12, w12, 1
	str	w5, [x0, w13, sxtw 2]
	sxtb	w13, w4
	mov	w6, w7
	and	w12, w12, 255
	mov	w4, w13
	mov	w7, 0
	cmp	w13, w14
	blt	.L12
	b	.L7
.L13:
	mov	w7, 0
	mov	w6, 0
	b	.L2
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	2
	.p2align 4,,11
	.type	vli_modInv_update, %function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	ldr	w3, [x0]
	sbfiz	x6, x2, 2, 8
	mov	x7, x1
	sxtb	w2, w2
	add	x1, x0, x6
	and	w4, w3, 1
	tbz	x3, 0, .L36
	cmp	w2, 0
	ble	.L21
	mov	x3, 0
	mov	w4, 0
	.p2align 3,,7
.L22:
	ldr	w5, [x0, x3]
	ldr	w2, [x7, x3]
	add	w2, w5, w2
	add	w2, w2, w4
	str	w2, [x0, x3]
	cmp	w5, w2
	add	x3, x3, 4
	csel	w4, w4, wzr, eq
	cset	w2, hi
	orr	w4, w4, w2
	cmp	x3, x6
	bne	.L22
	cmp	x0, x1
	bcs	.L27
.L24:
	mov	w2, 0
	.p2align 3,,7
.L28:
	ldr	w3, [x1, -4]
	orr	w2, w2, w3, lsr 1
	str	w2, [x1, -4]!
	lsl	w2, w3, 31
	cmp	x0, x1
	bcc	.L28
.L27:
	cbz	w4, .L19
	sub	x6, x6, #4
	ldr	w1, [x0, x6]
	orr	w1, w1, -2147483648
	str	w1, [x0, x6]
.L19:
	ret
.L21:
	mov	w4, 0
	.p2align 3,,7
.L36:
	cmp	x0, x1
	bcc	.L24
	ret
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.p2align 4,,11
	.global	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x2, x1, 4
	sub	x2, x0, x2
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	cmp	x2, 8
	bls	.L38
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 16]
	str	q0, [x0, 16]
.L39:
	ldr	w17, [x1, 60]
	ldp	w2, w4, [x1, 44]
	ldp	w7, w6, [x1, 52]
	lsl	w10, w2, 1
	lsl	w3, w4, 1
	cmp	w2, w10
	ldr	w8, [x0, 28]
	cinc	w3, w3, hi
	cset	w5, hi
	cmp	w4, w3
	cset	w2, eq
	cmp	w5, 0
	csel	w2, w2, wzr, ne
	cmp	w4, w3
	cset	w4, hi
	ldr	w5, [x0, 16]
	orr	w2, w2, w4
	add	w11, w2, w7, lsl 1
	cmp	w7, w11
	cset	w4, eq
	cset	w7, hi
	and	w4, w4, w2
	orr	w4, w4, w7
	add	w7, w4, w6, lsl 1
	cmp	w6, w7
	cset	w2, eq
	cset	w6, hi
	and	w2, w2, w4
	ldp	w14, w12, [x0, 8]
	orr	w2, w2, w6
	add	w6, w2, w17, lsl 1
	cmp	w17, w6
	add	w6, w8, w6
	csel	w2, w2, wzr, eq
	cset	w17, hi
	adds	w12, w12, w10
	adc	w3, w5, w3
	cset	w10, cs
	cmp	w5, w3
	stp	w12, w3, [x0, 12]
	ldp	w13, w9, [x0, 20]
	cset	w4, eq
	cmp	w10, 0
	csel	w4, w4, wzr, ne
	cmp	w5, w3
	cset	w10, hi
	orr	w5, w2, w17
	add	w11, w13, w11
	orr	w2, w4, w10
	add	w11, w11, w2
	add	w7, w9, w7
	cmp	w13, w11
	cset	w4, eq
	cset	w10, hi
	and	w4, w4, w2
	orr	w4, w4, w10
	add	w7, w7, w4
	stp	w11, w7, [x0, 20]
	cmp	w9, w7
	cset	w2, eq
	cset	w9, hi
	and	w2, w2, w4
	orr	w2, w2, w9
	add	w6, w6, w2
	str	w6, [x0, 28]
	cmp	w8, w6
	ldp	w17, w8, [x1, 48]
	csel	w4, w2, wzr, eq
	cset	w2, hi
	orr	w4, w4, w2
	lsl	w10, w17, 1
	lsl	w2, w8, 1
	cmp	w17, w10
	add	w4, w4, w5
	cinc	w2, w2, hi
	cset	w17, hi
	cmp	w8, w2
	ldp	w13, w9, [x1, 56]
	cset	w5, eq
	cmp	w17, 0
	csel	w5, w5, wzr, ne
	cmp	w8, w2
	cset	w8, hi
	orr	w5, w5, w8
	add	w8, w5, w13, lsl 1
	cmp	w13, w8
	add	w8, w8, w11
	cset	w13, eq
	cset	w17, hi
	and	w13, w13, w5
	orr	w13, w13, w17
	add	w5, w13, w9, lsl 1
	cmp	w9, w5
	add	w9, w5, w7
	cset	w17, hi
	cset	w5, eq
	adds	w10, w10, w12
	and	w5, w5, w13
	adc	w2, w2, w3
	cset	w13, cs
	cmp	w2, w3
	orr	w5, w5, w17
	cset	w12, eq
	cmp	w13, 0
	csel	w12, w12, wzr, ne
	cmp	w2, w3
	cset	w13, cc
	add	w3, w6, w5
	orr	w5, w12, w13
	stp	w10, w2, [x0, 12]
	add	w8, w8, w5
	cmp	w8, w11
	cset	w11, eq
	cset	w12, cc
	and	w11, w11, w5
	orr	w11, w11, w12
	add	w9, w9, w11
	stp	w8, w9, [x0, 20]
	cmp	w9, w7
	cset	w5, eq
	cset	w7, cc
	and	w5, w5, w11
	orr	w5, w5, w7
	add	w3, w3, w5
	str	w3, [x0, 28]
	ldp	w16, w15, [x0]
	cmp	w3, w6
	ldp	w13, w12, [x1, 32]
	csel	w7, w5, wzr, eq
	cset	w17, cc
	ldr	w11, [x1, 40]
	adds	w13, w13, w16
	orr	w7, w7, w17
	adc	w12, w12, w15
	cset	w6, cs
	cmp	w12, w15
	add	w11, w11, w14
	cset	w5, eq
	cmp	w6, 0
	csel	w5, w5, wzr, ne
	cmp	w12, w15
	cset	w6, cc
	orr	w5, w5, w6
	add	w11, w11, w5
	cmp	w11, w14
	cset	w6, eq
	cset	w14, cc
	and	w6, w6, w5
	orr	w6, w6, w14
	adds	w18, w6, w10
	cset	w14, cs
	cmp	w18, w10
	cset	w5, eq
	and	w5, w5, w6
	orr	w5, w5, w14
	adds	w17, w5, w2
	cset	w6, cs
	cmp	w17, w2
	cset	w2, eq
	and	w2, w2, w5
	orr	w2, w2, w6
	adds	w14, w2, w8
	ldp	w16, w15, [x1, 56]
	cset	w6, cs
	cmp	w14, w8
	stp	w13, w12, [x0]
	cset	w5, eq
	add	w16, w16, w9
	and	w5, w5, w2
	add	w15, w15, w3
	orr	w5, w5, w6
	stp	w11, w18, [x0, 8]
	add	w10, w16, w5
	stp	w17, w14, [x0, 16]
	cmp	w10, w9
	cset	w2, eq
	cset	w6, cc
	and	w2, w2, w5
	orr	w2, w2, w6
	add	w8, w15, w2
	stp	w10, w8, [x0, 24]
	cmp	w8, w3
	ldp	w6, w3, [x1, 36]
	cset	w30, cc
	csel	w2, w2, wzr, eq
	ldr	w15, [x1, 44]
	adds	w6, w6, w13
	ldr	w13, [x1, 60]
	adc	w3, w3, w12
	cset	w9, cs
	cmp	w3, w12
	add	w15, w15, w11
	cset	w5, eq
	cmp	w9, 0
	csel	w5, w5, wzr, ne
	cmp	w3, w12
	cset	w12, cc
	add	w13, w13, w14
	orr	w5, w5, w12
	orr	w2, w2, w30
	add	w15, w15, w5
	add	w2, w2, w7
	ldp	w9, w12, [x1, 52]
	cmp	w15, w11
	cset	w11, eq
	cset	w19, cc
	and	w11, w11, w5
	add	w16, w9, w18
	orr	w11, w11, w19
	add	w5, w9, w10
	add	w16, w16, w11
	add	w12, w12, w17
	cmp	w16, w18
	add	w4, w2, w4
	cset	w9, eq
	cset	w19, cc
	and	w9, w9, w11
	ldr	w18, [x1, 32]
	orr	w9, w9, w19
	stp	w6, w3, [x0]
	add	w12, w12, w9
	add	w18, w18, w8
	cmp	w12, w17
	stp	w15, w16, [x0, 8]
	cset	w11, eq
	cset	w17, cc
	and	w11, w11, w9
	orr	w11, w11, w17
	add	w13, w13, w11
	stp	w12, w13, [x0, 16]
	cmp	w13, w14
	cset	w9, eq
	cset	w14, cc
	and	w9, w9, w11
	orr	w9, w9, w14
	add	w5, w5, w9
	cmp	w5, w10
	cset	w2, eq
	cset	w7, cc
	and	w2, w2, w9
	orr	w2, w2, w7
	add	w7, w18, w2
	stp	w5, w7, [x0, 24]
	cmp	w7, w8
	ldp	w8, w18, [x1, 44]
	csel	w14, w2, wzr, eq
	cset	w17, cc
	ldr	w11, [x1, 52]
	subs	w6, w6, w8
	ldr	w9, [x1, 32]
	cset	w2, cc
	sub	w11, w15, w11
	sub	w10, w3, w2
	sub	w9, w5, w9
	sub	w10, w10, w18
	ldr	w8, [x1, 40]
	cmp	w10, w3
	stp	w6, w10, [x0]
	csel	w2, w2, wzr, eq
	cset	w3, hi
	orr	w3, w2, w3
	sub	w8, w7, w8
	sub	w11, w11, w3
	cmp	w11, w15
	cset	w2, eq
	cset	w15, hi
	and	w2, w2, w3
	orr	w3, w14, w17
	orr	w2, w2, w15
	subs	w15, w16, w2
	stp	w11, w15, [x0, 8]
	cset	w14, cc
	cmp	w15, w16
	csel	w2, w2, wzr, eq
	orr	w2, w2, w14
	subs	w17, w12, w2
	cset	w14, cc
	cmp	w17, w12
	csel	w2, w2, wzr, eq
	orr	w2, w2, w14
	subs	w12, w13, w2
	stp	w17, w12, [x0, 16]
	cset	w14, cc
	cmp	w12, w13
	cset	w13, eq
	and	w13, w13, w2
	orr	w13, w13, w14
	sub	w9, w9, w13
	cmp	w9, w5
	cset	w2, eq
	cset	w5, hi
	and	w2, w2, w13
	orr	w2, w2, w5
	sub	w8, w8, w2
	stp	w9, w8, [x0, 24]
	cmp	w8, w7
	ldp	w14, w13, [x1, 44]
	csel	w7, w2, wzr, eq
	ldp	w5, w30, [x1, 52]
	cset	w18, hi
	subs	w6, w6, w13
	ldr	w16, [x1, 60]
	cinc	w5, w5, cc
	cset	w2, cc
	subs	w5, w10, w5
	sub	w16, w15, w16
	cset	w13, cc
	cmp	w5, w10
	csel	w2, w2, wzr, eq
	orr	w7, w7, w18
	orr	w2, w2, w13
	sub	w3, w3, w7
	sub	w10, w11, w2
	ldr	w13, [x1, 36]
	sub	w10, w10, w30
	add	w3, w3, w4
	cmp	w10, w11
	sub	w13, w9, w13
	cset	w11, hi
	csel	w2, w2, wzr, eq
	orr	w2, w2, w11
	sub	w14, w8, w14
	sub	w16, w16, w2
	stp	w6, w5, [x0]
	cmp	w16, w15
	stp	w10, w16, [x0, 8]
	cset	w11, hi
	csel	w2, w2, wzr, eq
	orr	w2, w2, w11
	subs	w15, w17, w2
	cset	w11, cc
	cmp	w15, w17
	csel	w2, w2, wzr, eq
	orr	w2, w2, w11
	subs	w11, w12, w2
	stp	w15, w11, [x0, 16]
	cset	w7, cc
	cmp	w11, w12
	csel	w2, w2, wzr, eq
	orr	w2, w2, w7
	sub	w13, w13, w2
	cmp	w13, w9
	cset	w4, hi
	csel	w2, w2, wzr, eq
	orr	w2, w2, w4
	sub	w14, w14, w2
	stp	w13, w14, [x0, 24]
	cmp	w14, w8
	ldp	w4, w9, [x1, 52]
	csel	w8, w2, wzr, eq
	cset	w17, hi
	ldr	w12, [x1, 60]
	subs	w6, w6, w4
	orr	w17, w8, w17
	cinc	w9, w9, cc
	cset	w2, cc
	subs	w9, w5, w9
	cset	w4, cc
	cmp	w5, w9
	csel	w2, w2, wzr, eq
	ldr	w5, [x1, 40]
	orr	w2, w2, w4
	sub	w4, w10, w2
	sub	w5, w11, w5
	sub	w4, w4, w12
	cmp	w10, w4
	ldr	w10, [x1, 48]
	ldp	w18, w7, [x1, 32]
	cset	w12, cc
	csel	w2, w2, wzr, eq
	sub	w10, w14, w10
	orr	w2, w2, w12
	sub	w7, w15, w7
	sub	w12, w16, w2
	stp	w6, w9, [x0]
	sub	w12, w12, w18
	stp	w4, w12, [x0, 8]
	cmp	w16, w12
	cset	w16, cc
	csel	w2, w2, wzr, eq
	orr	w2, w2, w16
	sub	w7, w7, w2
	cmp	w15, w7
	cset	w8, cc
	csel	w2, w2, wzr, eq
	orr	w2, w2, w8
	sub	w5, w5, w2
	stp	w7, w5, [x0, 16]
	cmp	w11, w5
	cset	w8, cc
	csel	w2, w2, wzr, eq
	orr	w2, w2, w8
	subs	w11, w13, w2
	cset	w8, cc
	cmp	w13, w11
	csel	w2, w2, wzr, eq
	orr	w2, w2, w8
	sub	w10, w10, w2
	stp	w11, w10, [x0, 24]
	cmp	w10, w14
	ldr	w8, [x1, 60]
	cset	w14, hi
	ldp	w16, w15, [x1, 36]
	csel	w2, w2, wzr, eq
	ldr	w13, [x1, 56]
	orr	w2, w2, w14
	add	w2, w2, w17
	ldr	w14, [x1, 44]
	subs	w6, w6, w13
	ldr	w13, [x1, 52]
	cinc	w8, w8, cc
	cset	w18, cc
	subs	w8, w9, w8
	sub	w2, w3, w2
	cset	w17, cc
	cmp	w9, w8
	cset	w1, eq
	cmp	w18, 0
	csel	w1, w1, wzr, ne
	stp	w6, w8, [x0]
	orr	w1, w1, w17
	subs	w9, w4, w1
	cset	w3, cc
	cmp	w4, w9
	csel	w1, w1, wzr, eq
	orr	w1, w1, w3
	add	w3, w16, w1
	subs	w4, w12, w3
	stp	w9, w4, [x0, 8]
	cset	w3, cc
	cmp	w12, w4
	csel	w1, w1, wzr, eq
	orr	w1, w1, w3
	sub	w12, w7, w1
	sub	w12, w12, w15
	cmp	w7, w12
	cset	w3, cc
	csel	w1, w1, wzr, eq
	orr	w1, w1, w3
	sub	w7, w5, w1
	sub	w7, w7, w14
	stp	w12, w7, [x0, 16]
	cmp	w5, w7
	csel	w1, w1, wzr, eq
	cset	w3, cc
	orr	w1, w1, w3
	subs	w3, w11, w1
	cset	w5, cc
	cmp	w11, w3
	csel	w1, w1, wzr, eq
	orr	w5, w1, w5
	sub	w1, w10, w5
	sub	w1, w1, w13
	stp	w3, w1, [x0, 24]
	cmp	w1, w10
	csel	w5, w5, wzr, eq
	cset	w10, hi
	orr	w5, w5, w10
	subs	w2, w2, w5
	bmi	.L116
	cbz	w2, .L95
	.p2align 3,,7
.L117:
	ldp	w3, w12, [x0]
	ldp	w8, w11, [x0, 8]
	ldp	w10, w9, [x0, 16]
	ldr	w7, [x0, 24]
.L96:
	add	w5, w3, 1
	add	w6, w8, 1
	cmp	w5, w3
	sub	w4, w7, #1
	cinc	w13, w12, ls
	stp	w5, w13, [x0]
	ccmp	w13, w12, 0, hi
	add	w3, w1, 1
	cset	w5, eq
	cmp	w13, w12
	cset	w12, hi
	orr	w5, w5, w12
	sub	w6, w6, w5
	cmp	w5, 0
	ccmp	w6, w8, 0, ne
	str	w6, [x0, 8]
	cset	w5, eq
	cmp	w6, w8
	cset	w6, hi
	orr	w5, w5, w6
	subs	w6, w11, w5
	str	w6, [x0, 12]
	cset	w8, cc
	cmp	w5, 0
	ccmp	w6, w11, 0, ne
	cset	w5, eq
	orr	w5, w5, w8
	subs	w6, w10, w5
	str	w6, [x0, 16]
	cset	w8, cc
	cmp	w5, 0
	ccmp	w6, w10, 0, ne
	cset	w5, eq
	orr	w5, w5, w8
	subs	w6, w9, w5
	cset	w8, cc
	cmp	w5, 0
	ccmp	w6, w9, 0, ne
	cset	w5, eq
	orr	w5, w5, w8
	sub	w4, w4, w5
	cmp	w5, 0
	ccmp	w4, w7, 0, ne
	stp	w6, w4, [x0, 20]
	cset	w5, eq
	cmp	w4, w7
	cset	w4, hi
	orr	w4, w5, w4
	sub	w3, w3, w4
	cmp	w4, 0
	ccmp	w3, w1, 0, ne
	str	w3, [x0, 28]
	ccmp	w3, w1, 2, ne
	mov	w1, w3
	cset	w3, hi
	sub	w2, w2, w3
	cbnz	w2, .L117
.L95:
	cmn	w1, #1
	bne	.L37
	ldr	w7, [x0, 24]
	cbz	w7, .L37
	ldp	w8, w11, [x0, 8]
	ldp	w10, w9, [x0, 16]
	cmp	w7, 1
	bne	.L115
	cbnz	w9, .L115
	cbnz	w10, .L115
	cbnz	w11, .L115
	cmn	w8, #1
	bne	.L37
	ldr	w3, [x0, 4]
	cmn	w3, #1
	bne	.L37
	ldr	w12, [x0]
	cmn	w12, #1
	bne	.L37
	mov	w3, w8
	mov	w9, 0
	mov	w10, 0
	b	.L96
.L116:
	sub	w6, w6, #1
	.p2align 3,,7
.L93:
	cmn	w6, #1
	sub	w5, w8, #1
	mov	w10, w8
	cinc	w8, w5, ne
	ccmp	w10, w8, 0, ne
	sub	w11, w9, #1
	cset	w5, eq
	cmp	w10, w8
	cset	w13, hi
	mov	w10, w9
	orr	w5, w5, w13
	mov	w16, w4
	add	w9, w11, w5
	cmp	w5, 0
	ccmp	w10, w9, 0, ne
	add	w13, w3, 1
	cset	w5, eq
	cmp	w10, w9
	cset	w10, hi
	sub	w11, w1, #1
	orr	w5, w5, w10
	mov	w10, w3
	adds	w4, w4, w5
	mov	w14, w12
	cset	w3, cs
	cmp	w5, 0
	ccmp	w16, w4, 0, ne
	mov	w5, w1
	cset	w1, eq
	mov	w15, w7
	orr	w1, w1, w3
	mov	w16, w6
	adds	w12, w12, w1
	sub	w6, w6, #1
	cset	w3, cs
	cmp	w1, 0
	ccmp	w14, w12, 0, ne
	cset	w1, eq
	orr	w1, w1, w3
	adds	w7, w7, w1
	cset	w14, cs
	cmp	w1, 0
	ccmp	w15, w7, 0, ne
	cset	w3, eq
	orr	w3, w3, w14
	cmp	w3, 0
	add	w3, w13, w3
	ccmp	w10, w3, 0, ne
	cset	w1, eq
	cmp	w10, w3
	cset	w10, hi
	orr	w1, w1, w10
	cmp	w1, 0
	add	w1, w11, w1
	ccmp	w5, w1, 0, ne
	ccmp	w5, w1, 2, ne
	cinc	w2, w2, hi
	cbnz	w2, .L93
	stp	w16, w8, [x0]
	stp	w9, w4, [x0, 8]
	stp	w12, w7, [x0, 16]
	stp	w3, w1, [x0, 24]
.L37:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L115:
	.cfi_restore_state
	ldp	w3, w12, [x0]
	b	.L96
.L38:
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w2, [x1, 4]
	str	w2, [x0, 4]
	ldr	w2, [x1, 8]
	str	w2, [x0, 8]
	ldr	w2, [x1, 12]
	str	w2, [x0, 12]
	ldr	w2, [x1, 16]
	str	w2, [x0, 16]
	ldr	w2, [x1, 20]
	str	w2, [x0, 20]
	ldr	w2, [x1, 24]
	str	w2, [x0, 24]
	ldr	w2, [x1, 28]
	str	w2, [x0, 28]
	b	.L39
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.p2align 4,,11
	.type	uECC_vli_modInv.part.0, %function
uECC_vli_modInv.part.0:
.LFB60:
	.cfi_startproc
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 160
	stp	x19, x20, [sp, 176]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x2
	stp	x21, x22, [sp, 192]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	sxtb	w21, w3
	stp	x23, x24, [sp, 208]
	stp	x25, x26, [sp, 224]
	stp	x27, x28, [sp, 240]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	ldr	x3, [x4]
	str	x3, [sp, 152]
	mov	x3, 0
	str	x0, [sp, 8]
	cmp	w21, 0
	ble	.L119
	ubfiz	x24, x21, 2, 8
	add	x25, sp, 24
	mov	x2, x24
	mov	x0, x25
	add	x23, sp, 56
	bl	memcpy
	mov	x2, x24
	mov	x1, x20
	mov	x0, x23
	add	x22, sp, 88
	bl	memcpy
	add	x19, sp, 120
	mov	x2, x24
	mov	w1, 0
	mov	x0, x22
	bl	memset
	mov	w4, 1
	mov	x2, x24
	mov	x0, x19
	mov	w1, 0
	str	w4, [sp, 88]
	bl	memset
.L120:
	sub	w0, w21, #1
	sbfiz	x13, x21, 2, 32
	add	x14, x23, x13
	mov	x28, -4
	sbfiz	x11, x0, 2, 8
	sub	x28, x28, x13
	add	x13, x25, x13
	add	x9, x25, x11
	add	x8, x23, x11
	add	x26, x19, x11
	add	x27, x14, x28
	add	x11, x22, x11
	sub	x15, x14, #4
	add	x28, x13, x28
	sub	x18, x13, #4
	and	w24, w0, 255
	sxtb	w12, w0
	sxtw	x10, w21
	tbnz	x0, 7, .L118
	.p2align 3,,7
.L121:
	mov	w1, w12
	mov	x4, 0
	b	.L149
	.p2align 2,,3
.L190:
	bcc	.L162
	sub	w1, w1, #1
	sub	x4, x4, #4
	sxtb	w1, w1
	cmn	w1, #1
	beq	.L189
.L149:
	ldr	w0, [x9, x4]
	ldr	w5, [x8, x4]
	cmp	w0, w5
	bls	.L190
	ldr	w1, [sp, 24]
	mov	w2, 1
	and	w0, w1, 1
	tbz	x1, 0, .L191
.L187:
	ldr	w1, [sp, 56]
	and	w0, w1, 1
	tbz	x1, 0, .L192
	cmp	w2, 1
	beq	.L129
	mov	x2, 1
	mov	w0, 0
	cmp	w21, 0
	ble	.L131
	.p2align 3,,7
.L130:
	lsl	x1, x2, 2
	mov	x4, x2
	add	x6, x23, x1
	add	x1, x25, x1
	add	x2, x2, 1
	ldr	w5, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w5, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w5, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x4, x10
	bne	.L130
.L131:
	mov	x1, x15
	mov	w0, 0
	cmp	x14, x23
	bls	.L143
	.p2align 3,,7
.L141:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x27, x1
	bne	.L141
.L143:
	mov	w0, w12
	mov	x1, 0
	b	.L142
	.p2align 2,,3
.L193:
	bcc	.L145
	sub	w0, w0, #1
	sub	x1, x1, #4
	sxtb	w0, w0
	cmn	w0, #1
	beq	.L144
.L142:
	ldr	w4, [x26, x1]
	ldr	w2, [x11, x1]
	cmp	w4, w2
	bls	.L193
.L144:
	cmp	w21, 0
	ble	.L128
.L154:
	mov	x2, 1
	mov	w0, 0
	.p2align 3,,7
.L147:
	lsl	x1, x2, 2
	mov	x4, x2
	add	x6, x19, x1
	add	x1, x22, x1
	add	x2, x2, 1
	ldr	w5, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w5, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w5, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x10, x4
	bne	.L147
.L128:
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	vli_modInv_update
	b	.L121
	.p2align 2,,3
.L162:
	ldr	w1, [sp, 24]
	mov	w2, -1
	and	w0, w1, 1
	tbnz	x1, 0, .L187
.L191:
	mov	x1, x18
	cmp	x13, x25
	bls	.L125
	.p2align 3,,7
.L123:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x1, x28
	bne	.L123
.L125:
	mov	w2, w21
	mov	x1, x20
	mov	x0, x22
	bl	vli_modInv_update
	b	.L121
	.p2align 2,,3
.L192:
	mov	x1, x15
	cmp	x14, x23
	bls	.L128
	.p2align 3,,7
.L127:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x27, x1
	bne	.L127
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	vli_modInv_update
	b	.L121
	.p2align 2,,3
.L129:
	cmp	w21, 0
	ble	.L132
	mov	x2, 1
	mov	w0, 0
	.p2align 3,,7
.L133:
	lsl	x1, x2, 2
	mov	x4, x2
	add	x6, x25, x1
	add	x1, x23, x1
	add	x2, x2, 1
	ldr	w5, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w5, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w5, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x10, x4
	bne	.L133
.L132:
	mov	x1, x18
	mov	w0, 0
	cmp	x13, x25
	bls	.L136
	.p2align 3,,7
.L134:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x1, x28
	bne	.L134
.L136:
	mov	w0, w12
	mov	x1, 0
	b	.L135
	.p2align 2,,3
.L194:
	bcc	.L138
	sub	w0, w0, #1
	sub	x1, x1, #4
	sxtb	w0, w0
	cmn	w0, #1
	beq	.L137
.L135:
	ldr	w4, [x11, x1]
	ldr	w2, [x26, x1]
	cmp	w4, w2
	bls	.L194
.L137:
	cmp	w21, 0
	ble	.L125
.L153:
	mov	x2, 1
	mov	w0, 0
	.p2align 3,,7
.L140:
	lsl	x1, x2, 2
	mov	x4, x2
	add	x6, x22, x1
	add	x1, x19, x1
	add	x2, x2, 1
	ldr	w5, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w5, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w5, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x10, x4
	bne	.L140
	mov	w2, w21
	mov	x1, x20
	mov	x0, x22
	bl	vli_modInv_update
	b	.L121
	.p2align 2,,3
.L189:
	cmp	w21, 0
	ble	.L118
	ldr	x0, [sp, 8]
	ubfiz	x2, x24, 2, 8
	mov	x1, x22
	add	x2, x2, 4
	bl	memcpy
.L118:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L195
	ldp	x29, x30, [sp, 160]
	ldp	x19, x20, [sp, 176]
	ldp	x21, x22, [sp, 192]
	ldp	x23, x24, [sp, 208]
	ldp	x25, x26, [sp, 224]
	ldp	x27, x28, [sp, 240]
	add	sp, sp, 256
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L145:
	.cfi_restore_state
	sub	x5, x20, #4
	mov	x2, 1
	mov	w1, 0
	cmp	w21, 0
	ble	.L128
	.p2align 3,,7
.L146:
	add	x7, x19, x2, lsl 2
	ldr	w0, [x5, x2, lsl 2]
	mov	x4, x2
	add	x2, x2, 1
	ldr	w6, [x7, -4]
	add	w0, w6, w0
	add	w0, w0, w1
	str	w0, [x7, -4]
	cmp	w6, w0
	csel	w1, w1, wzr, eq
	cset	w0, hi
	orr	w1, w1, w0
	cmp	x10, x4
	bne	.L146
	b	.L154
.L138:
	sub	x5, x20, #4
	mov	x2, 1
	mov	w1, 0
	cmp	w21, 0
	ble	.L125
	.p2align 3,,7
.L139:
	add	x7, x22, x2, lsl 2
	ldr	w0, [x5, x2, lsl 2]
	mov	x4, x2
	add	x2, x2, 1
	ldr	w6, [x7, -4]
	add	w0, w6, w0
	add	w0, w0, w1
	str	w0, [x7, -4]
	cmp	w6, w0
	csel	w1, w1, wzr, eq
	cset	w0, hi
	orr	w1, w1, w0
	cmp	x10, x4
	bne	.L139
	b	.L153
.L119:
	mov	w0, 1
	add	x25, sp, 24
	add	x23, sp, 56
	add	x22, sp, 88
	add	x19, sp, 120
	str	w0, [sp, 88]
	b	.L120
.L195:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE60:
	.size	uECC_vli_modInv.part.0, .-uECC_vli_modInv.part.0
	.align	2
	.p2align 4,,11
	.global	uECC_set_rng
	.type	uECC_set_rng, %function
uECC_set_rng:
.LFB14:
	.cfi_startproc
	adrp	x1, .LANCHOR0
	str	x0, [x1, #:lo12:.LANCHOR0]
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_set_rng, .-uECC_set_rng
	.align	2
	.p2align 4,,11
	.global	uECC_get_rng
	.type	uECC_get_rng, %function
uECC_get_rng:
.LFB15:
	.cfi_startproc
	adrp	x0, .LANCHOR0
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_get_rng, .-uECC_get_rng
	.align	2
	.p2align 4,,11
	.global	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, %function
uECC_curve_private_key_size:
.LFB16:
	.cfi_startproc
	ldrsh	w1, [x0, 2]
	add	w0, w1, 14
	adds	w1, w1, 7
	csel	w0, w0, w1, mi
	asr	w0, w0, 3
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	2
	.p2align 4,,11
	.global	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, %function
uECC_curve_public_key_size:
.LFB17:
	.cfi_startproc
	ldrsb	w0, [x0, 1]
	lsl	w0, w0, 1
	ret
	.cfi_endproc
.LFE17:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	2
	.p2align 4,,11
	.global	uECC_vli_clear
	.type	uECC_vli_clear, %function
uECC_vli_clear:
.LFB18:
	.cfi_startproc
	sxtb	w1, w1
	cmp	w1, 0
	ble	.L200
	ubfiz	x2, x1, 2, 8
	mov	w1, 0
	b	memset
	.p2align 2,,3
.L200:
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	2
	.p2align 4,,11
	.global	uECC_vli_isZero
	.type	uECC_vli_isZero, %function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	sxtb	w1, w1
	cmp	w1, 0
	ble	.L207
	and	w4, w1, 255
	sub	w2, w4, #1
	and	w2, w2, 255
	cmp	w2, 3
	bls	.L208
	lsr	w3, w4, 2
	mov	x2, x0
	movi	v1.4s, 0
	add	x3, x0, w3, uxtw 4
	.p2align 3,,7
.L205:
	ldr	q0, [x2], 16
	orr	v1.16b, v1.16b, v0.16b
	cmp	x3, x2
	bne	.L205
	movi	v0.4s, 0
	and	w3, w1, 252
	and	w5, w1, -4
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v1.16b, v2.16b, v1.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w2, s0
	cmp	w4, w3
	beq	.L206
.L204:
	ldr	w6, [x0, w5, sxtw 2]
	add	w5, w3, 1
	and	x4, x5, 255
	orr	w2, w2, w6
	cmp	w1, w5, sxtb
	ble	.L206
	ldr	w4, [x0, x4, lsl 2]
	add	w6, w3, 2
	and	x5, x6, 255
	orr	w2, w2, w4
	cmp	w1, w6, sxtb
	ble	.L206
	ldr	w5, [x0, x5, lsl 2]
	add	w3, w3, 3
	and	x4, x3, 255
	orr	w2, w2, w5
	cmp	w1, w3, sxtb
	ble	.L206
	ldr	w0, [x0, x4, lsl 2]
	orr	w2, w2, w0
.L206:
	cmp	w2, 0
	cset	w0, eq
	ret
	.p2align 2,,3
.L207:
	mov	w0, 1
	ret
.L208:
	mov	w5, 0
	mov	w2, 0
	mov	w3, 0
	b	.L204
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
	.p2align 4,,11
	.global	uECC_vli_testBit
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
.LFB20:
	.cfi_startproc
	sbfx	w3, w1, 5, 11
	mov	w2, 1
	lsl	w1, w2, w1
	ldr	w0, [x0, w3, sxtw 2]
	and	w0, w1, w0
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	2
	.p2align 4,,11
	.global	uECC_vli_numBits
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	sxtb	w1, w1
	mov	x4, x0
	sub	w3, w1, #1
	and	w2, w3, 255
	tbnz	x3, 7, .L212
	uxtw	x1, w2
	b	.L213
	.p2align 2,,3
.L214:
	tbnz	x2, 7, .L221
	mov	x1, x2
.L213:
	ldr	w3, [x4, x1, lsl 2]
	sub	x2, x1, #1
	cbz	w3, .L214
	add	w1, w1, 1
.L221:
	sxtb	w1, w1
.L212:
	mov	w0, 0
	cbz	w1, .L215
	add	x4, x4, w1, sxtw 2
	mov	w0, 32
	sub	w1, w1, #1
	ldr	w2, [x4, -4]
	clz	w3, w2
	cmp	w2, 0
	sub	w0, w0, w3
	and	w0, w0, 65535
	csel	w0, w0, wzr, ne
	add	w1, w0, w1, lsl 5
	sxth	w0, w1
.L215:
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	2
	.p2align 4,,11
	.global	uECC_vli_set
	.type	uECC_vli_set, %function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	sxtb	w2, w2
	cmp	w2, 0
	ble	.L222
	and	w5, w2, 255
	sub	w3, w5, #1
	and	w3, w3, 255
	cmp	w3, 5
	bls	.L224
	add	x3, x1, 4
	sub	x3, x0, x3
	cmp	x3, 8
	bhi	.L231
.L224:
	sbfiz	x2, x2, 2, 32
	mov	x3, 0
	.p2align 3,,7
.L227:
	ldr	w4, [x1, x3]
	str	w4, [x0, x3]
	add	x3, x3, 4
	cmp	x3, x2
	bne	.L227
.L222:
	ret
	.p2align 2,,3
.L231:
	ubfx	x4, x5, 2, 6
	mov	x3, 0
	lsl	x4, x4, 4
	.p2align 3,,7
.L225:
	ldr	q0, [x1, x3]
	str	q0, [x0, x3]
	add	x3, x3, 16
	cmp	x4, x3
	bne	.L225
	and	w3, w2, 252
	cmp	w5, w3
	beq	.L222
	uxtw	x6, w3
	add	w5, w3, 1
	and	x4, x5, 255
	ldr	w7, [x1, x6, lsl 2]
	str	w7, [x0, x6, lsl 2]
	cmp	w2, w5, sxtb
	ble	.L222
	ldr	w6, [x1, x4, lsl 2]
	add	w3, w3, 2
	str	w6, [x0, x4, lsl 2]
	and	w5, w3, 255
	cmp	w2, w3, sxtb
	ble	.L222
	uxtw	x2, w5
	ldr	w1, [x1, x2, lsl 2]
	str	w1, [x0, x2, lsl 2]
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_set, .-uECC_vli_set
	.align	2
	.p2align 4,,11
	.global	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, %function
uECC_vli_cmp_unsafe:
.LFB24:
	.cfi_startproc
	sxtb	w2, w2
	sub	w3, w2, #1
	and	x2, x3, 255
	tbz	x3, 7, .L234
	b	.L235
	.p2align 2,,3
.L239:
	bcc	.L237
	tbnz	x2, 7, .L235
.L234:
	ldr	w4, [x0, x2, lsl 2]
	ldr	w3, [x1, x2, lsl 2]
	sub	x2, x2, #1
	cmp	w4, w3
	bls	.L239
	mov	w0, 1
	ret
	.p2align 2,,3
.L235:
	mov	w0, 0
	ret
	.p2align 2,,3
.L237:
	mov	w0, -1
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	2
	.p2align 4,,11
	.global	uECC_vli_equal
	.type	uECC_vli_equal, %function
uECC_vli_equal:
.LFB25:
	.cfi_startproc
	and	w8, w2, 255
	sxtb	w2, w2
	sub	w3, w8, #1
	and	w5, w3, 255
	sxtb	w4, w3
	tbnz	x3, 7, .L245
	cmp	w5, 2
	bls	.L246
	adrp	x9, .LC0
	mov	x3, -12
	ubfx	x6, x8, 2, 6
	add	x5, x3, w5, uxtw 2
	movi	v2.4s, 0
	add	x7, x0, x5
	ldr	q3, [x9, #:lo12:.LC0]
	add	x5, x1, x5
	neg	x6, x6, lsl 4
	mov	x3, 0
	.p2align 3,,7
.L243:
	ldr	q1, [x5, x3]
	ldr	q0, [x7, x3]
	sub	x3, x3, #16
	eor	v0.16b, v0.16b, v1.16b
	mov	v1.16b, v0.16b
	tbl	v0.16b, {v0.16b - v1.16b}, v3.16b
	orr	v2.16b, v2.16b, v0.16b
	cmp	x6, x3
	bne	.L243
	movi	v0.4s, 0
	and	w5, w2, 252
	and	w2, w2, -4
	ext	v1.16b, v2.16b, v0.16b, #8
	orr	v1.16b, v1.16b, v2.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w3, s0
	cmp	w8, w5
	beq	.L244
	sub	w4, w4, w2
	sxtb	w4, w4
.L242:
	sxtw	x6, w4
	and	w4, w4, 255
	sub	w2, w4, #1
	and	x2, x2, 255
	ldr	w5, [x0, x6, lsl 2]
	ldr	w6, [x1, x6, lsl 2]
	eor	w5, w5, w6
	orr	w3, w3, w5
	cmp	w2, 255
	beq	.L244
	ldr	w5, [x1, x2, lsl 2]
	sub	w4, w4, #2
	ldr	w2, [x0, x2, lsl 2]
	and	x4, x4, 255
	eor	w2, w5, w2
	orr	w3, w3, w2
	cmp	w4, 255
	beq	.L244
	ldr	w1, [x1, x4, lsl 2]
	ldr	w0, [x0, x4, lsl 2]
	eor	w0, w1, w0
	orr	w3, w3, w0
.L244:
	cmp	w3, 0
	cset	w0, ne
	ret
	.p2align 2,,3
.L245:
	mov	w0, 0
	ret
.L246:
	mov	w3, 0
	b	.L242
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
	.p2align 4,,11
	.global	cond_set
	.type	cond_set, %function
cond_set:
.LFB26:
	.cfi_startproc
	mul	w0, w0, w2
	cmp	w2, 0
	csel	w1, w1, wzr, eq
	orr	w0, w1, w0
	ret
	.cfi_endproc
.LFE26:
	.size	cond_set, .-cond_set
	.align	2
	.p2align 4,,11
	.global	uECC_vli_sub
	.type	uECC_vli_sub, %function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	sxtb	w3, w3
	mov	x8, x0
	cmp	w3, 0
	ble	.L258
	sbfiz	x3, x3, 2, 32
	mov	x4, 0
	mov	w0, 0
	.p2align 3,,7
.L257:
	ldr	w6, [x1, x4]
	ldr	w7, [x2, x4]
	sub	w5, w6, w0
	sub	w5, w5, w7
	str	w5, [x8, x4]
	cmp	w6, w5
	add	x4, x4, 4
	csel	w0, w0, wzr, eq
	cset	w5, cc
	orr	w0, w0, w5
	cmp	x4, x3
	bne	.L257
	ret
	.p2align 2,,3
.L258:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.p2align 4,,11
	.global	uECC_vli_cmp
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	sxtb	w2, w2
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	ldr	x4, [x3]
	str	x4, [sp, 40]
	mov	x4, 0
	cmp	w2, 0
	ble	.L267
	sxtw	x11, w2
	mov	x8, sp
	sub	x10, x0, #4
	sub	x9, x1, #4
	mov	x0, 1
	mov	w1, 0
	.p2align 3,,7
.L262:
	ldr	w5, [x10, x0, lsl 2]
	add	x6, x8, x0, lsl 2
	ldr	w7, [x9, x0, lsl 2]
	mov	x4, x0
	sub	w3, w5, w1
	add	x0, x0, 1
	sub	w3, w3, w7
	str	w3, [x6, -4]
	cmp	w5, w3
	csel	w1, w1, wzr, eq
	cset	w3, cc
	orr	w1, w1, w3
	cmp	x11, x4
	bne	.L262
	and	w0, w2, 255
	cmp	w1, 0
	sub	w1, w0, #1
	cset	w3, ne
	and	w1, w1, 255
	cmp	w1, 3
	bls	.L268
	movi	v1.4s, 0
	ubfx	x1, x0, 2, 6
	mov	x0, x8
	add	x1, x8, x1, lsl 4
	.p2align 3,,7
.L264:
	ldr	q0, [x0], 16
	orr	v1.16b, v1.16b, v0.16b
	cmp	x1, x0
	bne	.L264
	movi	v0.4s, 0
	and	w4, w2, -4
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v1.16b, v2.16b, v1.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w0, s0
	tst	x2, 3
	beq	.L265
.L263:
	and	w1, w4, 255
	ldr	w4, [x8, w4, sxtw 2]
	add	w5, w1, 1
	orr	w0, w0, w4
	and	x4, x5, 255
	cmp	w2, w5, sxtb
	ble	.L265
	ldr	w4, [x8, x4, lsl 2]
	add	w6, w1, 2
	and	x5, x6, 255
	orr	w0, w0, w4
	cmp	w2, w6, sxtb
	ble	.L265
	ldr	w5, [x8, x5, lsl 2]
	add	w1, w1, 3
	and	x4, x1, 255
	orr	w0, w0, w5
	cmp	w2, w1, sxtb
	ble	.L265
	ldr	w1, [x8, x4, lsl 2]
	orr	w0, w0, w1
.L265:
	cmp	w0, 0
	cset	w0, ne
	sub	w0, w0, w3, lsl 1
	sxtb	w0, w0
.L261:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L275
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L267:
	.cfi_restore_state
	mov	w0, 0
	b	.L261
.L268:
	mov	w0, 0
	mov	w4, 0
	b	.L263
.L275:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modAdd
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	sxtb	w4, w4
	cmp	w4, 0
	ble	.L292
	sxtw	x9, w4
	sbfiz	x10, x4, 2, 32
	mov	x6, 0
	mov	w7, 0
	.p2align 3,,7
.L280:
	ldr	w8, [x1, x6]
	ldr	w5, [x2, x6]
	add	w5, w8, w5
	add	w5, w5, w7
	str	w5, [x0, x6]
	cmp	w8, w5
	add	x6, x6, 4
	csel	w7, w7, wzr, eq
	cset	w5, hi
	orr	w7, w7, w5
	cmp	x6, x10
	bne	.L280
	cbz	w7, .L293
.L281:
	lsl	x7, x9, 2
	mov	x1, 0
	mov	w2, 0
	.p2align 3,,7
.L285:
	ldr	w5, [x0, x1]
	ldr	w6, [x3, x1]
	sub	w4, w5, w2
	sub	w4, w4, w6
	str	w4, [x0, x1]
	cmp	w5, w4
	add	x1, x1, 4
	csel	w2, w2, wzr, eq
	cset	w4, cc
	orr	w2, w2, w4
	cmp	x1, x7
	bne	.L285
.L276:
	ret
	.p2align 2,,3
.L293:
	sub	w1, w4, #1
	sxtb	x1, w1
	b	.L284
	.p2align 2,,3
.L294:
	bcc	.L283
	tbnz	x1, 7, .L283
.L284:
	ldr	w5, [x3, x1, lsl 2]
	ldr	w2, [x0, x1, lsl 2]
	sub	x1, x1, #1
	cmp	w5, w2
	bls	.L294
	b	.L276
	.p2align 2,,3
.L283:
	sxtw	x9, w4
	cmp	w4, 0
	bgt	.L281
	ret
	.p2align 2,,3
.L292:
	sub	w2, w4, #1
	mov	x1, 127
	tbz	x2, 7, .L284
	ret
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modSub
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	sxtb	w4, w4
	cmp	w4, 0
	ble	.L295
	sbfiz	x4, x4, 2, 32
	mov	x5, 0
	mov	w6, 0
	.p2align 3,,7
.L297:
	ldr	w8, [x1, x5]
	ldr	w9, [x2, x5]
	sub	w7, w8, w6
	sub	w7, w7, w9
	str	w7, [x0, x5]
	cmp	w8, w7
	add	x5, x5, 4
	csel	w6, w6, wzr, eq
	cset	w7, cc
	orr	w6, w6, w7
	cmp	x5, x4
	bne	.L297
	cbz	w6, .L295
	mov	x2, 0
	mov	w5, 0
	.p2align 3,,7
.L298:
	ldr	w6, [x0, x2]
	ldr	w1, [x3, x2]
	add	w1, w6, w1
	add	w1, w1, w5
	str	w1, [x0, x2]
	cmp	w6, w1
	add	x2, x2, 4
	csel	w5, w5, wzr, eq
	cset	w1, hi
	orr	w5, w5, w1
	cmp	x2, x4
	bne	.L298
.L295:
	ret
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.p2align 4,,11
	.global	double_jacobian_default
	.type	double_jacobian_default, %function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 160
	stp	x21, x22, [sp, 192]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x3
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 176]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x0
	stp	x25, x26, [sp, 224]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	ldrsb	w25, [x21]
	ldr	x0, [x3]
	str	x0, [sp, 152]
	mov	x0, 0
	cmp	w25, 0
	ble	.L304
	stp	x27, x28, [sp, 240]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	and	w27, w25, 255
	sub	w28, w27, #1
	and	w28, w28, 255
	mov	x26, x1
	mov	x20, x2
	cmp	w28, 3
	bls	.L331
	movi	v1.4s, 0
	lsr	w0, w27, 2
	add	x0, x2, w0, uxtw 4
	.p2align 3,,7
.L307:
	ldr	q0, [x2], 16
	orr	v1.16b, v1.16b, v0.16b
	cmp	x0, x2
	bne	.L307
	movi	v0.4s, 0
	and	w0, w25, 252
	and	w1, w25, -4
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v1.16b, v2.16b, v1.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w2, s0
	cmp	w27, w0
	beq	.L308
.L306:
	ldr	w4, [x20, w1, sxtw 2]
	add	w3, w0, 1
	and	x1, x3, 255
	orr	w2, w2, w4
	cmp	w25, w3, sxtb
	ble	.L308
	ldr	w1, [x20, x1, lsl 2]
	add	w4, w0, 2
	and	x3, x4, 255
	orr	w2, w2, w1
	cmp	w25, w4, sxtb
	ble	.L308
	ldr	w3, [x20, x3, lsl 2]
	add	w0, w0, 3
	and	x1, x0, 255
	orr	w2, w2, w3
	cmp	w25, w0, sxtb
	ble	.L308
	ldr	w0, [x20, x1, lsl 2]
	orr	w2, w2, w0
.L308:
	cbz	w2, .L345
	add	x22, sp, 88
	mov	x2, x26
	mov	w3, w25
	mov	x0, x22
	mov	x1, x26
	stp	x23, x24, [sp, 208]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	bl	uECC_vli_mult
	ldr	x2, [x21, 184]
	add	x23, sp, 24
	mov	x0, x23
	mov	x1, x22
	add	x24, x21, 4
	blr	x2
	ldrb	w3, [x21]
	mov	x2, x23
	mov	x1, x19
	mov	x0, x22
	bl	uECC_vli_mult
	add	x0, sp, 56
	ldr	x2, [x21, 184]
	mov	x1, x22
	str	x0, [sp]
	blr	x2
	ldrb	w3, [x21]
	mov	x2, x23
	mov	x1, x23
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x21, 184]
	mov	x0, x23
	blr	x2
	ldrb	w3, [x21]
	mov	x2, x20
	mov	x1, x26
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x21, 184]
	mov	x0, x26
	blr	x2
	ldrb	w3, [x21]
	mov	x2, x20
	mov	x1, x20
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x21, 184]
	mov	x0, x20
	blr	x2
	mov	x3, x24
	mov	w4, w25
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modAdd
	mov	w4, w25
	mov	x0, x20
	mov	x2, x20
	mov	x1, x20
	bl	uECC_vli_modAdd
	mov	w4, w25
	mov	x2, x20
	mov	x1, x19
	bl	uECC_vli_modSub
	ldrb	w3, [x21]
	mov	x2, x20
	mov	x1, x19
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x21, 184]
	mov	x0, x19
	blr	x2
	mov	w4, w25
	mov	x3, x24
	mov	x2, x19
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	mov	w4, w25
	bl	uECC_vli_modAdd
	ldr	w1, [x19]
	sbfiz	x6, x25, 2, 32
	add	x2, x19, x6
	and	w0, w1, 1
	tbz	x1, 0, .L346
	mov	x3, 0
	mov	w5, 0
	.p2align 3,,7
.L311:
	ldr	w0, [x19, x3]
	ldr	w4, [x24, x3]
	add	w4, w0, w4
	add	w4, w4, w5
	str	w4, [x19, x3]
	cmp	w0, w4
	add	x3, x3, 4
	csel	w5, w5, wzr, eq
	cset	w0, hi
	orr	w5, w5, w0
	cmp	x6, x3
	bne	.L311
	mov	w0, 0
	cmp	x19, x2
	bcs	.L315
	.p2align 3,,7
.L314:
	ldr	w1, [x2, -4]
	orr	w0, w0, w1, lsr 1
	str	w0, [x2, -4]!
	lsl	w0, w1, 31
	cmp	x19, x2
	bcc	.L314
.L315:
	sub	x0, x6, #4
	ldr	w1, [x19, x0]
	orr	w5, w1, w5, lsl 31
	str	w5, [x19, x0]
.L313:
	ldrb	w3, [x21]
	mov	x2, x19
	mov	x1, x19
	mov	x0, x22
	str	x6, [sp, 8]
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x21, 184]
	mov	x0, x20
	blr	x2
	ldr	x10, [sp]
	mov	x3, x24
	mov	x0, x20
	mov	w4, w25
	mov	x2, x10
	mov	x1, x20
	bl	uECC_vli_modSub
	mov	x2, x10
	mov	w4, w25
	mov	x1, x20
	bl	uECC_vli_modSub
	mov	w4, w25
	mov	x1, x10
	mov	x0, x10
	mov	x2, x20
	bl	uECC_vli_modSub
	ldrb	w3, [x21]
	mov	x2, x10
	mov	x1, x19
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x21, 184]
	mov	x0, x19
	blr	x2
	mov	w4, w25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x19
	mov	x0, x23
	bl	uECC_vli_modSub
	ldr	x6, [sp, 8]
	cmp	w28, 5
	bls	.L332
	add	x0, x20, 4
	mov	x2, 0
	sub	x0, x19, x0
	cmp	x0, 8
	bhi	.L347
	.p2align 3,,7
.L322:
	ldr	w0, [x20, x2]
	str	w0, [x19, x2]
	add	x2, x2, 4
	cmp	x6, x2
	bne	.L322
	cmp	w28, 5
	bhi	.L324
.L325:
	mov	x2, 0
	.p2align 3,,7
.L328:
	ldr	w0, [x26, x2]
	str	w0, [x20, x2]
	add	x2, x2, 4
	cmp	x6, x2
	bne	.L328
.L329:
	ubfiz	x2, x27, 2, 8
	mov	x1, x23
	mov	x0, x26
	bl	memcpy
	ldp	x23, x24, [sp, 208]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 240]
	.cfi_restore 28
	.cfi_restore 27
.L304:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L348
	ldp	x29, x30, [sp, 160]
	ldp	x19, x20, [sp, 176]
	ldp	x21, x22, [sp, 192]
	ldp	x25, x26, [sp, 224]
	add	sp, sp, 256
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L317:
	.cfi_def_cfa_offset 256
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	ldr	w1, [x2, -4]
	orr	w0, w0, w1, lsr 1
	str	w0, [x2, -4]!
	lsl	w0, w1, 31
.L346:
	cmp	x19, x2
	bcc	.L317
	b	.L313
	.p2align 2,,3
.L345:
	.cfi_restore 23
	.cfi_restore 24
	ldp	x27, x28, [sp, 240]
	.cfi_restore 28
	.cfi_restore 27
	b	.L304
	.p2align 2,,3
.L347:
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	ubfx	x1, x27, 2, 6
	mov	x0, 0
	lsl	x1, x1, 4
	.p2align 3,,7
.L320:
	ldr	q0, [x20, x0]
	str	q0, [x19, x0]
	add	x0, x0, 16
	cmp	x1, x0
	bne	.L320
	and	w0, w25, 252
	cmp	w0, w27
	beq	.L324
	uxtw	x3, w0
	add	w2, w0, 1
	and	x1, x2, 255
	ldr	w4, [x20, x3, lsl 2]
	str	w4, [x19, x3, lsl 2]
	cmp	w25, w2, sxtb
	ble	.L324
	ldr	w3, [x20, x1, lsl 2]
	add	w0, w0, 2
	str	w3, [x19, x1, lsl 2]
	and	w2, w0, 255
	cmp	w25, w0, sxtb
	ble	.L324
	uxtw	x0, w2
	ldr	w1, [x20, x0, lsl 2]
	str	w1, [x19, x0, lsl 2]
.L324:
	add	x0, x26, 4
	sub	x0, x20, x0
	cmp	x0, 8
	bls	.L325
	ubfx	x1, x27, 2, 6
	mov	x0, 0
	lsl	x1, x1, 4
	.p2align 3,,7
.L326:
	ldr	q0, [x26, x0]
	str	q0, [x20, x0]
	add	x0, x0, 16
	cmp	x1, x0
	bne	.L326
	and	w0, w25, 252
	cmp	w0, w27
	beq	.L329
	uxtw	x3, w0
	add	w2, w0, 1
	and	x1, x2, 255
	ldr	w4, [x26, x3, lsl 2]
	str	w4, [x20, x3, lsl 2]
	cmp	w25, w2, sxtb
	ble	.L329
	ldr	w3, [x26, x1, lsl 2]
	add	w0, w0, 2
	str	w3, [x20, x1, lsl 2]
	and	w2, w0, 255
	cmp	w25, w0, sxtb
	ble	.L329
	uxtw	x0, w2
	ubfiz	x2, x27, 2, 8
	ldr	w1, [x26, x0, lsl 2]
	str	w1, [x20, x0, lsl 2]
	mov	x1, x23
	mov	x0, x26
	bl	memcpy
	ldp	x23, x24, [sp, 208]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 240]
	.cfi_restore 28
	.cfi_restore 27
	b	.L304
	.p2align 2,,3
.L332:
	.cfi_restore_state
	mov	x2, 0
	b	.L322
.L331:
	.cfi_restore 23
	.cfi_restore 24
	mov	w2, 0
	mov	w1, 0
	mov	w0, 0
	b	.L306
.L348:
	.cfi_restore 27
	.cfi_restore 28
	stp	x23, x24, [sp, 208]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x27, x28, [sp, 240]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.p2align 4,,11
	.global	x_side_default
	.type	x_side_default, %function
x_side_default:
.LFB42:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	mov	w4, 3
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x2
	mov	x19, x0
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	add	x21, sp, 40
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x22, x1
	add	x24, x20, 4
	ldr	x0, [x2]
	str	x0, [sp, 104]
	mov	x0, 0
	str	w4, [sp, 8]
	add	x4, sp, 4
	ldrsb	w23, [x20]
	mov	x2, x1
	mov	x0, x21
	mov	w3, w23
	stp	xzr, xzr, [x4, 8]
	str	xzr, [sp, 28]
	str	wzr, [sp, 36]
	bl	uECC_vli_mult
	ldr	x2, [x20, 184]
	mov	x1, x21
	mov	x0, x19
	blr	x2
	mov	x3, x24
	mov	w4, w23
	add	x2, sp, 8
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	ldrb	w3, [x20]
	mov	x2, x22
	mov	x1, x19
	mov	x0, x21
	bl	uECC_vli_mult
	mov	x1, x21
	ldr	x2, [x20, 184]
	mov	x0, x19
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L353
	ldp	x29, x30, [sp, 112]
	mov	w4, w23
	ldp	x21, x22, [sp, 144]
	mov	x3, x24
	ldp	x23, x24, [sp, 160]
	add	x2, x20, 132
	mov	x1, x19
	mov	x0, x19
	ldp	x19, x20, [sp, 128]
	add	sp, sp, 176
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	uECC_vli_modAdd
.L353:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.align	2
	.p2align 4,,11
	.type	XYcZ_addC, %function
XYcZ_addC:
.LFB49:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 176
	stp	x25, x26, [sp, 240]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x0
	mov	x25, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x27, x28, [sp, 256]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x4
	stp	x19, x20, [sp, 192]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	mov	x28, x1
	stp	x21, x22, [sp, 208]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x22, sp, 8
	mov	x1, x25
	stp	x23, x24, [sp, 224]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x2, x26
	mov	x24, x3
	ldr	x5, [x0]
	str	x5, [sp, 168]
	mov	x5, 0
	ldrsb	w21, [x27], 4
	mov	x0, x22
	add	x20, sp, 104
	mov	w4, w21
	mov	x3, x27
	bl	uECC_vli_modSub
	mov	w3, w21
	mov	x2, x22
	mov	x0, x20
	mov	x1, x22
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x20
	mov	x0, x22
	add	x23, sp, 40
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x26
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x26
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x25
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x0, x25
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x28
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x2, x28
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	mov	x0, x23
	mov	w4, w21
	mov	x1, x25
	mov	x2, x26
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x23
	mov	x1, x28
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x28
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x25
	mov	x1, x26
	mov	x0, x23
	bl	uECC_vli_modAdd
	ldrb	w3, [x19]
	mov	x2, x24
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x0, x25
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	mov	x0, x25
	mov	x3, x27
	mov	x1, x25
	mov	w4, w21
	add	x25, sp, 72
	mov	x2, x23
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x2, x0
	mov	x1, x26
	mov	x0, x25
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x25
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x24
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x28
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x22
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x23
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x23
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x23
	blr	x2
	mov	w4, w21
	mov	x3, x27
	mov	x2, x28
	mov	x1, x23
	mov	x0, x28
	bl	uECC_vli_modSub
	cmp	w21, 0
	ble	.L354
	ubfiz	x2, x21, 2, 8
	mov	x1, x25
	mov	x0, x26
	bl	memcpy
.L354:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 168]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L358
	ldp	x29, x30, [sp, 176]
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	ldp	x27, x28, [sp, 256]
	add	sp, sp, 272
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L358:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.p2align 4,,11
	.global	uECC_vli_mmod
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 160
	stp	x19, x20, [sp, 176]
	stp	x21, x22, [sp, 192]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	sxtb	w21, w3
	mov	x22, x0
	stp	x23, x24, [sp, 208]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	and	w24, w21, 255
	ubfiz	w20, w21, 6, 10
	stp	x25, x26, [sp, 224]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x1
	add	x1, sp, 88
	stp	x27, x28, [sp, 240]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x25, x2
	ldr	x3, [x4]
	str	x3, [sp, 152]
	mov	x3, 0
	stp	x1, x26, [sp, 8]
	sub	w1, w24, #1
	and	w23, w1, 255
	tbnz	x1, 7, .L396
	uxtw	x0, w23
	b	.L361
	.p2align 2,,3
.L362:
	sub	x3, x0, #1
	tbnz	x3, 7, .L459
	mov	x0, x3
.L361:
	ldr	w3, [x25, x0, lsl 2]
	cbz	w3, .L362
	add	w0, w0, 1
.L459:
	sxtb	w0, w0
.L360:
	cbz	w0, .L363
	add	x2, x25, w0, sxtw 2
	mov	w1, 32
	sub	w0, w0, #1
	ldr	w2, [x2, -4]
	sub	w0, w20, w0, lsl 5
	clz	w3, w2
	cmp	w2, 0
	sub	w1, w1, w3
	and	w1, w1, 65535
	csel	w1, w1, wzr, ne
	sub	w0, w0, w1
	and	w20, w0, 65535
.L363:
	sxth	w20, w20
	cmp	w20, 0
	add	w0, w20, 31
	csel	w0, w0, w20, lt
	negs	w27, w20
	and	w27, w27, 31
	and	w1, w20, 31
	sbfx	x28, x0, 5, 8
	csneg	w27, w1, w27, mi
	asr	w0, w0, 5
	cmp	w28, 0
	ble	.L368
	sub	w2, w0, #1
	mov	w1, 0
	add	x0, sp, 24
	ubfiz	x2, x2, 2, 8
	add	x2, x2, 4
	bl	memset
.L368:
	cmp	w27, 0
	ble	.L460
	cbz	w21, .L461
	ldr	w1, [x25]
	add	x19, sp, 24
	mov	w0, 32
	sub	w0, w0, w27
	lsl	w2, w1, w27
	str	w2, [x19, w28, uxtw 2]
	lsr	w1, w1, w0
	cmp	w21, 1
	beq	.L373
	ldr	w2, [x25, 4]
	add	w4, w28, 1
	lsl	w3, w2, w27
	orr	w1, w3, w1
	str	w1, [x19, x4, lsl 2]
	lsr	w2, w2, w0
	cmp	w21, 2
	beq	.L373
	ldr	w1, [x25, 8]
	add	w4, w28, 2
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w1, w1, w0
	cmp	w21, 3
	beq	.L373
	ldr	w2, [x25, 12]
	add	w4, w28, 3
	lsl	w3, w2, w27
	orr	w1, w3, w1
	str	w1, [x19, x4, lsl 2]
	lsr	w2, w2, w0
	cmp	w21, 4
	beq	.L373
	ldr	w1, [x25, 16]
	add	w4, w28, 4
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w1, w1, w0
	cmp	w21, 5
	beq	.L373
	ldr	w2, [x25, 20]
	add	w4, w28, 5
	lsl	w3, w2, w27
	orr	w1, w3, w1
	str	w1, [x19, x4, lsl 2]
	lsr	w2, w2, w0
	cmp	w21, 6
	beq	.L373
	ldr	w1, [x25, 24]
	add	w4, w28, 6
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w1, w1, w0
	cmp	w21, 7
	beq	.L373
	ldr	w2, [x25, 28]
	add	w4, w28, 7
	lsl	w3, w2, w27
	orr	w1, w3, w1
	str	w1, [x19, x4, lsl 2]
	lsr	w2, w2, w0
	cmp	w21, 8
	beq	.L373
	ldr	w1, [x25, 32]
	add	w4, w28, 8
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w2, w1, w0
	cmp	w21, 9
	beq	.L373
	ldr	w1, [x25, 36]
	add	w4, w28, 9
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w2, w1, w0
	cmp	w21, 10
	beq	.L373
	ldr	w1, [x25, 40]
	add	w4, w28, 10
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w1, w1, w0
	cmp	w21, 11
	beq	.L373
	ldr	w2, [x25, 44]
	add	w4, w28, 11
	lsl	w3, w2, w27
	orr	w1, w3, w1
	str	w1, [x19, x4, lsl 2]
	lsr	w2, w2, w0
	cmp	w21, 12
	beq	.L373
	ldr	w1, [x25, 48]
	add	w4, w28, 12
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w2, w1, w0
	cmp	w21, 13
	beq	.L373
	ldr	w1, [x25, 52]
	add	w4, w28, 13
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w2, w1, w0
	cmp	w21, 14
	beq	.L373
	ldr	w1, [x25, 56]
	add	w4, w28, 14
	lsl	w3, w1, w27
	orr	w2, w3, w2
	str	w2, [x19, x4, lsl 2]
	lsr	w2, w1, w0
	cmp	w21, 15
	beq	.L373
	ldr	w1, [x25, 60]
	add	w0, w28, 15
	lsl	w1, w1, w27
	orr	w1, w1, w2
	str	w1, [x19, x0, lsl 2]
	.p2align 3,,7
.L373:
	sbfiz	x10, x21, 2, 32
	sub	w3, w21, #1
	add	x5, x19, x10
	lsl	w7, w21, 1
	sub	x6, x5, x10
	sub	x11, x5, #4
	sub	x6, x6, #4
	add	x8, x5, x10
	sbfiz	x3, x3, 2, 32
	add	x9, sp, 8
	mov	w0, 1
	.p2align 3,,7
.L370:
	mov	w13, 0
	cmp	w21, 0
	ble	.L379
	eor	w4, w0, 1
	uxtw	x12, w0
	mov	w2, 0
	mov	w13, 0
	mov	w1, 0
	ldr	x15, [x9, x12, lsl 3]
	ldr	x16, [x9, x4, lsl 3]
	.p2align 3,,7
.L380:
	sxtw	x12, w2
	ldr	w1, [x19, w1, sxtw 2]
	add	w2, w2, 1
	ldr	w4, [x15, x12, lsl 2]
	add	w1, w13, w1
	subs	w1, w4, w1
	cset	w14, cc
	cmp	w4, w1
	beq	.L377
	sxtb	w2, w2
	str	w1, [x16, x12, lsl 2]
	mov	w13, w14
	mov	w1, w2
	cmp	w7, w2
	bgt	.L380
.L379:
	cmp	w0, w13
	mov	x2, x11
	cset	w0, eq
	mov	w1, 0
	cmp	x5, x19
	bls	.L384
	.p2align 3,,7
.L381:
	ldr	w4, [x2]
	orr	w1, w1, w4, lsr 1
	str	w1, [x2], -4
	lsl	w1, w4, 31
	cmp	x2, x6
	bne	.L381
.L384:
	ldr	w4, [x19, x10]
	mov	x2, x8
	ldr	w12, [x19, x3]
	mov	w1, 0
	orr	w4, w12, w4, lsl 31
	str	w4, [x19, x3]
	cmp	x8, x5
	bls	.L383
	.p2align 3,,7
.L386:
	ldr	w4, [x2, -4]
	orr	w1, w1, w4, lsr 1
	str	w1, [x2, -4]!
	lsl	w1, w4, 31
	cmp	x5, x2
	bcc	.L386
.L383:
	sub	w20, w20, #1
	sxth	w20, w20
	cmn	w20, #1
	bne	.L370
	ldr	x26, [x9, x0, lsl 3]
	cmp	w21, 0
	ble	.L359
.L374:
	cmp	w23, 5
	bls	.L389
	add	x0, x26, 4
	sub	x0, x22, x0
	cmp	x0, 8
	bhi	.L462
.L389:
	sbfiz	x21, x21, 2, 32
	mov	x0, 0
	.p2align 3,,7
.L393:
	ldr	w1, [x26, x0]
	str	w1, [x22, x0]
	add	x0, x0, 4
	cmp	x21, x0
	bne	.L393
.L359:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L463
	ldp	x29, x30, [sp, 160]
	ldp	x19, x20, [sp, 176]
	ldp	x21, x22, [sp, 192]
	ldp	x23, x24, [sp, 208]
	ldp	x25, x26, [sp, 224]
	ldp	x27, x28, [sp, 240]
	add	sp, sp, 256
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L377:
	.cfi_restore_state
	sxtb	w2, w2
	str	w4, [x16, x12, lsl 2]
	mov	w1, w2
	cmp	w2, w7
	blt	.L380
	b	.L379
.L462:
	ubfx	x1, x24, 2, 6
	mov	x0, 0
	lsl	x1, x1, 4
	.p2align 3,,7
.L390:
	ldr	q0, [x26, x0]
	str	q0, [x22, x0]
	add	x0, x0, 16
	cmp	x1, x0
	bne	.L390
	and	w0, w21, 252
	cmp	w24, w0
	beq	.L359
	uxtw	x3, w0
	add	w2, w0, 1
	and	x1, x2, 255
	ldr	w4, [x26, x3, lsl 2]
	str	w4, [x22, x3, lsl 2]
	cmp	w21, w2, sxtb
	ble	.L359
	ldr	w3, [x26, x1, lsl 2]
	add	w0, w0, 2
	str	w3, [x22, x1, lsl 2]
	and	w2, w0, 255
	cmp	w21, w0, sxtb
	ble	.L359
	uxtw	x0, w2
	ldr	w1, [x26, x0, lsl 2]
	str	w1, [x22, x0, lsl 2]
	b	.L359
.L460:
	sbfiz	x0, x28, 2, 32
	add	x19, sp, 24
	cmp	w21, 0
	ble	.L372
	ubfiz	x2, x23, 2, 8
	mov	x1, x25
	add	x0, x19, x0
	add	x2, x2, 4
	bl	memcpy
	tbz	w20, #31, .L373
	b	.L374
.L461:
	add	x19, sp, 24
	b	.L373
.L396:
	mov	w0, w21
	b	.L360
.L372:
	tbz	w20, #31, .L373
	b	.L359
.L463:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modMult
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	mov	x18, x0
	adrp	x6, :got:__stack_chk_guard
	ldr	x6, [x6, :got_lo12:__stack_chk_guard]
	add	x5, sp, 8
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	sxtb	w20, w4
	mov	x19, x3
	ldr	x0, [x6]
	str	x0, [sp, 72]
	mov	x0, 0
	mov	w3, w20
	mov	x0, x5
	bl	uECC_vli_mult
	mov	w3, w20
	mov	x1, x0
	mov	x2, x19
	mov	x0, x18
	bl	uECC_vli_mmod
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L467
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	add	sp, sp, 112
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L467:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	mov	x18, x3
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	add	x5, sp, 8
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	mov	x19, x0
	mov	x0, x5
	ldrb	w3, [x3]
	ldr	x5, [x4]
	str	x5, [sp, 72]
	mov	x5, 0
	bl	uECC_vli_mult
	mov	x1, x0
	ldr	x2, [x18, 184]
	mov	x0, x19
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L471
	ldp	x29, x30, [sp, 80]
	ldr	x19, [sp, 96]
	add	sp, sp, 112
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L471:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modInv
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	sxtb	w3, w3
	cmp	w3, 0
	ble	.L484
	and	w6, w3, 255
	sub	w4, w6, #1
	and	w4, w4, 255
	cmp	w4, 3
	bls	.L479
	lsr	w5, w6, 2
	mov	x4, x1
	movi	v0.4s, 0
	add	x5, x1, w5, uxtw 4
	.p2align 3,,7
.L476:
	ldr	q1, [x4], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x5, x4
	bne	.L476
	movi	v1.4s, 0
	and	w7, w3, -4
	ext	v2.16b, v0.16b, v1.16b, #8
	orr	v2.16b, v2.16b, v0.16b
	ext	v0.16b, v2.16b, v1.16b, #4
	orr	v0.16b, v0.16b, v2.16b
	fmov	w4, s0
	tst	x3, 3
	beq	.L477
.L475:
	and	w5, w7, 255
	ldr	w7, [x1, w7, sxtw 2]
	add	w8, w5, 1
	orr	w4, w4, w7
	and	x7, x8, 255
	cmp	w3, w8, sxtb
	ble	.L477
	ldr	w7, [x1, x7, lsl 2]
	add	w9, w5, 2
	and	x8, x9, 255
	orr	w4, w4, w7
	cmp	w3, w9, sxtb
	ble	.L477
	ldr	w8, [x1, x8, lsl 2]
	add	w5, w5, 3
	and	x7, x5, 255
	orr	w4, w4, w8
	cmp	w3, w5, sxtb
	ble	.L477
	ldr	w5, [x1, x7, lsl 2]
	orr	w4, w4, w5
.L477:
	cbz	w4, .L478
	b	uECC_vli_modInv.part.0
.L478:
	ubfiz	x2, x6, 2, 8
	mov	w1, 0
	b	memset
.L479:
	mov	w4, 0
	mov	w7, 0
	b	.L475
.L484:
	ret
	.cfi_endproc
.LFE40:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	2
	.p2align 4,,11
	.global	uECC_secp256r1
	.type	uECC_secp256r1, %function
uECC_secp256r1:
.LFB43:
	.cfi_startproc
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	2
	.p2align 4,,11
	.global	EccPoint_isZero
	.type	EccPoint_isZero, %function
EccPoint_isZero:
.LFB45:
	.cfi_startproc
	ldrb	w2, [x1]
	sbfiz	w4, w2, 1, 7
	ubfiz	w2, w2, 1, 7
	cmp	w4, 0
	ble	.L492
	sub	w1, w2, #1
	and	w1, w1, 255
	cmp	w1, 3
	bls	.L488
	lsr	w3, w2, 2
	mov	x1, x0
	movi	v0.4s, 0
	add	x3, x0, w3, uxtw 4
	.p2align 3,,7
.L489:
	ldr	q1, [x1], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x3, x1
	bne	.L489
	movi	v1.4s, 0
	ext	v2.16b, v0.16b, v1.16b, #8
	orr	v0.16b, v2.16b, v0.16b
	ext	v1.16b, v0.16b, v1.16b, #4
	orr	v1.16b, v1.16b, v0.16b
	fmov	w1, s1
	tbz	x2, 1, .L490
	and	w2, w2, 252
	fmov	w6, s1
	add	w3, w2, 1
	sxtb	x1, w2
	sxtb	w5, w3
	ldr	w1, [x0, x1, lsl 2]
	orr	w1, w1, w6
	cmp	w4, w3, sxtb
	ble	.L490
.L491:
	ldr	w6, [x0, w5, sxtw 2]
	add	w5, w2, 2
	and	x3, x5, 255
	orr	w1, w1, w6
	cmp	w4, w5, sxtb
	ble	.L490
	ldr	w3, [x0, x3, lsl 2]
	add	w2, w2, 3
	and	x5, x2, 255
	orr	w1, w1, w3
	cmp	w4, w2, sxtb
	ble	.L490
	ldr	w0, [x0, x5, lsl 2]
	orr	w1, w1, w0
.L490:
	cmp	w1, 0
	cset	w0, eq
	ret
	.p2align 2,,3
.L492:
	mov	w0, 1
	ret
.L488:
	ldr	w1, [x0]
	mov	w5, 1
	mov	w2, 0
	b	.L491
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	2
	.p2align 4,,11
	.global	apply_z
	.type	apply_z, %function
apply_z:
.LFB46:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x3
	add	x20, sp, 40
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1
	mov	x1, x2
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x24, x0
	mov	x23, x2
	ldrb	w3, [x3]
	ldr	x0, [x4]
	str	x0, [sp, 104]
	mov	x0, 0
	mov	x0, x20
	add	x21, sp, 8
	bl	uECC_vli_mult
	mov	x0, x21
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x0, x24
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x23
	mov	x1, x21
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x21
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x22
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x22
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L500
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	add	sp, sp, 176
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L500:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE46:
	.size	apply_z, .-apply_z
	.align	2
	.p2align 4,,11
	.global	XYcZ_add
	.type	XYcZ_add, %function
XYcZ_add:
.LFB48:
	.cfi_startproc
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 112
	stp	x25, x26, [sp, 176]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x4
	mov	x25, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	stp	x21, x22, [sp, 144]
	mov	x20, x2
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x21, sp, 8
	stp	x23, x24, [sp, 160]
	mov	x2, x25
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x3
	str	x27, [sp, 192]
	.cfi_offset 27, -16
	mov	x27, x1
	mov	x1, x20
	add	x22, sp, 40
	ldr	x5, [x0]
	str	x5, [sp, 104]
	mov	x5, 0
	ldrsb	w23, [x26], 4
	mov	x0, x21
	mov	w4, w23
	mov	x3, x26
	bl	uECC_vli_modSub
	mov	w3, w23
	mov	x2, x21
	mov	x0, x22
	mov	x1, x21
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x22
	mov	x0, x21
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x25
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x20
	blr	x2
	mov	x3, x26
	mov	w4, w23
	mov	x2, x27
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x24
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x21
	blr	x2
	mov	x3, x26
	mov	x0, x21
	mov	w4, w23
	mov	x2, x25
	mov	x1, x21
	bl	uECC_vli_modSub
	mov	w4, w23
	mov	x2, x20
	mov	x1, x21
	bl	uECC_vli_modSub
	mov	w4, w23
	mov	x2, x25
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x20
	mov	x1, x27
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x27
	blr	x2
	mov	x3, x26
	mov	w4, w23
	mov	x2, x21
	mov	x1, x25
	mov	x0, x20
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x20
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x24
	blr	x2
	mov	w4, w23
	mov	x3, x26
	mov	x2, x27
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	cmp	w23, 0
	ble	.L501
	ubfiz	x2, x23, 2, 8
	mov	x1, x21
	mov	x0, x20
	bl	memcpy
.L501:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L505
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	ldp	x25, x26, [sp, 176]
	ldr	x27, [sp, 192]
	add	sp, sp, 208
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L505:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.p2align 4,,11
	.global	EccPoint_mult
	.type	EccPoint_mult, %function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	sub	sp, sp, #400
	.cfi_def_cfa_offset 400
	stp	x29, x30, [sp, 304]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 304
	stp	x19, x20, [sp, 320]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x5
	mov	x20, x3
	stp	x21, x22, [sp, 336]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x2
	stp	x23, x24, [sp, 352]
	stp	x25, x26, [sp, 368]
	stp	x27, x28, [sp, 384]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	sxth	w27, w4
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	ldrsb	w24, [x19]
	ldr	x6, [x5]
	str	x6, [sp, 296]
	mov	x6, 0
	str	x1, [sp, 24]
	str	x0, [sp, 56]
	sbfiz	x21, x24, 2, 32
	str	x21, [sp, 40]
	cmp	w24, 0
	ble	.L507
	ubfiz	x25, x24, 2, 8
	mov	x23, x1
	add	x0, sp, 136
	mov	x2, x25
	str	x0, [sp, 16]
	bl	memcpy
	add	x0, x23, x21
	add	x28, sp, 200
	mov	x1, x0
	mov	x2, x25
	mov	x0, x28
	str	x1, [sp, 48]
	bl	memcpy
	cbz	x20, .L536
	add	x0, sp, 232
	mov	x1, x20
	mov	x2, x25
	str	x0, [sp, 8]
	bl	memcpy
.L512:
	ldr	x1, [sp, 16]
	add	x20, sp, 104
	mov	x2, x25
	mov	x0, x20
	add	x21, sp, 168
	bl	memmove
	mov	x2, x25
	mov	x0, x21
	mov	x1, x28
	bl	memmove
.L510:
	ldp	x23, x25, [sp, 8]
	mov	x3, x19
	mov	x1, x28
	mov	x2, x23
	mov	x0, x25
	bl	apply_z
	ldr	x4, [x19, 168]
	mov	x1, x28
	mov	x3, x19
	mov	x2, x23
	mov	x0, x25
	blr	x4
	mov	x3, x19
	mov	x2, x23
	mov	x1, x21
	mov	x0, x20
	bl	apply_z
	sub	w5, w27, #2
	sxth	w27, w5
	cmp	w27, 0
	ble	.L516
	.p2align 3,,7
.L513:
	asr	w1, w27, 5
	mov	w0, 1
	lsl	w0, w0, w27
	mov	x4, x19
	ldr	w1, [x22, w1, sxtw 2]
	ands	w0, w0, w1
	cset	x1, ne
	cset	x28, eq
	lsl	x1, x1, 5
	lsl	x28, x28, 5
	add	x25, x20, x1
	add	x26, x20, x28
	add	x23, x21, x1
	add	x28, x21, x28
	mov	x1, x23
	mov	x0, x25
	mov	x3, x28
	mov	x2, x26
	bl	XYcZ_addC
	mov	x0, x26
	mov	x4, x19
	mov	x3, x23
	mov	x2, x25
	mov	x1, x28
	bl	XYcZ_add
	sub	w0, w27, #1
	sxth	w27, w0
	tst	w0, 65535
	bne	.L513
.L516:
	ldr	w25, [x22]
	mov	x4, x19
	add	x22, sp, 64
	mvn	x0, x25
	ubfiz	x25, x25, 5, 1
	ubfiz	x0, x0, 5, 1
	add	x28, x20, x25
	add	x2, x20, x0
	add	x25, x21, x25
	add	x3, x21, x0
	mov	x27, x2
	mov	x1, x25
	mov	x0, x28
	str	x3, [sp, 32]
	bl	XYcZ_addC
	ldr	x1, [sp, 16]
	add	x5, x19, 4
	mov	x3, x5
	mov	w4, w24
	mov	x0, x22
	mov	x2, x20
	str	x5, [sp, 16]
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x25
	ldr	x23, [sp, 8]
	mov	x1, x22
	mov	x0, x23
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x23
	mov	x0, x22
	blr	x2
	ldr	x2, [sp, 24]
	mov	x1, x22
	ldrb	w3, [x19]
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x22
	blr	x2
	ldr	x5, [sp, 16]
	cmp	w24, 0
	ble	.L537
	and	w26, w24, 255
	sub	w0, w26, #1
	and	w0, w0, 255
	cmp	w0, 3
	bls	.L524
	ubfx	x1, x26, 2, 6
	mov	x0, x22
	movi	v1.4s, 0
	add	x1, x22, x1, lsl 4
	.p2align 3,,7
.L518:
	ldr	q0, [x0], 16
	orr	v1.16b, v1.16b, v0.16b
	cmp	x0, x1
	bne	.L518
	movi	v0.4s, 0
	and	w2, w24, -4
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v1.16b, v2.16b, v1.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w0, s0
	tst	x24, 3
	beq	.L519
.L517:
	and	w1, w2, 255
	ldr	w2, [x22, w2, sxtw 2]
	add	w3, w1, 1
	orr	w0, w0, w2
	and	x2, x3, 255
	cmp	w24, w3, sxtb
	ble	.L519
	ldr	w2, [x22, x2, lsl 2]
	add	w4, w1, 2
	and	x3, x4, 255
	orr	w0, w0, w2
	cmp	w24, w4, sxtb
	ble	.L519
	ldr	w3, [x22, x3, lsl 2]
	add	w1, w1, 3
	and	x2, x1, 255
	orr	w0, w0, w3
	cmp	w24, w1, sxtb
	ble	.L519
	ldr	w1, [x22, x2, lsl 2]
	orr	w0, w0, w1
.L519:
	cbz	w0, .L521
	mov	w3, w24
	uxtw	x24, w26
	mov	x2, x5
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modInv.part.0
.L522:
	ldr	x2, [sp, 48]
	mov	x1, x22
	ldrb	w3, [x19]
	lsl	x24, x24, 2
	ldr	x23, [sp, 8]
	mov	x0, x23
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x23
	mov	x0, x22
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x28
	mov	x1, x22
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x22
	blr	x2
	ldr	x1, [sp, 32]
	mov	x4, x19
	mov	x3, x25
	mov	x2, x28
	mov	x0, x27
	bl	XYcZ_add
	mov	x3, x19
	mov	x2, x22
	mov	x1, x21
	mov	x0, x20
	bl	apply_z
	ldr	x19, [sp, 56]
	mov	x1, x20
	mov	x2, x24
	mov	x0, x19
	bl	memcpy
	ldr	x3, [sp, 40]
	mov	x2, x24
	mov	x1, x21
	add	x0, x19, x3
	bl	memcpy
.L506:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 296]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L538
	ldp	x29, x30, [sp, 304]
	ldp	x19, x20, [sp, 320]
	ldp	x21, x22, [sp, 336]
	ldp	x23, x24, [sp, 352]
	ldp	x25, x26, [sp, 368]
	ldp	x27, x28, [sp, 384]
	add	sp, sp, 400
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L521:
	.cfi_restore_state
	uxtw	x24, w26
	ubfiz	x2, x26, 2, 8
	mov	x0, x22
	mov	w1, 0
	bl	memset
	b	.L522
	.p2align 2,,3
.L536:
	add	x0, sp, 232
	mov	x2, x25
	mov	w1, 0
	str	x0, [sp, 8]
	bl	memset
	mov	w0, 1
	str	w0, [sp, 232]
	b	.L512
	.p2align 2,,3
.L507:
	cbnz	x3, .L539
	add	x1, sp, 136
	str	x1, [sp, 16]
	ldr	x1, [sp, 24]
	mov	x2, x21
	mov	w0, 1
	add	x28, sp, 200
	add	x1, x1, x2
	add	x20, sp, 104
	add	x21, sp, 168
	str	x1, [sp, 48]
	add	x1, sp, 232
	str	x1, [sp, 8]
	str	w0, [sp, 232]
	b	.L510
	.p2align 2,,3
.L537:
	ldr	x2, [sp, 48]
	mov	x1, x22
	ldrb	w3, [x19]
	ldr	x23, [sp, 8]
	mov	x0, x23
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x23
	mov	x0, x22
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x28
	mov	x1, x22
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x22
	blr	x2
	ldr	x1, [sp, 32]
	mov	x4, x19
	mov	x3, x25
	mov	x2, x28
	mov	x0, x27
	bl	XYcZ_add
	mov	x3, x19
	mov	x2, x22
	mov	x1, x21
	mov	x0, x20
	bl	apply_z
	b	.L506
.L524:
	mov	w0, 0
	mov	w2, 0
	b	.L517
.L539:
	add	x0, sp, 136
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x21
	add	x28, sp, 200
	add	x20, sp, 104
	add	x0, x0, x1
	add	x21, sp, 168
	str	x0, [sp, 48]
	add	x0, sp, 232
	str	x0, [sp, 8]
	b	.L510
.L538:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.p2align 4,,11
	.global	regularize_k
	.type	regularize_k, %function
regularize_k:
.LFB51:
	.cfi_startproc
	ldrsh	w10, [x3, 2]
	mov	x9, x0
	add	x8, x3, 36
	mov	x5, 0
	add	w7, w10, 62
	adds	w4, w10, 31
	csel	w7, w7, w4, mi
	mov	w0, 0
	sbfx	x7, x7, 5, 8
	cmp	w7, 0
	ble	.L556
	.p2align 3,,7
.L541:
	ldr	w6, [x9, x5, lsl 2]
	ldr	w4, [x8, x5, lsl 2]
	add	w4, w6, w4
	add	w4, w4, w0
	str	w4, [x1, x5, lsl 2]
	add	x5, x5, 1
	cmp	w6, w4
	csel	w0, w0, wzr, eq
	cset	w6, hi
	sxtb	w4, w5
	orr	w0, w0, w6
	cmp	w7, w4
	bgt	.L541
	cbz	w0, .L557
	mov	w0, 1
.L546:
	mov	x4, 0
	mov	w5, 0
	.p2align 3,,7
.L547:
	ldr	w6, [x1, x4, lsl 2]
	ldr	w3, [x8, x4, lsl 2]
	add	w3, w6, w3
	add	w3, w3, w5
	str	w3, [x2, x4, lsl 2]
	add	x4, x4, 1
	cmp	w6, w3
	csel	w5, w5, wzr, eq
	cset	w6, hi
	sxtb	w3, w4
	orr	w5, w5, w6
	cmp	w7, w3
	bgt	.L547
.L540:
	ret
	.p2align 2,,3
.L557:
	cmp	w10, w7, lsl 5
	bge	.L546
.L542:
	asr	w4, w10, 5
	add	x8, x3, 36
	mov	w0, 1
	lsl	w0, w0, w10
	ldr	w3, [x1, w4, sxtw 2]
	tst	w0, w3
	cset	w0, ne
	cmp	w7, 0
	bgt	.L546
	ret
	.p2align 2,,3
.L556:
	cmp	w10, w7, lsl 5
	blt	.L542
	b	.L540
	.cfi_endproc
.LFE51:
	.size	regularize_k, .-regularize_k
	.align	2
	.p2align 4,,11
	.global	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
.LFB52:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	add	x4, sp, 24
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 96
	stp	x19, x20, [sp, 112]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x2
	mov	x20, x0
	mov	x0, x1
	ldr	x1, [x5]
	str	x1, [sp, 88]
	mov	x1, 0
	add	x2, sp, 56
	mov	x1, x4
	mov	x3, x19
	stp	x4, x2, [sp, 8]
	bl	regularize_k
	cmp	w0, 0
	add	x2, sp, 8
	cset	x3, eq
	ldrh	w4, [x19, 2]
	mov	x5, x19
	add	x1, x19, 68
	add	w4, w4, 1
	mov	x0, x20
	ldr	x2, [x2, x3, lsl 3]
	mov	x3, 0
	bl	EccPoint_mult
	ldrb	w2, [x19]
	sbfiz	w4, w2, 1, 7
	cmp	w4, 0
	ble	.L565
	ubfiz	w2, w2, 1, 7
	sub	w0, w2, #1
	and	w0, w0, 255
	cmp	w0, 3
	bls	.L560
	lsr	w3, w2, 2
	mov	x1, x20
	movi	v0.4s, 0
	add	x3, x20, w3, uxtw 4
	.p2align 3,,7
.L561:
	ldr	q1, [x1], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x3, x1
	bne	.L561
	movi	v1.4s, 0
	ext	v2.16b, v0.16b, v1.16b, #8
	orr	v0.16b, v2.16b, v0.16b
	ext	v1.16b, v0.16b, v1.16b, #4
	orr	v1.16b, v1.16b, v0.16b
	fmov	w0, s1
	tbz	x2, 1, .L562
	and	w2, w2, 252
	fmov	w5, s1
	add	w1, w2, 1
	sxtb	x0, w2
	sxtb	w3, w1
	ldr	w0, [x20, x0, lsl 2]
	orr	w0, w0, w5
	cmp	w4, w1, sxtb
	ble	.L562
.L563:
	ldr	w5, [x20, w3, sxtw 2]
	add	w3, w2, 2
	and	x1, x3, 255
	orr	w0, w0, w5
	cmp	w4, w3, sxtb
	ble	.L562
	ldr	w1, [x20, x1, lsl 2]
	add	w2, w2, 3
	and	x3, x2, 255
	orr	w0, w0, w1
	cmp	w4, w2, sxtb
	ble	.L562
	ldr	w1, [x20, x3, lsl 2]
	orr	w0, w0, w1
.L562:
	cmp	w0, 0
	cset	w0, ne
.L558:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L571
	ldp	x29, x30, [sp, 96]
	ldp	x19, x20, [sp, 112]
	add	sp, sp, 128
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L565:
	.cfi_restore_state
	mov	w0, 0
	b	.L558
.L560:
	ldr	w0, [x20]
	mov	w3, 1
	mov	w2, 0
	b	.L563
.L571:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.p2align 4,,11
	.global	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	sub	w7, w1, #1
	mov	w4, 0
	mov	w3, 0
	cmp	w1, 0
	ble	.L572
	.p2align 3,,7
.L574:
	sub	w3, w7, w3
	add	w6, w4, 1
	lsr	w5, w3, 2
	ubfiz	w3, w3, 3, 2
	ldr	w5, [x2, x5, lsl 2]
	lsr	w3, w5, w3
	strb	w3, [x0, w4, sxtw]
	sxtb	w4, w6
	mov	w3, w4
	cmp	w4, w1
	blt	.L574
.L572:
	ret
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
	.p2align 4,,11
	.global	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
.LFB54:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	w20, w2
	adds	w3, w20, 3
	add	w2, w2, 6
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	csel	w2, w2, w3, mi
	mov	x21, x1
	mov	x19, x0
	sbfx	x1, x2, 2, 8
	cmp	w1, 0
	ble	.L582
	asr	w2, w2, 2
	mov	w1, 0
	sub	w2, w2, #1
	ubfiz	x2, x2, 2, 8
	add	x2, x2, 4
	bl	memset
.L582:
	sub	w0, w20, #1
	mov	w3, 0
	mov	w4, 0
	cmp	w20, 0
	ble	.L578
	.p2align 3,,7
.L583:
	sub	w4, w0, w4
	ldrb	w6, [x21, w3, sxtw]
	add	w3, w3, 1
	lsr	w7, w4, 2
	ubfiz	w4, w4, 3, 2
	sxtb	w3, w3
	lsl	w6, w6, w4
	mov	w4, w3
	ldr	w5, [x19, x7, lsl 2]
	orr	w5, w5, w6
	str	w5, [x19, x7, lsl 2]
	cmp	w3, w20
	blt	.L583
.L578:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE54:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	2
	.p2align 4,,11
	.global	uECC_generate_random_int
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	and	w4, w2, 255
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 80
	str	w4, [sp, 8]
	stp	x23, x24, [sp, 128]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	sxtb	w24, w2
	stp	x25, x26, [sp, 144]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x0
	ldr	x5, [x3]
	str	x5, [sp, 72]
	mov	x5, 0
	sub	w3, w4, #1
	and	x0, x3, 255
	str	w0, [sp, 4]
	tbz	x3, 7, .L589
	b	.L607
	.p2align 2,,3
.L590:
	sub	x3, x0, #1
	tbnz	x3, 7, .L629
	mov	x0, x3
.L589:
	ldr	w3, [x1, x0, lsl 2]
	cbz	w3, .L590
	add	w0, w0, 1
.L629:
	sxtb	w0, w0
.L588:
	mov	w4, 0
	cbz	w0, .L591
	add	x4, x1, w0, sxtw 2
	mov	w3, 32
	sub	w0, w0, #1
	ldr	w4, [x4, -4]
	clz	w5, w4
	cmp	w4, 0
	sub	w3, w3, w5
	and	w3, w3, 65535
	csel	w3, w3, wzr, ne
	add	w0, w3, w0, lsl 5
	and	w4, w0, 65535
.L591:
	adrp	x0, .LANCHOR0
	ldr	x3, [x0, #:lo12:.LANCHOR0]
	cbz	x3, .L593
	ldr	x0, [sp, 8]
	stp	x27, x28, [sp, 160]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	sub	x28, x1, #4
	mov	w1, -1
	lsl	w2, w24, 2
	ubfx	x10, x0, 2, 6
	ubfiz	w0, w24, 5, 11
	sub	w0, w0, w4
	add	x11, x26, w24, sxtw 2
	lsl	x10, x10, 4
	stp	x19, x20, [sp, 96]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	lsr	w0, w1, w0
	stp	w2, w0, [sp, 20]
	and	w2, w24, -4
	str	w2, [sp, 28]
	and	w2, w24, 252
	ldr	w1, [sp, 20]
	add	x27, sp, 32
	stp	x21, x22, [sp, 112]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	sxtw	x23, w24
	sub	x22, x11, #4
	sub	x25, x26, #4
	add	x20, x26, x10
	add	x21, x27, x10
	mov	x0, x26
	mov	w19, 64
	str	w2, [sp, 16]
	blr	x3
	cbz	w0, .L628
	.p2align 3,,7
.L631:
	ldr	w0, [x22]
	cmp	w24, 0
	movi	v2.4s, 0
	ldr	w1, [sp, 24]
	and	w0, w0, w1
	str	w0, [x22]
	ble	.L599
	ldr	w0, [sp, 4]
	cmp	w0, 3
	bls	.L611
	movi	v0.4s, 0
	mov	x1, x26
	.p2align 3,,7
.L597:
	ldr	q1, [x1], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x20, x1
	bne	.L597
	ext	v1.16b, v0.16b, v2.16b, #8
	ldr	w1, [sp, 8]
	ldr	w2, [sp, 16]
	orr	v0.16b, v1.16b, v0.16b
	ext	v1.16b, v0.16b, v2.16b, #4
	orr	v0.16b, v1.16b, v0.16b
	fmov	w0, s0
	cmp	w1, w2
	beq	.L598
	ldr	w3, [sp, 28]
.L596:
	and	w1, w3, 255
	ldr	w3, [x26, w3, sxtw 2]
	add	w4, w1, 1
	orr	w0, w0, w3
	and	x3, x4, 255
	cmp	w24, w4, sxtb
	ble	.L598
	ldr	w3, [x26, x3, lsl 2]
	add	w5, w1, 2
	and	x4, x5, 255
	orr	w0, w0, w3
	cmp	w24, w5, sxtb
	ble	.L598
	ldr	w4, [x26, x4, lsl 2]
	add	w1, w1, 3
	and	x3, x1, 255
	orr	w0, w0, w4
	cmp	w24, w1, sxtb
	ble	.L598
	ldr	w1, [x26, x3, lsl 2]
	orr	w0, w0, w1
.L598:
	cbz	w0, .L599
	mov	x1, 1
	mov	w3, 0
	.p2align 3,,7
.L600:
	ldr	w0, [x28, x1, lsl 2]
	add	x12, x27, x1, lsl 2
	ldr	w13, [x25, x1, lsl 2]
	mov	x5, x1
	sub	w4, w0, w3
	add	x1, x1, 1
	sub	w4, w4, w13
	str	w4, [x12, -4]
	cmp	w0, w4
	csel	w3, w3, wzr, eq
	cset	w0, cc
	orr	w3, w3, w0
	cmp	x23, x5
	bne	.L600
	ldr	w0, [sp, 4]
	cmp	w3, 0
	cset	w3, ne
	cmp	w0, 3
	bls	.L612
	movi	v0.4s, 0
	mov	x0, x27
	.p2align 3,,7
.L602:
	ldr	q1, [x0], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x21, x0
	bne	.L602
	ext	v1.16b, v0.16b, v2.16b, #8
	ldr	w1, [sp, 8]
	ldr	w2, [sp, 16]
	orr	v0.16b, v1.16b, v0.16b
	ext	v1.16b, v0.16b, v2.16b, #4
	orr	v0.16b, v1.16b, v0.16b
	fmov	w0, s0
	cmp	w1, w2
	beq	.L603
	ldr	w4, [sp, 28]
.L601:
	and	w1, w4, 255
	ldr	w4, [x27, w4, sxtw 2]
	add	w5, w1, 1
	orr	w0, w0, w4
	and	x4, x5, 255
	cmp	w24, w5, sxtb
	ble	.L603
	ldr	w4, [x27, x4, lsl 2]
	add	w12, w1, 2
	and	x5, x12, 255
	orr	w0, w0, w4
	cmp	w24, w12, sxtb
	ble	.L603
	ldr	w5, [x27, x5, lsl 2]
	add	w1, w1, 3
	and	x4, x1, 255
	orr	w0, w0, w5
	cmp	w24, w1, sxtb
	ble	.L603
	ldr	w1, [x27, x4, lsl 2]
	orr	w0, w0, w1
.L603:
	cmp	w0, 0
	cset	w0, ne
	sub	w0, w0, w3, lsl 1
	and	w0, w0, 255
	cmp	w0, 1
	beq	.L630
.L599:
	subs	w19, w19, #1
	beq	.L628
	adrp	x0, .LANCHOR0
	ldr	w1, [sp, 20]
	ldr	x3, [x0, #:lo12:.LANCHOR0]
	mov	x0, x26
	blr	x3
	cbnz	w0, .L631
.L628:
	ldp	x19, x20, [sp, 96]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 112]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x27, x28, [sp, 160]
	.cfi_restore 28
	.cfi_restore 27
.L593:
	mov	w0, 0
.L587:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L632
	ldp	x29, x30, [sp, 80]
	ldp	x23, x24, [sp, 128]
	ldp	x25, x26, [sp, 144]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
.L611:
	.cfi_def_cfa_offset 176
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	w0, 0
	mov	w3, 0
	b	.L596
.L612:
	mov	w0, 0
	mov	w4, 0
	b	.L601
.L630:
	ldp	x19, x20, [sp, 96]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 112]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x27, x28, [sp, 160]
	.cfi_restore 28
	.cfi_restore 27
	b	.L587
.L607:
	mov	w0, w24
	b	.L588
.L632:
	stp	x19, x20, [sp, 96]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 112]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x27, x28, [sp, 160]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.p2align 4,,11
	.global	uECC_valid_point
	.type	uECC_valid_point, %function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x0
	stp	x21, x22, [sp, 144]
	stp	x23, x24, [sp, 160]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x24, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldrsb	w22, [x1]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	sbfiz	w1, w22, 1, 7
	cmp	w1, 0
	ble	.L648
	ubfiz	w4, w22, 1, 7
	stp	x25, x26, [sp, 176]
	.cfi_offset 26, -8
	.cfi_offset 25, -16
	sub	w0, w4, #1
	and	w0, w0, 255
	and	w23, w22, 255
	cmp	w0, 3
	bls	.L635
	lsr	w3, w4, 2
	mov	x0, x19
	movi	v0.4s, 0
	add	x3, x19, w3, uxtw 4
	.p2align 3,,7
.L636:
	ldr	q1, [x0], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x3, x0
	bne	.L636
	movi	v1.4s, 0
	ext	v2.16b, v0.16b, v1.16b, #8
	orr	v0.16b, v2.16b, v0.16b
	ext	v1.16b, v0.16b, v1.16b, #4
	orr	v1.16b, v1.16b, v0.16b
	fmov	w0, s1
	tbz	x4, 1, .L637
	and	w4, w4, 252
	fmov	w5, s1
	add	w2, w4, 1
	sxtb	x0, w4
	sxtb	w3, w2
	ldr	w0, [x19, x0, lsl 2]
	orr	w0, w0, w5
	cmp	w1, w2, sxtb
	ble	.L637
.L646:
	ldr	w5, [x19, w3, sxtw 2]
	add	w3, w4, 2
	and	x2, x3, 255
	orr	w0, w0, w5
	cmp	w1, w3, sxtb
	ble	.L637
	ldr	w2, [x19, x2, lsl 2]
	add	w4, w4, 3
	and	x3, x4, 255
	orr	w0, w0, w2
	cmp	w1, w4, sxtb
	ble	.L637
	ldr	w1, [x19, x3, lsl 2]
	orr	w0, w0, w1
.L637:
	cbz	w0, .L649
	sub	w0, w23, #1
	and	w20, w0, 255
	sxtb	w21, w0
	tbnz	x0, 7, .L652
	uxtw	x3, w20
	add	x5, x24, 4
	mov	x4, x3
	b	.L639
	.p2align 2,,3
.L670:
	bcc	.L652
	sub	x4, x4, #1
	tbnz	x4, 7, .L652
.L639:
	ldr	w7, [x5, x4, lsl 2]
	ldr	w6, [x19, x4, lsl 2]
	cmp	w7, w6
	bls	.L670
	add	x2, x19, w22, sxtw 2
	b	.L641
	.p2align 2,,3
.L671:
	bcc	.L652
	sub	x3, x3, #1
	tbnz	x3, 7, .L652
.L641:
	ldr	w4, [x5, x3, lsl 2]
	ldr	w0, [x2, x3, lsl 2]
	cmp	w4, w0
	bls	.L671
	add	x25, sp, 40
	mov	w3, w22
	mov	x1, x2
	mov	x0, x25
	bl	uECC_vli_mult
	add	x26, sp, 8
	ldr	x2, [x24, 184]
	mov	x0, x26
	mov	x1, x25
	blr	x2
	ldr	x3, [x24, 176]
	mov	x1, x19
	mov	x2, x24
	mov	x0, x25
	blr	x3
	cmp	w20, 2
	bls	.L672
	adrp	x4, .LC0
	mov	x0, -12
	ubfx	x2, x23, 2, 6
	add	x1, x0, w20, uxtw 2
	movi	v2.4s, 0
	add	x3, x26, x1
	ldr	q3, [x4, #:lo12:.LC0]
	add	x1, x25, x1
	neg	x2, x2, lsl 4
	mov	x0, 0
	.p2align 3,,7
.L642:
	ldr	q1, [x1, x0]
	ldr	q0, [x3, x0]
	sub	x0, x0, #16
	eor	v0.16b, v0.16b, v1.16b
	mov	v1.16b, v0.16b
	tbl	v0.16b, {v0.16b - v1.16b}, v3.16b
	orr	v2.16b, v2.16b, v0.16b
	cmp	x2, x0
	bne	.L642
	movi	v0.4s, 0
	and	w1, w22, 252
	and	w22, w22, -4
	ext	v1.16b, v2.16b, v0.16b, #8
	orr	v1.16b, v1.16b, v2.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w0, s0
	cmp	w23, w1
	beq	.L643
	sub	w22, w21, w22
	sxtb	w21, w22
.L644:
	sxtw	x3, w21
	and	w21, w21, 255
	sub	w1, w21, #1
	and	x1, x1, 255
	ldr	w2, [x26, x3, lsl 2]
	ldr	w3, [x25, x3, lsl 2]
	eor	w2, w2, w3
	orr	w0, w0, w2
	cmp	w1, 255
	beq	.L643
	ldr	w2, [x26, x1, lsl 2]
	sub	w21, w21, #2
	ldr	w1, [x25, x1, lsl 2]
	and	x21, x21, 255
	eor	w1, w2, w1
	orr	w0, w0, w1
	cmp	w21, 255
	beq	.L643
	ldr	w1, [x25, x21, lsl 2]
	ldr	w2, [x26, x21, lsl 2]
	eor	w1, w1, w2
	orr	w0, w0, w1
.L643:
	ldp	x25, x26, [sp, 176]
	.cfi_restore 26
	.cfi_restore 25
	cmp	w0, 0
	mov	w0, -3
	csel	w0, w0, wzr, ne
.L633:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L673
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	add	sp, sp, 192
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L652:
	.cfi_def_cfa_offset 192
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	ldp	x25, x26, [sp, 176]
	.cfi_restore 26
	.cfi_restore 25
	mov	w0, -2
	b	.L633
	.p2align 2,,3
.L648:
	mov	w0, -1
	b	.L633
.L672:
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	w0, 0
	b	.L644
.L635:
	ldr	w0, [x19]
	mov	w3, 1
	mov	w4, 0
	b	.L646
.L649:
	ldp	x25, x26, [sp, 176]
	.cfi_restore 26
	.cfi_restore 25
	mov	w0, -1
	b	.L633
.L673:
	stp	x25, x26, [sp, 176]
	.cfi_offset 26, -8
	.cfi_offset 25, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
	.p2align 4,,11
	.global	uECC_valid_public_key
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
.LFB57:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x0
	stp	x21, x22, [sp, 112]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldrsb	w20, [x1, 1]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	w2, w20, 6
	adds	w0, w20, 3
	csel	w2, w2, w0, mi
	cmp	w20, 0
	ble	.L681
	add	x6, sp, 8
	asr	w2, w2, 2
	mov	x0, x6
	sub	w21, w20, #1
	str	x23, [sp, 128]
	.cfi_offset 23, -16
	and	w23, w2, 255
	ubfiz	x2, x2, 2, 8
	bl	memset
	mov	x6, x0
	mov	w2, 0
	mov	w3, 0
	.p2align 3,,7
.L680:
	sub	w3, w21, w3
	ldrb	w4, [x19, w2, sxtw]
	add	w2, w2, 1
	lsr	w5, w3, 2
	ubfiz	w3, w3, 3, 2
	sxtb	w2, w2
	lsl	w4, w4, w3
	mov	w3, w2
	ldr	w0, [x6, x5, lsl 2]
	orr	w0, w0, w4
	str	w0, [x6, x5, lsl 2]
	cmp	w20, w2
	bgt	.L680
	ldrsb	x7, [x22]
	ubfiz	x2, x23, 2, 8
	mov	w1, 0
	add	x7, x6, x7, lsl 2
	mov	x0, x7
	bl	memset
	mov	x7, x0
	add	x0, x19, w20, sxtw
	mov	w8, 1
	sub	w8, w8, w0
	mov	w2, 0
	.p2align 3,,7
.L682:
	sub	w2, w21, w2
	ldrb	w5, [x0]
	add	w3, w8, w0
	add	x0, x0, 1
	lsr	w6, w2, 2
	ubfiz	w1, w2, 3, 2
	sxtb	w2, w3
	lsl	w5, w5, w1
	ldr	w4, [x7, x6, lsl 2]
	orr	w4, w4, w5
	str	w4, [x7, x6, lsl 2]
	cmp	w20, w3, sxtb
	bgt	.L682
	ldr	x23, [sp, 128]
	.cfi_restore 23
.L681:
	ldr	w0, [x22, 128]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 124]
	ldr	w1, [sp, 64]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w1, [x22, 120]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w1, [x22, 116]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w1, [x22, 112]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w1, [x22, 108]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w1, [x22, 104]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w1, [x22, 100]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w1, [x22, 96]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bcc	.L678
	bhi	.L678
	ldr	w0, [x22, 92]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 88]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 84]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 80]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 76]
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 72]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bhi	.L678
	bcc	.L678
	ldr	w0, [x22, 68]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	bhi	.L678
	mov	w0, -4
	bcs	.L674
	.p2align 3,,7
.L678:
	mov	x1, x22
	add	x0, sp, 8
	bl	uECC_valid_point
.L674:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L690
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	add	sp, sp, 144
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L690:
	.cfi_restore_state
	str	x23, [sp, 128]
	.cfi_offset 23, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
	.p2align 4,,11
	.global	uECC_compute_public_key
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
.LFB58:
	.cfi_startproc
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	stp	x29, x30, [sp, 192]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 192
	stp	x21, x22, [sp, 224]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x2
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 208]
	ldrsh	w22, [x21, 2]
	str	x23, [sp, 240]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 23, -16
	mov	x23, x0
	add	w20, w22, 14
	mov	x19, x1
	ldr	x0, [x2]
	str	x0, [sp, 184]
	mov	x0, 0
	adds	w0, w22, 7
	csel	w20, w20, w0, mi
	asr	w20, w20, 3
	adds	w1, w20, 3
	add	w0, w20, 6
	csel	w0, w0, w1, mi
	sbfx	x1, x0, 2, 8
	cmp	w1, 0
	ble	.L695
	asr	w0, w0, 2
	mov	w1, 0
	sub	w2, w0, #1
	add	x0, sp, 16
	ubfiz	x2, x2, 2, 8
	add	x2, x2, 4
	bl	memset
.L695:
	cmp	w22, 0
	ble	.L694
	sub	w2, w20, #1
	add	x0, sp, 16
	mov	w3, 0
	mov	w4, 0
	.p2align 3,,7
.L698:
	sub	w4, w2, w4
	ldrb	w7, [x23, w3, sxtw]
	add	w3, w3, 1
	lsr	w1, w4, 2
	ubfiz	w4, w4, 3, 2
	sxtb	w3, w3
	lsl	w7, w7, w4
	mov	w4, w3
	ldr	w6, [x0, x1, lsl 2]
	orr	w6, w6, w7
	str	w6, [x0, x1, lsl 2]
	cmp	w20, w3
	bgt	.L698
.L694:
	add	w5, w22, 62
	adds	w0, w22, 31
	csel	w5, w5, w0, mi
	sbfx	x9, x5, 5, 8
	asr	w5, w5, 5
	cmp	w9, 0
	ble	.L699
	and	w5, w5, 255
	sub	w11, w5, #1
	and	w11, w11, 255
	cmp	w11, 3
	bls	.L718
	ubfx	x2, x5, 2, 6
	add	x0, sp, 16
	movi	v1.4s, 0
	mov	x1, x0
	add	x2, x0, x2, lsl 4
	.p2align 3,,7
.L701:
	ldr	q0, [x1], 16
	orr	v1.16b, v1.16b, v0.16b
	cmp	x2, x1
	bne	.L701
	movi	v0.4s, 0
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v1.16b, v2.16b, v1.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w1, s0
	tst	x5, 3
	beq	.L702
	and	w3, w5, -4
	sxtb	w3, w3
.L700:
	and	w2, w3, 255
	ldr	w3, [x0, w3, sxtw 2]
	add	w4, w2, 1
	orr	w1, w1, w3
	and	x3, x4, 255
	cmp	w9, w4, sxtb
	ble	.L702
	ldr	w3, [x0, x3, lsl 2]
	add	w6, w2, 2
	and	x4, x6, 255
	orr	w1, w1, w3
	cmp	w9, w6, sxtb
	ble	.L702
	ldr	w4, [x0, x4, lsl 2]
	add	w2, w2, 3
	and	x3, x2, 255
	orr	w1, w1, w4
	cmp	w9, w2, sxtb
	ble	.L702
	ldr	w2, [x0, x3, lsl 2]
	orr	w1, w1, w2
.L702:
	cbz	w1, .L699
	uxtw	x8, w11
	add	x10, x21, 32
	add	x8, x8, 2
	add	x20, sp, 112
	mov	x3, 1
	mov	w1, 0
	.p2align 3,,7
.L703:
	lsl	x4, x3, 2
	ldr	w2, [x10, x3, lsl 2]
	add	x7, x0, x4
	add	x6, x20, x4
	sub	w4, w2, w1
	add	x3, x3, 1
	ldr	w7, [x7, -4]
	sub	w4, w4, w7
	str	w4, [x6, -4]
	cmp	w2, w4
	csel	w1, w1, wzr, eq
	cset	w2, cc
	orr	w1, w1, w2
	cmp	x8, x3
	bne	.L703
	cmp	w1, 0
	cset	w23, ne
	cmp	w11, 3
	bls	.L719
	ubfx	x2, x5, 2, 6
	mov	x1, x20
	movi	v1.4s, 0
	add	x2, x20, x2, lsl 4
	.p2align 3,,7
.L705:
	ldr	q0, [x1], 16
	orr	v1.16b, v1.16b, v0.16b
	cmp	x2, x1
	bne	.L705
	movi	v0.4s, 0
	and	w3, w5, -4
	sxtb	w3, w3
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v1.16b, v2.16b, v1.16b
	ext	v0.16b, v1.16b, v0.16b, #4
	orr	v0.16b, v0.16b, v1.16b
	fmov	w1, s0
	tst	x5, 3
	beq	.L706
.L704:
	and	w2, w3, 255
	ldr	w3, [x20, w3, sxtw 2]
	add	w4, w2, 1
	orr	w1, w1, w3
	and	x3, x4, 255
	cmp	w9, w4, sxtb
	ble	.L706
	ldr	w3, [x20, x3, lsl 2]
	add	w5, w2, 2
	and	x4, x5, 255
	orr	w1, w1, w3
	cmp	w9, w5, sxtb
	ble	.L706
	ldr	w4, [x20, x4, lsl 2]
	add	w2, w2, 3
	and	x3, x2, 255
	orr	w1, w1, w4
	cmp	w9, w2, sxtb
	ble	.L706
	ldr	w2, [x20, x3, lsl 2]
	orr	w1, w1, w2
.L706:
	cmp	w1, 0
	cset	w1, ne
	sub	w23, w1, w23, lsl 1
	and	w23, w23, 255
	cmp	w23, 1
	beq	.L744
.L699:
	mov	w0, 0
.L691:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 184]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L745
	ldp	x29, x30, [sp, 192]
	ldp	x19, x20, [sp, 208]
	ldp	x21, x22, [sp, 224]
	ldr	x23, [sp, 240]
	add	sp, sp, 256
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L744:
	.cfi_restore_state
	add	x1, sp, 48
	add	x2, sp, 80
	mov	x3, x21
	stp	x1, x2, [sp]
	bl	regularize_k
	cmp	w0, 0
	mov	x2, sp
	cset	x6, eq
	mov	x3, 0
	add	w4, w22, 1
	mov	x5, x21
	add	x1, x21, 68
	mov	x0, x20
	ldr	x2, [x2, x6, lsl 3]
	bl	EccPoint_mult
	ldrb	w2, [x21]
	sbfiz	w3, w2, 1, 7
	ubfiz	w2, w2, 1, 7
	cmp	w3, 0
	ble	.L699
	sub	w0, w2, #1
	and	w0, w0, 255
	cmp	w0, 3
	bls	.L708
	ubfx	x1, x2, 2, 6
	mov	x0, x20
	movi	v0.4s, 0
	add	x1, x20, x1, lsl 4
	.p2align 3,,7
.L709:
	ldr	q1, [x0], 16
	orr	v0.16b, v0.16b, v1.16b
	cmp	x1, x0
	bne	.L709
	movi	v1.4s, 0
	and	w1, w2, 252
	sxtb	w4, w1
	ext	v2.16b, v0.16b, v1.16b, #8
	orr	v0.16b, v2.16b, v0.16b
	ext	v1.16b, v0.16b, v1.16b, #4
	orr	v1.16b, v1.16b, v0.16b
	fmov	w0, s1
	tbz	x2, 1, .L710
	ldr	w0, [x20, w4, sxtw 2]
	fmov	w4, s1
	add	w2, w1, 1
	sxtb	w23, w2
	orr	w0, w0, w4
	cmp	w3, w2, sxtb
	ble	.L710
.L716:
	ldr	w5, [x20, w23, sxtw 2]
	add	w4, w1, 2
	and	x2, x4, 255
	orr	w0, w0, w5
	cmp	w3, w4, sxtb
	ble	.L710
	ldr	w2, [x20, x2, lsl 2]
	add	w1, w1, 3
	and	x4, x1, 255
	orr	w0, w0, w2
	cmp	w3, w1, sxtb
	ble	.L710
	ldr	w1, [x20, x4, lsl 2]
	orr	w0, w0, w1
.L710:
	cbz	w0, .L699
	ldrsb	w5, [x21, 1]
	mov	w6, 1
	mov	x1, x19
	sub	w6, w6, w19
	sub	w7, w5, #1
	mov	w0, 0
	cmp	w5, 0
	ble	.L714
	.p2align 3,,7
.L713:
	sub	w0, w7, w0
	add	w3, w6, w1
	add	x1, x1, 1
	lsr	w2, w0, 2
	ubfiz	w4, w0, 3, 2
	sxtb	w0, w3
	ldr	w2, [x20, x2, lsl 2]
	lsr	w2, w2, w4
	strb	w2, [x1, -1]
	cmp	w5, w3, sxtb
	bgt	.L713
	ldrsb	x1, [x21, 1]
	ldrsb	x8, [x21]
	mov	x5, x1
	cmp	w1, 0
	ble	.L714
	add	x1, x19, x1
	mov	w6, 1
	sub	w7, w5, #1
	sub	w6, w6, w1
	mov	w0, 0
	.p2align 3,,7
.L715:
	sub	w0, w7, w0
	add	w3, w6, w1
	add	x1, x1, 1
	lsr	w2, w0, 2
	ubfiz	w4, w0, 3, 2
	add	x2, x2, x8
	sxtb	w0, w3
	ldr	w2, [x20, x2, lsl 2]
	lsr	w2, w2, w4
	strb	w2, [x1, -1]
	cmp	w5, w3, sxtb
	bgt	.L715
.L714:
	mov	w0, 1
	b	.L691
.L718:
	add	x0, sp, 16
	mov	w1, 0
	mov	w3, 0
	b	.L700
.L719:
	mov	w1, 0
	mov	w3, 0
	b	.L704
.L708:
	ldr	w0, [sp, 112]
	mov	w1, 0
	b	.L716
.L745:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE58:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.section	.data.rel,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	g_rng_function, %object
	.size	g_rng_function, 8
g_rng_function:
	.xword	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	3
	.set	.LANCHOR1,. + 0
	.type	curve_secp256r1, %object
	.size	curve_secp256r1, 192
curve_secp256r1:
	.byte	8
	.byte	32
	.hword	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.zero	4
	.xword	double_jacobian_default
	.xword	x_side_default
	.xword	vli_mmod_fast_secp256r1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

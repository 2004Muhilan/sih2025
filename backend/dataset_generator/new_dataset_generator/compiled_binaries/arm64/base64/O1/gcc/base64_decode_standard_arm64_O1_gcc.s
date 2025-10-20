	.arch armv8-a
	.file	"base64_decode_standard.c"
	.text
	.align	2
	.global	base64_char_value
	.type	base64_char_value, %function
base64_char_value:
.LFB0:
	.cfi_startproc
	and	w0, w0, 255
	sub	w1, w0, #65
	and	w1, w1, 255
	cmp	w1, 25
	bls	.L8
	sub	w1, w0, #97
	and	w1, w1, 255
	cmp	w1, 25
	bls	.L9
	sub	w1, w0, #48
	and	w1, w1, 255
	cmp	w1, 9
	bls	.L10
	cmp	w0, 43
	beq	.L6
	cmp	w0, 47
	mov	w0, 63
	csinv	w0, w0, wzr, eq
	b	.L1
.L8:
	sub	w0, w0, #65
.L1:
	ret
.L9:
	sub	w0, w0, #71
	b	.L1
.L10:
	add	w0, w0, 4
	b	.L1
.L6:
	mov	w0, 62
	b	.L1
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.align	2
	.global	base64_decode_standard
	.type	base64_decode_standard, %function
base64_decode_standard:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x25, x0
	str	xzr, [x2]
	ldrb	w0, [x0]
	cmp	w0, 61
	ccmp	w0, 0, 4, ne
	beq	.L11
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	mov	x23, x1
	mov	x21, x2
	mov	x22, x25
	mov	x24, 0
	mov	w26, 0
	b	.L13
.L18:
	ldr	x1, [x21]
	add	x2, x1, 1
	str	x2, [x21]
	lsr	w2, w0, 16
	strb	w2, [x23, x1]
	ldr	x1, [x21]
	add	x2, x1, 1
	str	x2, [x21]
	lsr	w2, w0, 8
	strb	w2, [x23, x1]
	ldr	x1, [x21]
	add	x2, x1, 1
	str	x2, [x21]
	strb	w0, [x23, x1]
	add	x24, x24, 4
	ldrb	w0, [x25, x24]
	add	x22, x22, 4
	cmp	w0, 61
	ccmp	w0, 0, 4, ne
	beq	.L17
.L13:
	mov	x20, 0
	mov	w0, w26
.L14:
	lsl	w19, w0, 6
	ldrb	w0, [x22, x20]
	bl	base64_char_value
	orr	w0, w0, w19
	add	x20, x20, 1
	cmp	x20, 4
	bne	.L14
	b	.L18
.L17:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
.L11:
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

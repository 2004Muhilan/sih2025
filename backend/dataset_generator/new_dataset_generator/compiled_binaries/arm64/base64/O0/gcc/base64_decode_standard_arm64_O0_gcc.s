	.arch armv8-a
	.file	"base64_decode_standard.c"
	.text
	.align	2
	.global	base64_char_value
	.type	base64_char_value, %function
base64_char_value:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 64
	bls	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 90
	bhi	.L2
	ldrb	w0, [sp, 15]
	sub	w0, w0, #65
	b	.L3
.L2:
	ldrb	w0, [sp, 15]
	cmp	w0, 96
	bls	.L4
	ldrb	w0, [sp, 15]
	cmp	w0, 122
	bhi	.L4
	ldrb	w0, [sp, 15]
	sub	w0, w0, #71
	b	.L3
.L4:
	ldrb	w0, [sp, 15]
	cmp	w0, 47
	bls	.L5
	ldrb	w0, [sp, 15]
	cmp	w0, 57
	bhi	.L5
	ldrb	w0, [sp, 15]
	add	w0, w0, 4
	b	.L3
.L5:
	ldrb	w0, [sp, 15]
	cmp	w0, 43
	bne	.L6
	mov	w0, 62
	b	.L3
.L6:
	ldrb	w0, [sp, 15]
	cmp	w0, 47
	bne	.L7
	mov	w0, 63
	b	.L3
.L7:
	mov	w0, -1
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
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
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	str	xzr, [x0]
	str	xzr, [sp, 72]
	b	.L9
.L13:
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	b	.L10
.L11:
	ldr	w0, [sp, 64]
	lsl	w19, w0, 6
	ldrsw	x1, [sp, 68]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	base64_char_value
	orr	w0, w19, w0
	str	w0, [sp, 64]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L10:
	ldr	w0, [sp, 68]
	cmp	w0, 3
	ble	.L11
	ldr	w0, [sp, 64]
	lsr	w3, w0, 16
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x2, x0, 1
	ldr	x1, [sp, 40]
	str	x2, [x1]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	and	w1, w3, 255
	strb	w1, [x0]
	ldr	w0, [sp, 64]
	lsr	w3, w0, 8
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x2, x0, 1
	ldr	x1, [sp, 40]
	str	x2, [x1]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	and	w1, w3, 255
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x2, x0, 1
	ldr	x1, [sp, 40]
	str	x2, [x1]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 64]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	str	x0, [sp, 72]
.L9:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L14
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 61
	bne	.L13
.L14:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

	.arch armv8-a
	.file	"rc4_drop3072.c"
	.text
	.align	2
	.global	rc4_drop3072_init
	.type	rc4_drop3072_init, %function
rc4_drop3072_init:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	wzr, [sp, 36]
	b	.L2
.L3:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 36]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 255
	ble	.L3
	strb	wzr, [sp, 33]
	str	wzr, [sp, 40]
	b	.L4
.L5:
	ldrb	w0, [sp, 33]
	ldrsw	x1, [sp, 40]
	ldr	x2, [sp, 24]
	add	x1, x2, x1
	ldrb	w1, [x1]
	add	w1, w0, w1
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 8]
	udiv	x3, x0, x2
	ldr	x2, [sp, 8]
	mul	x2, x3, x2
	sub	x0, x0, x2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	add	w0, w1, w0
	negs	w1, w0
	and	w0, w0, 255
	and	w1, w1, 255
	csneg	w0, w0, w1, mi
	strb	w0, [sp, 33]
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	ldrb	w0, [sp, 33]
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldrb	w0, [sp, 33]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [sp, 35]
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w0, [sp, 40]
	cmp	w0, 255
	ble	.L5
	str	wzr, [sp, 44]
	b	.L6
.L7:
	ldr	w0, [sp, 44]
	negs	w1, w0
	and	w0, w0, 255
	and	w1, w1, 255
	csneg	w0, w0, w1, mi
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 34]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldr	w0, [sp, 44]
	cmp	w0, 3071
	ble	.L7
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

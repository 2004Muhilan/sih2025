	.arch armv8-a
	.file	"des_initial_permutation.c"
	.text
	.section	.rodata
	.align	3
	.type	IP, %object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
	.text
	.align	2
	.global	des_initial_permutation
	.type	des_initial_permutation, %function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L2
.L4:
	adrp	x0, IP
	add	x1, x0, :lo12:IP
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 64
	sub	w0, w0, w1
	ldr	x1, [sp, 8]
	lsr	x0, x1, x0
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L3
	ldr	w0, [sp, 20]
	mov	x1, -9223372036854775808
	lsr	x0, x1, x0
	ldr	x1, [sp, 24]
	orr	x0, x1, x0
	str	x0, [sp, 24]
.L3:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w0, [sp, 20]
	cmp	w0, 63
	ble	.L4
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

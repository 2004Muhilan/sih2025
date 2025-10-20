	.arch armv8-a
	.file	"des_initial_permutation.c"
	.text
	.align	2
	.global	des_initial_permutation
	.type	des_initial_permutation, %function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	mov	x5, x0
	mov	x2, 0
	mov	x0, 0
	adrp	x4, .LANCHOR0
	add	x4, x4, :lo12:.LANCHOR0
	mov	w7, 64
	mov	x6, -9223372036854775808
.L3:
	ldrb	w1, [x2, x4]
	sub	w1, w7, w1
	lsr	x1, x5, x1
	lsr	x3, x6, x2
	orr	x3, x0, x3
	tst	x1, 1
	csel	x0, x3, x0, ne
	add	x2, x2, 1
	cmp	x2, 64
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	IP, %object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

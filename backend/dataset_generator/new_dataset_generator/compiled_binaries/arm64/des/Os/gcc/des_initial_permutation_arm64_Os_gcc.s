	.arch armv8-a
	.file	"des_initial_permutation.c"
	.text
	.align	2
	.global	des_initial_permutation
	.type	des_initial_permutation, %function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	adrp	x4, .LANCHOR0
	add	x4, x4, :lo12:.LANCHOR0
	mov	x3, x0
	mov	x1, 0
	mov	x0, 0
	mov	w5, 64
	mov	x6, -9223372036854775808
.L3:
	ldrb	w2, [x1, x4]
	sub	w2, w5, w2
	lsr	x2, x3, x2
	tbz	x2, 0, .L2
	lsr	x2, x6, x1
	orr	x0, x0, x2
.L2:
	add	x1, x1, 1
	cmp	x1, 64
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	IP, %object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

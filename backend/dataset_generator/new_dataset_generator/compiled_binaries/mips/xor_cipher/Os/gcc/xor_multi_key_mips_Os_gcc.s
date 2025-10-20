	.file	1 "xor_multi_key.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_multi_key
	.set	nomips16
	.set	nomicromips
	.ent	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$9,16($sp)
	move	$3,$0
$L2:
	bne	$3,$5,$L3
	nop

	jr	$31
	nop

$L3:
	teq	$9,$0,7
	divu	$0,$3,$9
	lbu	$10,0($4)
	addiu	$3,$3,1
	addiu	$4,$4,1
	mfhi	$8
	addu	$2,$6,$8
	addu	$8,$7,$8
	lbu	$2,0($2)
	xor	$2,$2,$10
	andi	$2,$2,0x00ff
	sb	$2,-1($4)
	lbu	$8,0($8)
	xor	$2,$2,$8
	.option	pic0
	b	$L2
	.option	pic2
	sb	$2,-1($4)

	.set	macro
	.set	reorder
	.end	xor_multi_key
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

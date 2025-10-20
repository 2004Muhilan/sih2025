	.file	1 "xor_cbc_mode.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_cbc_mode
	.set	nomips16
	.set	nomicromips
	.ent	xor_cbc_mode
	.type	xor_cbc_mode, @function
xor_cbc_mode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$3,19($sp)
	move	$2,$0
$L2:
	bne	$2,$5,$L3
	addu	$9,$4,$2

	jr	$31
	nop

$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	addiu	$2,$2,1
	lbu	$10,0($9)
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$8,$10
	xor	$3,$3,$8
	andi	$3,$3,0x00ff
	.option	pic0
	b	$L2
	.option	pic2
	sb	$3,0($9)

	.set	macro
	.set	reorder
	.end	xor_cbc_mode
	.size	xor_cbc_mode, .-xor_cbc_mode
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

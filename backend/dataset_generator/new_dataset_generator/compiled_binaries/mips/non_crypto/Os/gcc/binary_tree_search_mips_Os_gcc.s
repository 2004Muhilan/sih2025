	.file	1 "binary_tree_search.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	binary_tree_search
	.set	nomips16
	.set	nomicromips
	.ent	binary_tree_search
	.type	binary_tree_search, @function
binary_tree_search:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$L2:
	beq	$4,$0,$L5
	nop

	lw	$2,0($4)
	beq	$2,$5,$L6
	nop

	lw	$3,4($4)
	slt	$2,$5,$2
	lw	$4,8($4)
	.option	pic0
	b	$L2
	.option	pic2
	movn	$4,$3,$2

$L5:
	jr	$31
	move	$2,$0

$L6:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	binary_tree_search
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

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
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L3:
	lw	$2,0($4)
	beq	$2,$5,$L7
	slt	$3,$5,$2

	lw	$2,4($4)
	lw	$4,8($4)
	movn	$4,$2,$3
$L9:
	bne	$4,$0,$L3
	move	$2,$0

	jr	$31
	nop

$L7:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	binary_tree_search
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

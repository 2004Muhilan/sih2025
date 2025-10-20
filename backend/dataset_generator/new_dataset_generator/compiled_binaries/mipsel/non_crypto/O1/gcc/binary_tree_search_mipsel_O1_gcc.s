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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L4
	nop

	lw	$2,0($4)
	beq	$2,$5,$L5
	nop

	addiu	$sp,$sp,-32
	slt	$2,$5,$2
	beq	$2,$0,$L3
	sw	$31,28($sp)

	lw	$4,4($4)
	.option	pic0
	jal	binary_tree_search
	nop

	.option	pic2
	lw	$31,28($sp)
$L10:
	jr	$31
	addiu	$sp,$sp,32

$L3:
	lw	$4,8($4)
	.option	pic0
	jal	binary_tree_search
	nop

	.option	pic2
	.option	pic0
	b	$L10
	.option	pic2
	lw	$31,28($sp)

$L4:
	jr	$31
	move	$2,$0

$L5:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	binary_tree_search
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

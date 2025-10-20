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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,32($fp)
	bne	$2,$0,$L2
	nop

	move	$2,$0
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	lw	$2,32($fp)
	lw	$2,0($2)
	lw	$3,36($fp)
	bne	$3,$2,$L4
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lw	$2,32($fp)
	lw	$2,0($2)
	lw	$3,36($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L5
	nop

	lw	$2,32($fp)
	lw	$2,4($2)
	lw	$5,36($fp)
	move	$4,$2
	.option	pic0
	jal	binary_tree_search
	nop

	.option	pic2
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L5:
	lw	$2,32($fp)
	lw	$2,8($2)
	lw	$5,36($fp)
	move	$4,$2
	.option	pic0
	jal	binary_tree_search
	nop

	.option	pic2
$L3:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	binary_tree_search
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

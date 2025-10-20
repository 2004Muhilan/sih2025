	.file	1 "fibonacci.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	fibonacci
	.set	nomips16
	.set	nomicromips
	.ent	fibonacci
	.type	fibonacci, @function
fibonacci:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	sltu	$2,$2,2
	beq	$2,$0,$L2
	nop

	lw	$2,24($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	sw	$0,0($fp)
	li	$2,1			# 0x1
	sw	$2,4($fp)
	li	$2,2			# 0x2
	sw	$2,8($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$3,0($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	sw	$2,12($fp)
	lw	$2,4($fp)
	sw	$2,0($fp)
	lw	$2,12($fp)
	sw	$2,4($fp)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L4:
	lw	$3,8($fp)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L5
	nop

	lw	$2,4($fp)
$L3:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fibonacci
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

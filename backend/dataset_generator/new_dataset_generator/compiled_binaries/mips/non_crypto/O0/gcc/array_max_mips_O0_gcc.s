	.file	1 "array_max.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	array_max
	.set	nomips16
	.set	nomicromips
	.ent	array_max
	.type	array_max, @function
array_max:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	lw	$2,20($fp)
	bne	$2,$0,$L2
	nop

	move	$2,$0
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,0($fp)
	li	$2,1			# 0x1
	sw	$2,4($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L6:
	lw	$2,4($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,0($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L5
	nop

	lw	$2,4($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,0($fp)
$L5:
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$3,4($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L6
	nop

	lw	$2,0($fp)
$L3:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	array_max
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

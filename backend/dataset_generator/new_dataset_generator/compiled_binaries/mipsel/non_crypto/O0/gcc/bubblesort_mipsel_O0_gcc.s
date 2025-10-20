	.file	1 "bubblesort.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	bubblesort
	.set	nomips16
	.set	nomicromips
	.ent	bubblesort
	.type	bubblesort, @function
bubblesort:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L6:
	sw	$0,8($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L5:
	lw	$2,8($fp)
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$4,24($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	slt	$2,$2,$3
	beq	$2,$0,$L4
	nop

	lw	$2,8($fp)
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$3,$3,$2
	lw	$2,8($fp)
	sll	$2,$2,2
	lw	$4,24($fp)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$3,12($fp)
	sw	$3,0($2)
$L4:
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L3:
	lw	$3,28($fp)
	lw	$2,4($fp)
	subu	$2,$3,$2
	addiu	$2,$2,-1
	lw	$3,8($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L5
	nop

	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,28($fp)
	addiu	$2,$2,-1
	lw	$3,4($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L6
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bubblesort
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

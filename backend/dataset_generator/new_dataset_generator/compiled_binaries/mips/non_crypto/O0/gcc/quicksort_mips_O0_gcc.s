	.file	1 "quicksort.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	swap
	.set	nomips16
	.set	nomicromips
	.ent	swap
	.type	swap, @function
swap:
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
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,4($fp)
	lw	$2,20($fp)
	lw	$3,0($2)
	lw	$2,16($fp)
	sw	$3,0($2)
	lw	$2,20($fp)
	lw	$3,4($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	swap
	.size	swap, .-swap
	.align	2
	.globl	partition
	.set	nomips16
	.set	nomicromips
	.ent	partition
	.type	partition, @function
partition:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	lw	$2,56($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,36($fp)
	lw	$2,52($fp)
	addiu	$2,$2,-1
	sw	$2,28($fp)
	lw	$2,52($fp)
	sw	$2,32($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L5:
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,36($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L4
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,28($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$4,$3,$2
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	move	$5,$2
	.option	pic0
	jal	swap
	nop

	.option	pic2
$L4:
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L3:
	lw	$3,32($fp)
	lw	$2,56($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L5
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$4,$3,$2
	lw	$2,56($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	move	$5,$2
	.option	pic0
	jal	swap
	nop

	.option	pic2
	lw	$2,28($fp)
	addiu	$2,$2,1
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	partition
	.size	partition, .-partition
	.align	2
	.globl	quicksort
	.set	nomips16
	.set	nomicromips
	.ent	quicksort
	.type	quicksort, @function
quicksort:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$3,44($fp)
	lw	$2,48($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L9
	nop

	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	partition
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$2,28($fp)
	addiu	$2,$2,-1
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	quicksort
	nop

	.option	pic2
	lw	$2,28($fp)
	addiu	$2,$2,1
	lw	$6,48($fp)
	move	$5,$2
	lw	$4,40($fp)
	.option	pic0
	jal	quicksort
	nop

	.option	pic2
$L9:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	quicksort
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

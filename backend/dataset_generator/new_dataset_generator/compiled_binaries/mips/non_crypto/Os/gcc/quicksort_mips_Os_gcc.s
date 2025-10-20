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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	lw	$3,0($5)
	sw	$3,0($4)
	jr	$31
	sw	$2,0($5)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$7,$6,2
	sll	$3,$5,2
	addu	$7,$4,$7
	addiu	$8,$5,-1
	addu	$3,$4,$3
	lw	$10,0($7)
$L3:
	slt	$9,$5,$6
	bne	$9,$0,$L5
	addiu	$2,$8,1

	sll	$3,$2,2
	lw	$5,0($7)
	addu	$4,$4,$3
	lw	$3,0($4)
	sw	$5,0($4)
	jr	$31
	sw	$3,0($7)

$L5:
	lw	$9,0($3)
	slt	$11,$9,$10
	beq	$11,$0,$L4
	nop

	sll	$8,$2,2
	addu	$8,$4,$8
	lw	$11,0($8)
	sw	$9,0($8)
	move	$8,$2
	sw	$11,0($3)
$L4:
	addiu	$5,$5,1
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$3,$3,4

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
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	move	$12,$5
	sw	$18,32($sp)
	move	$18,$6
	sw	$17,28($sp)
	move	$17,$4
	sw	$31,36($sp)
	sw	$16,24($sp)
$L8:
	slt	$2,$12,$18
	beq	$2,$0,$L6
	move	$5,$12

	move	$6,$18
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$17

	move	$5,$12
	addiu	$6,$2,-1
	move	$16,$2
	.option	pic0
	jal	quicksort
	.option	pic2
	move	$4,$17

	.option	pic0
	b	$L8
	.option	pic2
	addiu	$12,$16,1

$L6:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	quicksort
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

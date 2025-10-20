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
	addu	$10,$4,$7
	lw	$8,0($10)
	slt	$6,$5,$6
	beq	$6,$0,$L3
	addiu	$2,$5,-1

	sll	$5,$5,2
	addu	$3,$4,$5
	.option	pic0
	b	$L5
	.option	pic2
	move	$7,$10

$L4:
	addiu	$3,$3,4
	beq	$3,$7,$L3
	nop

$L5:
	lw	$5,0($3)
	slt	$6,$5,$8
	beq	$6,$0,$L4
	nop

	addiu	$2,$2,1
	sll	$6,$2,2
	addu	$6,$4,$6
	lw	$9,0($6)
	sw	$5,0($6)
	.option	pic0
	b	$L4
	.option	pic2
	sw	$9,0($3)

$L3:
	addiu	$2,$2,1
	sll	$3,$2,2
	addu	$4,$4,$3
	lw	$3,0($4)
	lw	$5,0($10)
	sw	$5,0($4)
	jr	$31
	sw	$3,0($10)

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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$5,$6
	bne	$2,$0,$L13
	nop

	jr	$31
	nop

$L13:
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$18,$4
	move	$17,$5
	move	$16,$6
	.option	pic0
	jal	partition
	nop

	.option	pic2
	move	$19,$2
	addiu	$6,$2,-1
	move	$5,$17
	move	$4,$18
	.option	pic0
	jal	quicksort
	nop

	.option	pic2
	move	$6,$16
	addiu	$5,$19,1
	move	$4,$18
	.option	pic0
	jal	quicksort
	nop

	.option	pic2
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	quicksort
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

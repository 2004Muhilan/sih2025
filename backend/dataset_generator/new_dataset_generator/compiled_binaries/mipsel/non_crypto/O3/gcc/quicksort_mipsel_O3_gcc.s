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
	sll	$8,$6,2
	slt	$6,$5,$6
	addu	$8,$4,$8
	addiu	$7,$5,-1
	beq	$6,$0,$L7
	lw	$9,0($8)

	sll	$2,$5,2
	addu	$2,$4,$2
$L6:
	lw	$5,0($2)
	slt	$3,$5,$9
	beq	$3,$0,$L5
	nop

	addiu	$7,$7,1
	sll	$3,$7,2
	addu	$3,$4,$3
	lw	$6,0($3)
	sw	$5,0($3)
	sw	$6,0($2)
$L5:
	addiu	$2,$2,4
	bne	$8,$2,$L6
	nop

	addiu	$7,$7,1
	lw	$9,0($8)
	move	$2,$7
	sll	$7,$7,2
	addu	$4,$4,$7
	lw	$3,0($4)
	sw	$9,0($4)
	jr	$31
	sw	$3,0($8)

$L7:
	move	$7,$5
	sll	$7,$7,2
	move	$2,$5
	addu	$4,$4,$7
	lw	$3,0($4)
	sw	$9,0($4)
	jr	$31
	sw	$3,0($8)

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
	beq	$2,$0,$L24
	nop

	addiu	$sp,$sp,-48
	sw	$17,32($sp)
	sll	$17,$6,2
	sw	$19,40($sp)
	move	$19,$6
	addu	$17,$4,$17
	sw	$18,36($sp)
	sw	$31,44($sp)
	move	$18,$4
	sw	$16,28($sp)
$L14:
	lw	$8,0($17)
	beq	$2,$0,$L11
	addiu	$16,$5,-1

	sll	$2,$5,2
	addu	$2,$18,$2
$L13:
	lw	$7,0($2)
	slt	$3,$7,$8
	beq	$3,$0,$L12
	nop

	addiu	$16,$16,1
	sll	$3,$16,2
	addu	$3,$18,$3
	lw	$9,0($3)
	sw	$7,0($3)
	sw	$9,0($2)
$L12:
	addiu	$2,$2,4
	bne	$17,$2,$L13
	nop

	lw	$8,0($17)
$L11:
	addiu	$2,$16,1
	move	$6,$16
	sll	$2,$2,2
	move	$4,$18
	addu	$2,$18,$2
	lw	$3,0($2)
	sw	$8,0($2)
	.option	pic0
	jal	quicksort
	.option	pic2
	sw	$3,0($17)

	addiu	$5,$16,2
	slt	$2,$5,$19
	bne	$2,$0,$L14
	slt	$2,$5,$19

	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

$L24:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	quicksort
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

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
	.frame	$sp,104,$31		# vars= 40, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	slt	$2,$5,$6
	sw	$31,100($sp)
	sw	$fp,96($sp)
	sw	$23,92($sp)
	sw	$22,88($sp)
	sw	$21,84($sp)
	sw	$20,80($sp)
	sw	$19,76($sp)
	sw	$18,72($sp)
	sw	$17,68($sp)
	sw	$16,64($sp)
	beq	$2,$0,$L9
	sw	$6,112($sp)

	move	$23,$5
	move	$16,$4
	lw	$6,112($sp)
$L50:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	sw	$2,36($sp)
	addiu	$2,$2,-1
	sw	$2,28($sp)
	slt	$2,$23,$2
	beq	$2,$0,$L38
	lw	$2,36($sp)

	lw	$6,28($sp)
$L49:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	sw	$2,40($sp)
	addiu	$2,$2,-1
	sw	$2,32($sp)
	slt	$2,$23,$2
	beq	$2,$0,$L39
	lw	$2,40($sp)

	lw	$6,32($sp)
$L48:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	addiu	$fp,$2,-1
	sw	$2,44($sp)
	slt	$2,$23,$fp
	beq	$2,$0,$L40
	lw	$2,44($sp)

	move	$6,$fp
$L47:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	addiu	$19,$2,-1
	sw	$2,48($sp)
	slt	$2,$23,$19
	beq	$2,$0,$L41
	lw	$2,48($sp)

	move	$6,$19
$L46:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	addiu	$18,$2,-1
	move	$17,$2
	slt	$2,$23,$18
	beq	$2,$0,$L15
	move	$6,$18

$L45:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	addiu	$22,$2,-1
	move	$20,$2
	slt	$2,$23,$22
	beq	$2,$0,$L16
	move	$6,$22

$L44:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	addiu	$21,$2,-1
	sw	$2,52($sp)
	slt	$2,$23,$21
	beq	$2,$0,$L42
	lw	$2,52($sp)

	move	$6,$21
$L43:
	move	$5,$23
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	addiu	$8,$2,-1
	move	$7,$2
	slt	$2,$23,$8
	beq	$2,$0,$L18
	nop

$L19:
	move	$6,$8
	sw	$7,60($sp)
	move	$5,$23
	sw	$8,56($sp)
	.option	pic0
	jal	partition
	.option	pic2
	move	$4,$16

	move	$5,$23
	addiu	$6,$2,-1
	move	$4,$16
	.option	pic0
	jal	quicksort
	.option	pic2
	addiu	$23,$2,1

	lw	$8,56($sp)
	slt	$2,$23,$8
	bne	$2,$0,$L19
	lw	$7,60($sp)

$L18:
	addiu	$23,$7,1
	slt	$2,$23,$21
	bne	$2,$0,$L43
	move	$6,$21

	lw	$2,52($sp)
$L42:
	addiu	$23,$2,1
	slt	$2,$23,$22
	bne	$2,$0,$L44
	move	$6,$22

$L16:
	addiu	$23,$20,1
	slt	$2,$23,$18
	bne	$2,$0,$L45
	move	$6,$18

$L15:
	addiu	$23,$17,1
	slt	$2,$23,$19
	bne	$2,$0,$L46
	move	$6,$19

	lw	$2,48($sp)
$L41:
	addiu	$23,$2,1
	slt	$2,$23,$fp
	bne	$2,$0,$L47
	move	$6,$fp

	lw	$2,44($sp)
$L40:
	addiu	$23,$2,1
	lw	$2,32($sp)
	slt	$2,$23,$2
	bne	$2,$0,$L48
	lw	$6,32($sp)

	lw	$2,40($sp)
$L39:
	addiu	$23,$2,1
	lw	$2,28($sp)
	slt	$2,$23,$2
	bne	$2,$0,$L49
	lw	$6,28($sp)

	lw	$2,36($sp)
$L38:
	addiu	$23,$2,1
	lw	$2,112($sp)
	slt	$2,$23,$2
	bne	$2,$0,$L50
	lw	$6,112($sp)

$L9:
	lw	$31,100($sp)
	lw	$fp,96($sp)
	lw	$23,92($sp)
	lw	$22,88($sp)
	lw	$21,84($sp)
	lw	$20,80($sp)
	lw	$19,76($sp)
	lw	$18,72($sp)
	lw	$17,68($sp)
	lw	$16,64($sp)
	jr	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	quicksort
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

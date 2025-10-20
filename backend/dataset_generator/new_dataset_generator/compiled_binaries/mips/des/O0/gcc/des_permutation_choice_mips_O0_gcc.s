	.file	1 "des_permutation_choice.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_pc1
	.set	nomips16
	.set	nomicromips
	.ent	des_pc1
	.type	des_pc1, @function
des_pc1:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$5,28($fp)
	sw	$4,24($fp)
	move	$5,$0
	move	$4,$0
	sw	$5,12($fp)
	sw	$4,8($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	li	$5,64			# 0x40
	lw	$4,4($fp)
	subu	$4,$5,$4
	andi	$5,$4,0x20
	move	$14,$0
	lw	$12,24($fp)
	sll	$13,$12,1
	li	$12,-1			# 0xffffffffffffffff
	xor	$12,$4,$12
	sll	$12,$13,$12
	lw	$13,28($fp)
	srl	$3,$13,$4
	or	$3,$12,$3
	lw	$12,24($fp)
	srl	$2,$12,$4
	movn	$3,$2,$5
	movn	$2,$14,$5
	andi	$8,$2,0
	andi	$9,$3,0x1
	li	$5,55			# 0x37
	lw	$4,4($fp)
	subu	$4,$5,$4
	andi	$5,$4,0x20
	move	$14,$0
	srl	$13,$9,1
	li	$12,-1			# 0xffffffffffffffff
	xor	$12,$4,$12
	srl	$12,$13,$12
	sll	$6,$8,$4
	or	$6,$12,$6
	sll	$7,$9,$4
	movn	$6,$7,$5
	movn	$7,$14,$5
	lw	$4,8($fp)
	or	$10,$4,$6
	lw	$4,12($fp)
	or	$11,$4,$7
	sw	$11,12($fp)
	sw	$10,8($fp)
	lw	$4,4($fp)
	addiu	$4,$4,1
	sw	$4,4($fp)
$L2:
	lw	$4,4($fp)
	slt	$4,$4,56
	bne	$4,$0,$L3
	nop

	lw	$3,12($fp)
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_pc1
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

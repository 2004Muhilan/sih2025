	.file	1 "des_permutation_choice.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__lshrdi3
	.globl	__ashldi3
	.align	2
	.globl	des_pc1
	.set	nomips16
	.set	nomicromips
	.ent	des_pc1
	.type	des_pc1, @function
des_pc1:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,48($sp)
	sw	$18,36($sp)
	li	$21,-1			# 0xffffffffffffffff
	sw	$17,32($sp)
	move	$18,$0
	sw	$16,28($sp)
	move	$17,$0
	li	$16,55			# 0x37
	sw	$20,44($sp)
	sw	$19,40($sp)
	move	$20,$4
	sw	$31,52($sp)
	move	$19,$5
	.cprestore	16
$L2:
	lw	$25,%call16(__lshrdi3)($28)
	addiu	$6,$16,9
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__lshrdi3
1:	jalr	$25
	move	$5,$19

	move	$5,$0
	lw	$28,16($sp)
	move	$6,$16
	andi	$4,$2,0x1
	lw	$25,%call16(__ashldi3)($28)
	.reloc	1f,R_MIPS_JALR,__ashldi3
1:	jalr	$25
	addiu	$16,$16,-1

	lw	$28,16($sp)
	or	$18,$18,$2
	bne	$16,$21,$L2
	or	$17,$17,$3

	lw	$31,52($sp)
	move	$2,$18
	lw	$21,48($sp)
	move	$3,$17
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	des_pc1
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

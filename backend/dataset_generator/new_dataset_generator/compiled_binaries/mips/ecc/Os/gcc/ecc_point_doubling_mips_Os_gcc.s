	.file	1 "ecc_point_doubling.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__udivdi3
	.globl	__umoddi3
	.align	2
	.globl	ecc_point_double
	.set	nomips16
	.set	nomicromips
	.ent	ecc_point_double
	.type	ecc_point_double, @function
ecc_point_double:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mul	$2,$6,$7
	multu	$7,$7
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	mflo	$5
	sw	$21,44($sp)
	move	$21,$4
	sw	$16,24($sp)
	mfhi	$4
	sw	$6,72($sp)
	move	$16,$6
	sw	$23,52($sp)
	li	$6,3			# 0x3
	sw	$22,48($sp)
	sll	$2,$2,1
	lw	$3,88($sp)
	lw	$22,84($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	multu	$6,$5
	lw	$5,92($sp)
	lw	$23,80($sp)
	addu	$4,$2,$4
	lw	$25,%call16(__udivdi3)($28)
	sw	$17,28($sp)
	move	$17,$7
	mflo	$9
	sw	$7,76($sp)
	mfhi	$8
	sw	$31,60($sp)
	mul	$2,$6,$4
	sw	$fp,56($sp)
	srl	$6,$22,31
	sw	$20,40($sp)
	sll	$7,$22,1
	sw	$19,36($sp)
	sw	$18,32($sp)
	.cprestore	16
	addu	$5,$9,$5
	lw	$19,100($sp)
	lw	$18,96($sp)
	addu	$8,$2,$8
	sltu	$4,$5,$9
	addu	$2,$8,$3
	sll	$3,$23,1
	addu	$4,$4,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	or	$6,$6,$3

	move	$7,$19
	lw	$28,16($sp)
	move	$6,$18
	move	$5,$3
	lw	$25,%call16(__umoddi3)($28)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$4,$2

	sll	$5,$17,1
	move	$fp,$2
	lw	$28,16($sp)
	mul	$2,$3,$fp
	multu	$3,$3
	move	$20,$3
	srl	$3,$17,31
	lw	$25,%call16(__umoddi3)($28)
	mfhi	$6
	mflo	$7
	sll	$2,$2,1
	addu	$6,$2,$6
	sll	$2,$16,1
	subu	$5,$7,$5
	or	$2,$3,$2
	subu	$4,$6,$2
	sltu	$3,$7,$5
	subu	$4,$4,$3
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$28,16($sp)
	subu	$16,$16,$2
	sw	$3,4($21)
	subu	$3,$17,$3
	sw	$2,0($21)
	sltu	$17,$17,$3
	subu	$16,$16,$17
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$fp
	madd	$16,$20
	mflo	$16
	multu	$3,$20
	mfhi	$6
	mflo	$7
	addu	$6,$16,$6
	subu	$5,$7,$22
	subu	$23,$6,$23
	sltu	$4,$7,$5
	subu	$4,$23,$4
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	sw	$2,8($21)
	move	$2,$21
	sw	$3,12($21)
	lw	$21,44($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_double
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

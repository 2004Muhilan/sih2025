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
	mul	$2,$7,$6
	multu	$6,$6
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	sw	$21,44($sp)
	move	$21,$4
	mflo	$4
	sw	$17,28($sp)
	mfhi	$5
	sw	$6,72($sp)
	move	$17,$6
	sw	$fp,56($sp)
	li	$6,3			# 0x3
	sw	$22,48($sp)
	sll	$2,$2,1
	sw	$16,24($sp)
	sw	$7,76($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$22,80($sp)
	move	$16,$7
	multu	$6,$4
	lw	$4,88($sp)
	addu	$5,$2,$5
	lw	$fp,84($sp)
	lw	$25,%call16(__udivdi3)($28)
	srl	$7,$22,31
	sw	$31,60($sp)
	mflo	$8
	sw	$23,52($sp)
	mfhi	$9
	sw	$20,40($sp)
	mul	$2,$6,$5
	sw	$19,36($sp)
	sll	$3,$fp,1
	sw	$18,32($sp)
	sll	$6,$22,1
	.cprestore	16
	or	$7,$7,$3
	lw	$18,96($sp)
	lw	$19,100($sp)
	addu	$4,$8,$4
	addu	$9,$2,$9
	lw	$2,92($sp)
	sltu	$5,$4,$8
	addu	$2,$9,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$5,$2

	move	$6,$18
	lw	$28,16($sp)
	move	$7,$19
	move	$4,$2
	lw	$25,%call16(__umoddi3)($28)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$5,$3

	sll	$4,$17,1
	move	$20,$2
	lw	$28,16($sp)
	mul	$2,$3,$2
	multu	$20,$20
	move	$23,$3
	srl	$3,$17,31
	lw	$25,%call16(__umoddi3)($28)
	mfhi	$7
	mflo	$6
	sll	$2,$2,1
	addu	$7,$2,$7
	sll	$2,$16,1
	subu	$4,$6,$4
	or	$2,$3,$2
	subu	$2,$7,$2
	sltu	$5,$6,$4
	subu	$5,$2,$5
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$7,$19

	move	$6,$18
	lw	$28,16($sp)
	move	$4,$3
	sw	$3,4($21)
	subu	$3,$17,$2
	subu	$16,$16,$4
	sw	$2,0($21)
	sltu	$17,$17,$3
	subu	$16,$16,$17
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$23
	madd	$16,$20
	move	$7,$19
	mflo	$16
	multu	$3,$20
	mfhi	$3
	mflo	$2
	addu	$3,$16,$3
	subu	$4,$2,$22
	subu	$fp,$3,$fp
	sltu	$5,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$fp,$5

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

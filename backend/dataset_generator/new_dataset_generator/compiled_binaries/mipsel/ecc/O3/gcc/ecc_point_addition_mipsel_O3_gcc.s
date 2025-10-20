	.file	1 "ecc_point_addition.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__umoddi3
	.align	2
	.globl	ecc_point_add
	.set	nomips16
	.set	nomicromips
	.ent	ecc_point_add
	.type	ecc_point_add, @function
ecc_point_add:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	lw	$5,96($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,100($sp)
	sw	$20,40($sp)
	sw	$22,48($sp)
	sw	$19,36($sp)
	sw	$23,52($sp)
	lw	$20,88($sp)
	lw	$22,80($sp)
	lw	$19,92($sp)
	lw	$23,84($sp)
	subu	$8,$20,$6
	subu	$10,$5,$22
	lw	$25,%call16(__umoddi3)($28)
	subu	$3,$19,$7
	sw	$17,28($sp)
	sltu	$11,$20,$8
	sw	$16,24($sp)
	subu	$2,$2,$23
	sw	$6,72($sp)
	subu	$3,$3,$11
	sw	$7,76($sp)
	sltu	$5,$5,$10
	sw	$31,60($sp)
	subu	$2,$2,$5
	sw	$fp,56($sp)
	mult	$3,$10
	sw	$21,44($sp)
	madd	$2,$8
	sw	$18,32($sp)
	move	$17,$6
	.cprestore	16
	lw	$6,104($sp)
	move	$16,$7
	lw	$7,108($sp)
	move	$21,$4
	mflo	$2
	multu	$10,$8
	addu	$20,$17,$20
	mfhi	$11
	mflo	$10
	addu	$11,$2,$11
	move	$4,$10
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$5,$11

	addu	$9,$16,$19
	mul	$4,$3,$2
	lw	$28,16($sp)
	multu	$2,$2
	lw	$6,104($sp)
	move	$18,$3
	lw	$7,108($sp)
	move	$fp,$2
	sltu	$5,$20,$17
	lw	$25,%call16(__umoddi3)($28)
	mfhi	$3
	mflo	$2
	sll	$4,$4,1
	addu	$5,$5,$9
	addu	$3,$4,$3
	subu	$4,$2,$20
	subu	$5,$3,$5
	sltu	$2,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$5,$2

	move	$4,$3
	lw	$28,16($sp)
	subu	$3,$17,$2
	lw	$6,104($sp)
	subu	$16,$16,$4
	lw	$7,108($sp)
	sltu	$17,$17,$3
	sw	$4,4($21)
	subu	$16,$16,$17
	sw	$2,0($21)
	mult	$3,$18
	lw	$25,%call16(__umoddi3)($28)
	madd	$16,$fp
	mflo	$16
	multu	$3,$fp
	mfhi	$9
	mflo	$8
	addu	$9,$16,$9
	subu	$4,$8,$22
	subu	$5,$9,$23
	sltu	$8,$8,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$5,$8

	lw	$31,60($sp)
	move	$4,$2
	lw	$fp,56($sp)
	move	$2,$21
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	sw	$4,8($21)
	sw	$3,12($21)
	lw	$21,44($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_add
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

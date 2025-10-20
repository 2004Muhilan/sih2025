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
	lw	$5,100($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$3,96($sp)
	sw	$20,40($sp)
	sw	$22,48($sp)
	sw	$19,36($sp)
	sw	$23,52($sp)
	lw	$20,92($sp)
	lw	$22,84($sp)
	lw	$19,88($sp)
	lw	$23,80($sp)
	subu	$8,$20,$7
	subu	$10,$5,$22
	lw	$25,%call16(__umoddi3)($28)
	subu	$2,$19,$6
	sw	$17,28($sp)
	sltu	$11,$20,$8
	sw	$16,24($sp)
	subu	$3,$3,$23
	sw	$6,72($sp)
	subu	$2,$2,$11
	sw	$7,76($sp)
	sltu	$5,$5,$10
	sw	$31,60($sp)
	subu	$3,$3,$5
	sw	$fp,56($sp)
	mult	$2,$10
	sw	$21,44($sp)
	madd	$3,$8
	sw	$18,32($sp)
	move	$17,$7
	.cprestore	16
	lw	$7,108($sp)
	move	$16,$6
	lw	$6,104($sp)
	move	$fp,$4
	mflo	$3
	multu	$10,$8
	addu	$20,$17,$20
	mfhi	$10
	mflo	$11
	addu	$10,$3,$10
	move	$5,$11
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$4,$10

	addu	$9,$16,$19
	move	$18,$2
	lw	$28,16($sp)
	mul	$2,$3,$18
	lw	$7,108($sp)
	multu	$3,$3
	lw	$6,104($sp)
	move	$21,$3
	lw	$25,%call16(__umoddi3)($28)
	mfhi	$10
	mflo	$11
	sll	$2,$2,1
	addu	$10,$2,$10
	sltu	$2,$20,$17
	addu	$2,$2,$9
	subu	$5,$11,$20
	subu	$2,$10,$2
	sltu	$4,$11,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$4,$2,$4

	lw	$28,16($sp)
	subu	$16,$16,$2
	sw	$3,4($fp)
	subu	$3,$17,$3
	sw	$2,0($fp)
	sltu	$17,$17,$3
	lw	$7,108($sp)
	subu	$16,$16,$17
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$18
	lw	$6,104($sp)
	madd	$16,$21
	mflo	$16
	multu	$3,$21
	mfhi	$2
	mflo	$3
	addu	$2,$16,$2
	subu	$5,$3,$22
	subu	$23,$2,$23
	sltu	$4,$3,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$4,$23,$4

	lw	$31,60($sp)
	move	$4,$2
	lw	$23,52($sp)
	move	$2,$fp
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	sw	$3,12($fp)
	sw	$4,8($fp)
	lw	$fp,56($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_add
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

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
	lw	$2,100($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,48($sp)
	lw	$22,84($sp)
	sw	$23,52($sp)
	sw	$20,40($sp)
	subu	$5,$2,$22
	sw	$19,36($sp)
	sw	$21,44($sp)
	move	$21,$4
	sw	$16,24($sp)
	sltu	$3,$2,$5
	lw	$23,80($sp)
	move	$16,$6
	lw	$2,96($sp)
	lw	$20,92($sp)
	lw	$19,88($sp)
	subu	$2,$2,$23
	sw	$6,72($sp)
	subu	$4,$20,$7
	sw	$17,28($sp)
	subu	$2,$2,$3
	sw	$7,76($sp)
	subu	$3,$19,$16
	sw	$31,60($sp)
	sltu	$6,$20,$4
	sw	$fp,56($sp)
	subu	$3,$3,$6
	sw	$18,32($sp)
	move	$17,$7
	.cprestore	16
	mult	$3,$5
	lw	$25,%call16(__umoddi3)($28)
	madd	$2,$4
	lw	$7,108($sp)
	lw	$6,104($sp)
	addu	$20,$17,$20
	mflo	$2
	multu	$5,$4
	mfhi	$4
	mflo	$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$2,$4

	addu	$9,$16,$19
	move	$18,$2
	lw	$28,16($sp)
	mul	$4,$3,$18
	lw	$7,108($sp)
	multu	$3,$3
	move	$fp,$3
	sltu	$6,$20,$17
	lw	$25,%call16(__umoddi3)($28)
	addu	$6,$6,$9
	mfhi	$2
	mflo	$3
	sll	$4,$4,1
	addu	$2,$4,$2
	subu	$5,$3,$20
	subu	$2,$2,$6
	lw	$6,104($sp)
	sltu	$4,$3,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$4,$2,$4

	lw	$28,16($sp)
	subu	$16,$16,$2
	sw	$3,4($21)
	subu	$3,$17,$3
	sw	$2,0($21)
	sltu	$17,$17,$3
	subu	$16,$16,$17
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$18
	madd	$16,$fp
	mflo	$16
	multu	$3,$fp
	mfhi	$6
	mflo	$7
	addu	$6,$16,$6
	subu	$5,$7,$22
	subu	$23,$6,$23
	lw	$6,104($sp)
	sltu	$4,$7,$5
	lw	$7,108($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$4,$23,$4

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
	.end	ecc_point_add
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

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
	lw	$2,96($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,52($sp)
	lw	$23,80($sp)
	sw	$fp,56($sp)
	sw	$20,40($sp)
	subu	$5,$2,$23
	sw	$19,36($sp)
	sw	$22,48($sp)
	move	$22,$4
	lw	$fp,84($sp)
	sltu	$3,$2,$5
	lw	$2,100($sp)
	lw	$20,88($sp)
	lw	$19,92($sp)
	subu	$2,$2,$fp
	sw	$17,28($sp)
	subu	$4,$20,$6
	sw	$6,72($sp)
	subu	$2,$2,$3
	sw	$16,24($sp)
	subu	$3,$19,$7
	sw	$7,76($sp)
	move	$17,$6
	sw	$31,60($sp)
	sltu	$6,$20,$4
	sw	$21,44($sp)
	subu	$3,$3,$6
	sw	$18,32($sp)
	.cprestore	16
	move	$16,$7
	mult	$3,$5
	lw	$25,%call16(__umoddi3)($28)
	madd	$2,$4
	lw	$6,104($sp)
	lw	$7,108($sp)
	addu	$20,$17,$20
	mflo	$2
	multu	$5,$4
	mfhi	$5
	mflo	$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$5,$2,$5

	addu	$9,$16,$19
	move	$21,$2
	lw	$28,16($sp)
	mul	$2,$3,$2
	multu	$21,$21
	move	$18,$3
	lw	$25,%call16(__umoddi3)($28)
	mfhi	$7
	mflo	$6
	sll	$2,$2,1
	addu	$7,$2,$7
	sltu	$2,$20,$17
	addu	$2,$2,$9
	subu	$4,$6,$20
	subu	$2,$7,$2
	lw	$7,108($sp)
	sltu	$5,$6,$4
	lw	$6,104($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$2,$5

	lw	$28,16($sp)
	move	$4,$3
	sw	$3,4($22)
	subu	$3,$17,$2
	subu	$16,$16,$4
	sw	$2,0($22)
	sltu	$17,$17,$3
	lw	$6,104($sp)
	subu	$16,$16,$17
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$18
	lw	$7,108($sp)
	madd	$16,$21
	mflo	$16
	multu	$3,$21
	mfhi	$3
	mflo	$2
	addu	$3,$16,$3
	subu	$4,$2,$23
	subu	$fp,$3,$fp
	sltu	$5,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$fp,$5

	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	sw	$2,8($22)
	move	$2,$22
	sw	$3,12($22)
	lw	$22,48($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_add
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

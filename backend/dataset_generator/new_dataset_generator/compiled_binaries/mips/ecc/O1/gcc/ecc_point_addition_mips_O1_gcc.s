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
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$20,$4
	sw	$6,72($sp)
	sw	$7,76($sp)
	move	$16,$6
	move	$17,$7
	lw	$23,80($sp)
	lw	$21,84($sp)
	lw	$22,88($sp)
	lw	$18,92($sp)
	lw	$2,100($sp)
	subu	$5,$2,$21
	sltu	$3,$2,$5
	lw	$2,96($sp)
	subu	$2,$2,$23
	subu	$2,$2,$3
	subu	$4,$18,$7
	sltu	$6,$18,$4
	subu	$3,$22,$16
	subu	$3,$3,$6
	mult	$3,$5
	madd	$2,$4
	mflo	$2
	multu	$5,$4
	mflo	$5
	mfhi	$4
	addu	$4,$2,$4
	lw	$25,%call16(__umoddi3)($28)
	lw	$7,108($sp)
	lw	$6,104($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$3
	move	$fp,$2
	mul	$4,$3,$fp
	sll	$4,$4,1
	multu	$3,$3
	mflo	$3
	mfhi	$2
	addu	$2,$4,$2
	addu	$5,$17,$18
	sltu	$6,$5,$17
	addu	$22,$16,$22
	addu	$6,$6,$22
	subu	$5,$3,$5
	sltu	$4,$3,$5
	subu	$2,$2,$6
	lw	$25,%call16(__umoddi3)($28)
	lw	$7,108($sp)
	lw	$6,104($sp)
	subu	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,0($20)
	sw	$3,4($20)
	subu	$3,$17,$3
	sltu	$17,$17,$3
	subu	$16,$16,$2
	subu	$16,$16,$17
	mult	$3,$fp
	madd	$16,$19
	mflo	$16
	multu	$3,$19
	mflo	$3
	mfhi	$2
	addu	$2,$16,$2
	subu	$5,$3,$21
	sltu	$4,$3,$5
	subu	$2,$2,$23
	lw	$25,%call16(__umoddi3)($28)
	lw	$7,108($sp)
	lw	$6,104($sp)
	subu	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,12($20)
	sw	$2,8($20)
	move	$2,$20
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_add
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

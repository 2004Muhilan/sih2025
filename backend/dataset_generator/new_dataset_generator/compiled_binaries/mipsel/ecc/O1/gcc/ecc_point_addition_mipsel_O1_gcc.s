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
	move	$17,$6
	move	$16,$7
	lw	$21,80($sp)
	lw	$22,84($sp)
	lw	$18,88($sp)
	lw	$23,92($sp)
	lw	$2,96($sp)
	subu	$5,$2,$21
	sltu	$3,$2,$5
	lw	$2,100($sp)
	subu	$2,$2,$22
	subu	$2,$2,$3
	subu	$4,$18,$6
	sltu	$6,$18,$4
	subu	$3,$23,$7
	subu	$3,$3,$6
	mult	$3,$5
	madd	$2,$4
	mflo	$2
	multu	$5,$4
	mflo	$4
	mfhi	$5
	addu	$5,$2,$5
	lw	$25,%call16(__umoddi3)($28)
	lw	$6,104($sp)
	lw	$7,108($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	move	$fp,$3
	mul	$2,$3,$2
	sll	$2,$2,1
	multu	$19,$19
	mflo	$6
	mfhi	$7
	addu	$7,$2,$7
	addu	$4,$17,$18
	sltu	$2,$4,$17
	addu	$23,$16,$23
	addu	$2,$2,$23
	subu	$4,$6,$4
	sltu	$5,$6,$4
	subu	$2,$7,$2
	lw	$25,%call16(__umoddi3)($28)
	lw	$6,104($sp)
	lw	$7,108($sp)
	subu	$5,$2,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,0($20)
	sw	$3,4($20)
	subu	$2,$17,$2
	sltu	$17,$17,$2
	subu	$16,$16,$3
	subu	$16,$16,$17
	mult	$2,$fp
	madd	$16,$19
	mflo	$16
	multu	$2,$19
	mflo	$2
	mfhi	$3
	addu	$3,$16,$3
	subu	$4,$2,$21
	sltu	$5,$2,$4
	subu	$22,$3,$22
	lw	$25,%call16(__umoddi3)($28)
	lw	$6,104($sp)
	lw	$7,108($sp)
	subu	$5,$22,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,8($20)
	sw	$3,12($20)
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

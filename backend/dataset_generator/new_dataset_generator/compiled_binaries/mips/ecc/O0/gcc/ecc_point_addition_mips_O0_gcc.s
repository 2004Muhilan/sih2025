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
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$5,92($fp)
	lw	$4,88($fp)
	lw	$7,76($fp)
	lw	$6,72($fp)
	subu	$3,$5,$7
	sltu	$8,$5,$3
	subu	$2,$4,$6
	subu	$4,$2,$8
	move	$2,$4
	move	$7,$3
	move	$6,$2
	lw	$5,84($fp)
	lw	$4,80($fp)
	lw	$9,68($fp)
	lw	$8,64($fp)
	subu	$3,$5,$9
	sltu	$10,$5,$3
	subu	$2,$4,$8
	subu	$4,$2,$10
	move	$2,$4
	mul	$5,$6,$3
	mul	$4,$2,$7
	addu	$4,$5,$4
	multu	$7,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,100($fp)
	lw	$6,96($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,28($fp)
	sw	$2,24($fp)
	lw	$3,24($fp)
	lw	$2,28($fp)
	mul	$3,$3,$2
	lw	$4,24($fp)
	lw	$2,28($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$2,28($fp)
	multu	$2,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$7,68($fp)
	lw	$6,64($fp)
	subu	$5,$3,$7
	sltu	$8,$3,$5
	subu	$4,$2,$6
	subu	$2,$4,$8
	move	$4,$2
	lw	$7,84($fp)
	lw	$6,80($fp)
	subu	$3,$5,$7
	sltu	$8,$5,$3
	subu	$2,$4,$6
	subu	$4,$2,$8
	move	$2,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(__umoddi3)($28)
	lw	$7,100($fp)
	lw	$6,96($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,36($fp)
	sw	$2,32($fp)
	lw	$5,68($fp)
	lw	$4,64($fp)
	lw	$7,36($fp)
	lw	$6,32($fp)
	subu	$3,$5,$7
	sltu	$8,$5,$3
	subu	$2,$4,$6
	subu	$4,$2,$8
	move	$2,$4
	lw	$4,28($fp)
	mul	$5,$4,$2
	lw	$4,24($fp)
	mul	$4,$4,$3
	addu	$4,$5,$4
	lw	$5,28($fp)
	multu	$5,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$7,76($fp)
	lw	$6,72($fp)
	subu	$5,$3,$7
	sltu	$8,$3,$5
	subu	$4,$2,$6
	subu	$2,$4,$8
	move	$4,$2
	lw	$2,%call16(__umoddi3)($28)
	lw	$7,100($fp)
	lw	$6,96($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,44($fp)
	sw	$2,40($fp)
	lw	$2,56($fp)
	lw	$6,32($fp)
	lw	$5,36($fp)
	lw	$4,40($fp)
	lw	$3,44($fp)
	sw	$6,0($2)
	sw	$5,4($2)
	sw	$4,8($2)
	sw	$3,12($2)
	lw	$2,56($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ecc_point_add
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

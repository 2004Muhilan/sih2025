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
	.frame	$fp,64,$31		# vars= 24, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$17,52($sp)
	sw	$16,48($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,64($fp)
	sw	$6,72($fp)
	sw	$7,76($fp)
	lw	$5,76($fp)
	lw	$4,72($fp)
	lw	$3,76($fp)
	lw	$2,72($fp)
	mul	$7,$4,$3
	mul	$6,$2,$5
	addu	$12,$7,$6
	multu	$5,$3
	mflo	$7
	mfhi	$6
	addu	$2,$12,$6
	move	$6,$2
	move	$3,$7
	move	$2,$6
	srl	$4,$3,31
	sll	$10,$2,1
	or	$10,$4,$10
	sll	$11,$3,1
	move	$3,$11
	move	$2,$10
	addu	$5,$3,$7
	sltu	$10,$5,$3
	addu	$4,$2,$6
	addu	$2,$10,$4
	move	$4,$2
	lw	$7,92($fp)
	lw	$6,88($fp)
	addu	$3,$5,$7
	sltu	$10,$3,$5
	addu	$2,$4,$6
	addu	$4,$10,$2
	move	$2,$4
	move	$11,$3
	move	$10,$2
	lw	$3,84($fp)
	lw	$2,80($fp)
	srl	$4,$3,31
	sll	$8,$2,1
	or	$8,$4,$8
	sll	$9,$3,1
	lw	$2,%call16(__udivdi3)($28)
	move	$7,$9
	move	$6,$8
	move	$5,$11
	move	$4,$10
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
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
	lw	$5,76($fp)
	lw	$4,72($fp)
	srl	$6,$5,31
	sll	$16,$4,1
	or	$16,$6,$16
	sll	$17,$5,1
	subu	$5,$3,$17
	sltu	$6,$3,$5
	subu	$4,$2,$16
	subu	$2,$4,$6
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
	lw	$5,76($fp)
	lw	$4,72($fp)
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
	lw	$7,84($fp)
	lw	$6,80($fp)
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
	lw	$2,64($fp)
	lw	$6,32($fp)
	lw	$5,36($fp)
	lw	$4,40($fp)
	lw	$3,44($fp)
	sw	$6,0($2)
	sw	$5,4($2)
	sw	$4,8($2)
	sw	$3,12($2)
	lw	$2,64($fp)
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$17,52($sp)
	lw	$16,48($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ecc_point_double
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

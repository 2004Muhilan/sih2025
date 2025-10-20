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
	mul	$3,$7,$6
	multu	$6,$6
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	mfhi	$9
	sw	$21,44($sp)
	mflo	$8
	sw	$20,40($sp)
	lw	$21,84($sp)
	sll	$3,$3,1
	lw	$20,80($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,48($sp)
	move	$22,$4
	sll	$2,$21,1
	sw	$18,32($sp)
	srl	$5,$20,31
	sw	$7,76($sp)
	addu	$3,$3,$9
	sw	$19,36($sp)
	srl	$4,$8,31
	sw	$6,72($sp)
	move	$9,$3
	sw	$31,60($sp)
	move	$18,$7
	sw	$fp,56($sp)
	or	$7,$5,$2
	sw	$23,52($sp)
	sll	$2,$8,1
	sw	$17,28($sp)
	sll	$3,$3,1
	sw	$16,24($sp)
	addu	$5,$2,$8
	.cprestore	16
	or	$3,$4,$3
	lw	$4,88($sp)
	addu	$3,$3,$9
	lw	$25,%call16(__udivdi3)($28)
	sltu	$2,$5,$2
	lw	$16,96($sp)
	addu	$2,$2,$3
	lw	$3,92($sp)
	addu	$4,$5,$4
	lw	$17,100($sp)
	move	$19,$6
	addu	$2,$2,$3
	sltu	$5,$4,$5
	sll	$6,$20,1
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$5,$2

	move	$6,$16
	lw	$28,16($sp)
	move	$7,$17
	move	$4,$2
	lw	$25,%call16(__umoddi3)($28)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$5,$3

	srl	$8,$19,31
	mul	$4,$3,$2
	lw	$28,16($sp)
	multu	$2,$2
	move	$fp,$3
	move	$23,$2
	sll	$5,$18,1
	lw	$25,%call16(__umoddi3)($28)
	mfhi	$3
	mflo	$2
	sll	$4,$4,1
	or	$5,$8,$5
	move	$6,$16
	move	$7,$17
	addu	$3,$4,$3
	sll	$4,$19,1
	subu	$5,$3,$5
	subu	$4,$2,$4
	sltu	$2,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$5,$2

	move	$6,$16
	move	$4,$3
	lw	$28,16($sp)
	subu	$3,$19,$2
	sw	$2,0($22)
	subu	$18,$18,$4
	sw	$4,4($22)
	sltu	$19,$19,$3
	subu	$18,$18,$19
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$fp
	madd	$18,$23
	move	$7,$17
	mflo	$18
	multu	$3,$23
	mfhi	$3
	mflo	$2
	addu	$3,$18,$3
	subu	$4,$2,$20
	subu	$5,$3,$21
	sltu	$2,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$5,$5,$2

	lw	$31,60($sp)
	move	$4,$2
	lw	$fp,56($sp)
	move	$2,$22
	lw	$23,52($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	sw	$4,8($22)
	sw	$3,12($22)
	lw	$22,48($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_double
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

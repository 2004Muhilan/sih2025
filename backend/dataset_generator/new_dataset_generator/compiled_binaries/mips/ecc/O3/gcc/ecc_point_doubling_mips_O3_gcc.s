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
	mul	$3,$6,$7
	multu	$7,$7
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	mfhi	$8
	sw	$21,44($sp)
	mflo	$9
	sw	$20,40($sp)
	lw	$21,80($sp)
	sll	$3,$3,1
	lw	$20,84($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,32($sp)
	move	$18,$6
	sll	$2,$21,1
	sw	$6,72($sp)
	srl	$5,$20,31
	sw	$22,48($sp)
	addu	$3,$3,$8
	sw	$19,36($sp)
	or	$6,$5,$2
	sw	$7,76($sp)
	sll	$2,$9,1
	sw	$31,60($sp)
	srl	$5,$9,31
	sw	$fp,56($sp)
	move	$8,$3
	sw	$23,52($sp)
	sll	$3,$3,1
	sw	$17,28($sp)
	move	$22,$4
	sw	$16,24($sp)
	addu	$4,$2,$9
	.cprestore	16
	or	$3,$5,$3
	lw	$5,92($sp)
	addu	$3,$3,$8
	lw	$25,%call16(__udivdi3)($28)
	sltu	$2,$4,$2
	lw	$17,100($sp)
	addu	$2,$2,$3
	lw	$3,88($sp)
	addu	$5,$4,$5
	lw	$16,96($sp)
	move	$19,$7
	addu	$2,$2,$3
	sltu	$4,$5,$4
	sll	$7,$20,1
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$4,$4,$2

	move	$7,$17
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$3
	lw	$25,%call16(__umoddi3)($28)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$4,$2

	srl	$8,$19,31
	move	$fp,$2
	lw	$28,16($sp)
	mul	$5,$3,$fp
	multu	$3,$3
	move	$23,$3
	sll	$4,$18,1
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$17
	mfhi	$2
	mflo	$3
	sll	$5,$5,1
	or	$4,$8,$4
	move	$6,$16
	addu	$2,$5,$2
	sll	$5,$19,1
	subu	$4,$2,$4
	subu	$5,$3,$5
	sltu	$2,$3,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$4,$4,$2

	move	$7,$17
	lw	$28,16($sp)
	subu	$18,$18,$2
	sw	$3,4($22)
	subu	$3,$19,$3
	sw	$2,0($22)
	move	$6,$16
	sltu	$19,$19,$3
	subu	$18,$18,$19
	lw	$25,%call16(__umoddi3)($28)
	mult	$3,$fp
	madd	$18,$23
	mflo	$18
	multu	$3,$23
	mfhi	$2
	mflo	$3
	addu	$2,$18,$2
	subu	$5,$3,$20
	subu	$21,$2,$21
	sltu	$4,$3,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	subu	$4,$21,$4

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
	sw	$3,12($22)
	sw	$4,8($22)
	lw	$22,48($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	ecc_point_double
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

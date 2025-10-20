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
	lw	$16,96($sp)
	lw	$17,100($sp)
	move	$19,$6
	move	$18,$7
	lw	$21,80($sp)
	lw	$22,84($sp)
	mul	$3,$7,$6
	sll	$3,$3,1
	multu	$6,$6
	mflo	$4
	mfhi	$5
	addu	$3,$3,$5
	move	$5,$3
	srl	$2,$4,31
	sll	$3,$3,1
	or	$3,$2,$3
	sll	$2,$4,1
	addu	$6,$2,$4
	sltu	$2,$6,$2
	addu	$3,$3,$5
	addu	$2,$2,$3
	lw	$4,88($sp)
	addu	$4,$6,$4
	sltu	$5,$4,$6
	lw	$3,92($sp)
	addu	$2,$2,$3
	srl	$7,$21,31
	sll	$3,$22,1
	lw	$25,%call16(__udivdi3)($28)
	sll	$6,$21,1
	or	$7,$7,$3
	addu	$5,$5,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$16
	move	$7,$17
	move	$4,$2
	move	$5,$3
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$fp,$3
	move	$23,$2
	mul	$2,$3,$2
	sll	$2,$2,1
	multu	$23,$23
	mflo	$6
	mfhi	$7
	addu	$7,$2,$7
	srl	$3,$19,31
	sll	$2,$18,1
	or	$2,$3,$2
	sll	$4,$19,1
	subu	$4,$6,$4
	sltu	$5,$6,$4
	subu	$2,$7,$2
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$16
	move	$7,$17
	subu	$5,$2,$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,0($20)
	sw	$3,4($20)
	subu	$2,$19,$2
	sltu	$19,$19,$2
	subu	$18,$18,$3
	subu	$18,$18,$19
	mult	$2,$fp
	madd	$18,$23
	mflo	$18
	multu	$2,$23
	mflo	$2
	mfhi	$3
	addu	$3,$18,$3
	subu	$4,$2,$21
	sltu	$5,$2,$4
	subu	$22,$3,$22
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$16
	move	$7,$17
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
	.end	ecc_point_double
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

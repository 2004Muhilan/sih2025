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
	lw	$17,100($sp)
	lw	$16,96($sp)
	move	$18,$6
	move	$19,$7
	lw	$22,80($sp)
	lw	$21,84($sp)
	mul	$3,$6,$7
	sll	$3,$3,1
	multu	$7,$7
	mflo	$7
	mfhi	$6
	addu	$3,$3,$6
	move	$6,$3
	srl	$2,$7,31
	sll	$3,$3,1
	or	$3,$2,$3
	sll	$2,$7,1
	addu	$4,$2,$7
	sltu	$2,$4,$2
	addu	$3,$3,$6
	addu	$2,$2,$3
	lw	$5,92($sp)
	addu	$5,$4,$5
	sltu	$4,$5,$4
	lw	$3,88($sp)
	addu	$2,$2,$3
	srl	$6,$21,31
	sll	$3,$22,1
	lw	$25,%call16(__udivdi3)($28)
	or	$6,$6,$3
	sll	$7,$21,1
	addu	$4,$4,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$17
	move	$6,$16
	move	$5,$3
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$23,$3
	move	$fp,$2
	mul	$4,$3,$fp
	sll	$4,$4,1
	multu	$3,$3
	mflo	$3
	mfhi	$2
	addu	$2,$4,$2
	srl	$4,$19,31
	sll	$6,$18,1
	or	$6,$4,$6
	sll	$5,$19,1
	subu	$5,$3,$5
	sltu	$4,$3,$5
	subu	$2,$2,$6
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$17
	move	$6,$16
	subu	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,0($20)
	sw	$3,4($20)
	subu	$3,$19,$3
	sltu	$19,$19,$3
	subu	$18,$18,$2
	subu	$18,$18,$19
	mult	$3,$fp
	madd	$18,$23
	mflo	$18
	multu	$3,$23
	mflo	$3
	mfhi	$2
	addu	$2,$18,$2
	subu	$5,$3,$21
	sltu	$4,$3,$5
	subu	$2,$2,$22
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$17
	move	$6,$16
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
	.end	ecc_point_double
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

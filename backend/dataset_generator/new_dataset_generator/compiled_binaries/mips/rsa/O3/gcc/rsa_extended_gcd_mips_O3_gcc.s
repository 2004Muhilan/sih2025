	.file	1 "rsa_extended_gcd.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__moddi3
	.globl	__divdi3
	.align	2
	.globl	rsa_extended_gcd
	.set	nomips16
	.set	nomicromips
	.ent	rsa_extended_gcd
	.type	rsa_extended_gcd, @function
rsa_extended_gcd:
	.frame	$sp,136,$31		# vars= 64, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-136
	addiu	$28,$28,%lo(__gnu_local_gp)
	or	$3,$4,$5
	sw	$18,104($sp)
	move	$8,$7
	lw	$18,%got(__stack_chk_guard)($28)
	sw	$22,120($sp)
	sw	$21,116($sp)
	sw	$20,112($sp)
	move	$20,$6
	sw	$17,100($sp)
	move	$17,$4
	sw	$16,96($sp)
	move	$16,$5
	sw	$31,132($sp)
	sw	$fp,128($sp)
	sw	$23,124($sp)
	sw	$19,108($sp)
	.cprestore	24
	lw	$2,0($18)
	lw	$22,152($sp)
	lw	$21,156($sp)
	sw	$2,92($sp)
	bne	$3,$0,$L17
	move	$23,$0

	li	$fp,1			# 0x1
$L2:
	lw	$5,92($sp)
	lw	$3,0($18)
	sw	$16,4($22)
	sw	$17,0($22)
	sw	$23,0($21)
	bne	$5,$3,$L18
	sw	$fp,4($21)

	lw	$31,132($sp)
	move	$2,$20
	lw	$fp,128($sp)
	move	$3,$8
	lw	$23,124($sp)
	lw	$22,120($sp)
	lw	$21,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,136

$L17:
	lw	$25,%call16(__moddi3)($28)
	move	$6,$4
	move	$7,$5
	sw	$8,40($sp)
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	move	$5,$8

	move	$13,$2
	lw	$28,24($sp)
	move	$19,$3
	or	$3,$3,$13
	move	$23,$13
	beq	$3,$0,$L12
	move	$fp,$19

	lw	$25,%call16(__moddi3)($28)
	move	$6,$13
	sw	$13,44($sp)
	move	$7,$19
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	move	$5,$16

	move	$12,$2
	lw	$28,24($sp)
	or	$2,$3,$12
	lw	$8,40($sp)
	sw	$12,36($sp)
	bne	$2,$0,$L19
	move	$10,$3

	move	$19,$0
	li	$11,1			# 0x1
$L6:
	lw	$25,%call16(__divdi3)($28)
	move	$6,$17
	sw	$10,44($sp)
	move	$7,$16
	sw	$11,40($sp)
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$5,$8

	move	$17,$23
	lw	$11,40($sp)
	mult	$19,$3
	lw	$10,44($sp)
	move	$16,$fp
	lw	$28,24($sp)
	move	$23,$19
	madd	$2,$11
	move	$fp,$11
	mflo	$2
	multu	$3,$11
	lw	$3,36($sp)
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$2,$10,$5
	subu	$3,$3,$4
	sltu	$10,$10,$2
	.option	pic0
	b	$L4
	.option	pic2
	subu	$3,$3,$10

$L12:
	move	$3,$0
	li	$2,1			# 0x1
$L4:
	move	$20,$17
	move	$8,$16
	move	$17,$3
	.option	pic0
	b	$L2
	.option	pic2
	move	$16,$2

$L19:
	lw	$25,%call16(__moddi3)($28)
	move	$4,$23
	sw	$8,52($sp)
	move	$6,$12
	sw	$23,40($sp)
	move	$7,$3
	sw	$3,48($sp)
	move	$5,$19
	sw	$12,60($sp)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,56($sp)

	move	$23,$2
	lw	$28,24($sp)
	or	$2,$3,$23
	lw	$13,40($sp)
	lw	$10,48($sp)
	move	$fp,$3
	lw	$8,52($sp)
	move	$15,$23
	beq	$2,$0,$L14
	move	$14,$3

	lw	$12,60($sp)
	move	$5,$10
	lw	$25,%call16(__moddi3)($28)
	move	$6,$23
	sw	$8,64($sp)
	move	$7,$3
	sw	$10,36($sp)
	move	$4,$12
	sw	$13,68($sp)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$12,40($sp)

	move	$6,$23
	move	$4,$2
	addiu	$2,$sp,80
	move	$7,$fp
	sw	$2,20($sp)
	addiu	$2,$sp,72
	move	$5,$3
	.option	pic0
	jal	rsa_extended_gcd
	.option	pic2
	sw	$2,16($sp)

	move	$6,$23
	lw	$28,24($sp)
	move	$7,$fp
	lw	$9,76($sp)
	move	$23,$2
	lw	$12,40($sp)
	lw	$11,36($sp)
	lw	$25,%call16(__divdi3)($28)
	lw	$fp,72($sp)
	move	$4,$12
	move	$5,$11
	sw	$9,44($sp)
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sw	$3,52($sp)

	lw	$9,44($sp)
	mult	$fp,$3
	lw	$24,84($sp)
	lw	$15,80($sp)
	madd	$2,$9
	lw	$28,24($sp)
	lw	$11,36($sp)
	lw	$13,68($sp)
	lw	$12,40($sp)
	mflo	$5
	lw	$25,%call16(__divdi3)($28)
	multu	$3,$9
	sw	$9,48($sp)
	move	$4,$13
	sw	$13,44($sp)
	move	$7,$11
	move	$6,$12
	mfhi	$2
	mflo	$3
	addu	$2,$5,$2
	subu	$14,$24,$3
	subu	$15,$15,$2
	sltu	$2,$24,$14
	sw	$14,40($sp)
	subu	$15,$15,$2
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sw	$15,36($sp)

	lw	$15,36($sp)
	lw	$14,40($sp)
	lw	$9,48($sp)
	mult	$15,$3
	lw	$28,24($sp)
	madd	$2,$14
	lw	$10,52($sp)
	lw	$13,44($sp)
	lw	$8,64($sp)
	sw	$23,36($sp)
	mflo	$2
	multu	$3,$14
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$11,$9,$5
	subu	$fp,$fp,$4
	sltu	$9,$9,$11
	subu	$9,$fp,$9
$L8:
	lw	$25,%call16(__divdi3)($28)
	move	$7,$19
	sw	$8,60($sp)
	move	$4,$17
	sw	$11,56($sp)
	move	$5,$16
	sw	$9,52($sp)
	move	$6,$13
	sw	$14,48($sp)
	sw	$15,44($sp)
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sw	$10,40($sp)

	lw	$9,52($sp)
	lw	$11,56($sp)
	lw	$10,40($sp)
	mult	$9,$3
	lw	$14,48($sp)
	madd	$2,$11
	lw	$15,44($sp)
	move	$fp,$10
	lw	$23,36($sp)
	move	$10,$11
	lw	$28,24($sp)
	lw	$8,60($sp)
	mflo	$2
	sw	$9,36($sp)
	multu	$3,$11
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$11,$14,$5
	subu	$19,$15,$4
	sltu	$14,$14,$11
	.option	pic0
	b	$L6
	.option	pic2
	subu	$19,$19,$14

$L14:
	move	$9,$0
	.option	pic0
	b	$L8
	.option	pic2
	li	$11,1			# 0x1

$L18:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	rsa_extended_gcd
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

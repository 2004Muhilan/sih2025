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
	.frame	$sp,104,$31		# vars= 32, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$9,$6
	sw	$22,88($sp)
	move	$8,$7
	lw	$22,%got(__stack_chk_guard)($28)
	sw	$fp,96($sp)
	sw	$23,92($sp)
	sw	$17,68($sp)
	move	$17,$5
	sw	$16,64($sp)
	move	$16,$4
	sw	$31,100($sp)
	sw	$21,84($sp)
	sw	$20,80($sp)
	sw	$19,76($sp)
	sw	$18,72($sp)
	.cprestore	24
	lw	$2,0($22)
	lw	$fp,120($sp)
	lw	$23,124($sp)
	sw	$2,60($sp)
	or	$2,$4,$5
	beq	$2,$0,$L5
	move	$19,$0

	lw	$25,%call16(__moddi3)($28)
	move	$6,$4
	move	$7,$5
	sw	$9,36($sp)
	move	$4,$9
	sw	$8,32($sp)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	move	$5,$8

	addiu	$4,$sp,48
	move	$6,$16
	sw	$4,20($sp)
	addiu	$4,$sp,40
	move	$7,$17
	sw	$4,16($sp)
	move	$5,$3
	.option	pic0
	jal	rsa_extended_gcd
	.option	pic2
	move	$4,$2

	move	$6,$16
	lw	$28,24($sp)
	move	$7,$17
	lw	$9,36($sp)
	move	$20,$3
	lw	$8,32($sp)
	move	$21,$2
	lw	$19,40($sp)
	lw	$25,%call16(__divdi3)($28)
	move	$4,$9
	lw	$18,44($sp)
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$5,$8

	move	$9,$21
	mult	$19,$3
	lw	$16,48($sp)
	madd	$2,$18
	lw	$28,24($sp)
	move	$8,$20
	mflo	$2
	multu	$3,$18
	lw	$3,52($sp)
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$17,$3,$5
	subu	$16,$16,$4
	sltu	$3,$3,$17
	subu	$16,$16,$3
$L2:
	lw	$3,60($sp)
	lw	$2,0($22)
	sw	$16,0($fp)
	sw	$17,4($fp)
	sw	$19,0($23)
	beq	$3,$2,$L4
	sw	$18,4($23)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	.option	pic0
	b	$L2
	.option	pic2
	li	$18,1			# 0x1

$L4:
	lw	$31,100($sp)
	move	$2,$9
	lw	$fp,96($sp)
	move	$3,$8
	lw	$23,92($sp)
	lw	$22,88($sp)
	lw	$21,84($sp)
	lw	$20,80($sp)
	lw	$19,76($sp)
	lw	$18,72($sp)
	lw	$17,68($sp)
	lw	$16,64($sp)
	jr	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	rsa_extended_gcd
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

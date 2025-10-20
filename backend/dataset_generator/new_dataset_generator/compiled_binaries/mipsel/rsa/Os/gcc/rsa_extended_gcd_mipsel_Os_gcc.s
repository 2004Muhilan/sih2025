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
	move	$8,$6
	sw	$23,92($sp)
	lw	$23,%got(__stack_chk_guard)($28)
	lw	$10,120($sp)
	sw	$fp,96($sp)
	sw	$18,72($sp)
	move	$18,$7
	sw	$17,68($sp)
	move	$17,$4
	sw	$16,64($sp)
	move	$16,$5
	sw	$31,100($sp)
	sw	$22,88($sp)
	sw	$21,84($sp)
	sw	$20,80($sp)
	sw	$19,76($sp)
	.cprestore	24
	lw	$2,0($23)
	lw	$fp,124($sp)
	sw	$2,60($sp)
	or	$2,$4,$5
	beq	$2,$0,$L5
	li	$19,1			# 0x1

	lw	$25,%call16(__moddi3)($28)
	move	$6,$4
	sw	$10,36($sp)
	move	$4,$8
	move	$7,$5
	sw	$8,32($sp)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	move	$5,$18

	addiu	$4,$sp,48
	move	$6,$17
	sw	$4,20($sp)
	addiu	$4,$sp,40
	move	$7,$16
	sw	$4,16($sp)
	move	$5,$3
	.option	pic0
	jal	rsa_extended_gcd
	.option	pic2
	move	$4,$2

	move	$6,$17
	lw	$28,24($sp)
	move	$7,$16
	lw	$8,32($sp)
	move	$5,$18
	lw	$20,44($sp)
	move	$21,$3
	lw	$19,40($sp)
	move	$22,$2
	lw	$25,%call16(__divdi3)($28)
	move	$4,$8
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$18,$21

	mult	$20,$2
	lw	$16,52($sp)
	madd	$3,$19
	lw	$28,24($sp)
	lw	$10,36($sp)
	mflo	$3
	multu	$2,$19
	mfhi	$9
	mflo	$8
	addu	$9,$3,$9
	lw	$3,48($sp)
	subu	$16,$16,$9
	subu	$17,$3,$8
	move	$8,$22
	sltu	$3,$3,$17
	subu	$16,$16,$3
$L2:
	lw	$3,60($sp)
	lw	$2,0($23)
	sw	$17,0($10)
	sw	$16,4($10)
	sw	$19,0($fp)
	beq	$3,$2,$L4
	sw	$20,4($fp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	.option	pic0
	b	$L2
	.option	pic2
	move	$20,$0

$L4:
	lw	$31,100($sp)
	move	$3,$18
	lw	$fp,96($sp)
	move	$2,$8
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

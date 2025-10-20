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
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$fp,96($sp)
	sw	$23,92($sp)
	sw	$22,88($sp)
	sw	$21,84($sp)
	sw	$20,80($sp)
	sw	$19,76($sp)
	sw	$18,72($sp)
	sw	$17,68($sp)
	sw	$16,64($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$16,$4
	move	$17,$5
	move	$19,$6
	move	$18,$7
	lw	$21,120($sp)
	lw	$20,124($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($sp)
	or	$2,$4,$5
	bne	$2,$0,$L7
	lw	$25,%call16(__moddi3)($28)

	move	$23,$0
	li	$22,1			# 0x1
$L2:
	sw	$16,0($21)
	sw	$17,4($21)
	sw	$23,0($20)
	sw	$22,4($20)
	lw	$3,60($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L8
	move	$2,$19

	move	$3,$18
	lw	$31,100($sp)
	lw	$fp,96($sp)
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

$L7:
	move	$6,$4
	move	$7,$5
	move	$4,$19
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addiu	$4,$sp,48
	sw	$4,20($sp)
	addiu	$4,$sp,40
	sw	$4,16($sp)
	move	$6,$16
	move	$7,$17
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	rsa_extended_gcd
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$fp,$2
	sw	$3,36($sp)
	lw	$23,40($sp)
	lw	$22,44($sp)
	lw	$25,%call16(__divdi3)($28)
	move	$6,$16
	move	$7,$17
	move	$4,$19
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,24($sp)
	mult	$23,$3
	madd	$2,$22
	mflo	$2
	multu	$3,$22
	mflo	$5
	mfhi	$4
	addu	$4,$2,$4
	lw	$2,52($sp)
	subu	$17,$2,$5
	sltu	$2,$2,$17
	lw	$16,48($sp)
	subu	$16,$16,$4
	subu	$16,$16,$2
	move	$19,$fp
	.option	pic0
	b	$L2
	.option	pic2
	lw	$18,36($sp)

$L8:
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

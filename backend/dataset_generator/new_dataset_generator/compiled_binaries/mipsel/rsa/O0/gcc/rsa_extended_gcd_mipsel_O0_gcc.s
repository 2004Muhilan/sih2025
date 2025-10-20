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
	.frame	$fp,88,$31		# vars= 40, regs= 4/0, args= 24, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,88($fp)
	sw	$5,92($fp)
	sw	$6,96($fp)
	sw	$7,100($fp)
	lw	$2,104($fp)
	sw	$2,36($fp)
	lw	$2,108($fp)
	sw	$2,32($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($fp)
	lw	$2,88($fp)
	lw	$3,92($fp)
	or	$2,$2,$3
	bne	$2,$0,$L2
	nop

	lw	$2,36($fp)
	move	$4,$0
	move	$5,$0
	sw	$4,0($2)
	sw	$5,4($2)
	lw	$4,32($fp)
	li	$2,1			# 0x1
	move	$3,$0
	sw	$2,0($4)
	sw	$3,4($4)
	lw	$2,96($fp)
	lw	$3,100($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L2:
	lw	$2,96($fp)
	lw	$3,100($fp)
	lw	$8,%call16(__moddi3)($28)
	lw	$6,88($fp)
	lw	$7,92($fp)
	move	$4,$2
	move	$5,$3
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$4,$fp,48
	sw	$4,20($sp)
	addiu	$4,$fp,40
	sw	$4,16($sp)
	lw	$6,88($fp)
	lw	$7,92($fp)
	move	$4,$2
	move	$5,$3
	.option	pic0
	jal	rsa_extended_gcd
	nop

	.option	pic2
	lw	$28,24($fp)
	sw	$2,56($fp)
	sw	$3,60($fp)
	lw	$16,48($fp)
	lw	$17,52($fp)
	lw	$2,%call16(__divdi3)($28)
	lw	$6,88($fp)
	lw	$7,92($fp)
	lw	$4,96($fp)
	lw	$5,100($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$4,$2
	move	$5,$3
	lw	$2,40($fp)
	lw	$3,44($fp)
	mul	$7,$5,$2
	mul	$6,$3,$4
	addu	$6,$7,$6
	multu	$4,$2
	mflo	$4
	mfhi	$5
	addu	$2,$6,$5
	move	$5,$2
	subu	$2,$16,$4
	sltu	$6,$16,$2
	subu	$3,$17,$5
	subu	$4,$3,$6
	move	$3,$4
	lw	$4,36($fp)
	sw	$2,0($4)
	sw	$3,4($4)
	lw	$2,40($fp)
	lw	$3,44($fp)
	lw	$4,32($fp)
	sw	$2,0($4)
	sw	$3,4($4)
	lw	$2,56($fp)
	lw	$3,60($fp)
$L4:
	move	$4,$2
	move	$5,$3
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,68($fp)
	lw	$2,0($2)
	beq	$3,$2,$L5
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	move	$2,$4
	move	$3,$5
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_extended_gcd
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

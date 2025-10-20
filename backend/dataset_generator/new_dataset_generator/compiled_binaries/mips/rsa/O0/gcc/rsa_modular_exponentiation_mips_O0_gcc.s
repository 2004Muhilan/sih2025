	.file	1 "rsa_modular_exponentiation.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__umoddi3
	.align	2
	.globl	rsa_mod_exp
	.set	nomips16
	.set	nomicromips
	.ent	rsa_mod_exp
	.type	rsa_mod_exp, @function
rsa_mod_exp:
	.frame	$fp,56,$31		# vars= 8, regs= 6/0, args= 16, gp= 8
	.mask	0xc00f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,60($fp)
	sw	$4,56($fp)
	sw	$7,68($fp)
	sw	$6,64($fp)
	li	$3,1			# 0x1
	move	$2,$0
	sw	$3,28($fp)
	sw	$2,24($fp)
	lw	$3,60($fp)
	lw	$2,56($fp)
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,60($fp)
	sw	$2,56($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	lw	$2,64($fp)
	andi	$18,$2,0
	lw	$2,68($fp)
	andi	$19,$2,0x1
	move	$2,$18
	or	$2,$2,$19
	beq	$2,$0,$L3
	nop

	lw	$3,24($fp)
	lw	$2,60($fp)
	mul	$3,$3,$2
	lw	$4,56($fp)
	lw	$2,28($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$3,28($fp)
	lw	$2,60($fp)
	multu	$3,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,28($fp)
	sw	$2,24($fp)
$L3:
	lw	$3,56($fp)
	lw	$2,60($fp)
	mul	$3,$3,$2
	lw	$4,56($fp)
	lw	$2,60($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$2,60($fp)
	multu	$2,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,60($fp)
	sw	$2,56($fp)
	lw	$2,64($fp)
	sll	$2,$2,31
	lw	$3,68($fp)
	srl	$17,$3,1
	or	$17,$2,$17
	lw	$2,64($fp)
	srl	$16,$2,1
	sw	$17,68($fp)
	sw	$16,64($fp)
$L2:
	lw	$2,64($fp)
	lw	$3,68($fp)
	or	$2,$2,$3
	bne	$2,$0,$L5
	nop

	lw	$3,28($fp)
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_mod_exp
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

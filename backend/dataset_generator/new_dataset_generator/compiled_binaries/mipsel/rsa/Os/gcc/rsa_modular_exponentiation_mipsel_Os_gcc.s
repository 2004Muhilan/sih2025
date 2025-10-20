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
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$23,56($sp)
	li	$23,1			# 0x1
	sw	$22,52($sp)
	sw	$21,48($sp)
	move	$21,$7
	sw	$20,44($sp)
	move	$20,$6
	sw	$17,32($sp)
	move	$17,$0
	sw	$16,28($sp)
	.cprestore	16
	sw	$31,60($sp)
	lw	$18,80($sp)
	lw	$19,84($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$7,$19

	lw	$28,16($sp)
	move	$16,$3
	move	$22,$2
$L2:
	or	$2,$20,$21
	bne	$2,$0,$L5
	andi	$2,$20,0x1

	lw	$31,60($sp)
	move	$2,$23
	lw	$22,52($sp)
	move	$3,$17
	lw	$23,56($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

$L5:
	beq	$2,$0,$L3
	mult	$17,$22

	lw	$25,%call16(__umoddi3)($28)
	madd	$16,$23
	move	$6,$18
	move	$7,$19
	mflo	$17
	multu	$22,$23
	mfhi	$5
	mflo	$4
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$5,$17,$5

	lw	$28,16($sp)
	move	$17,$3
	move	$23,$2
$L3:
	mul	$16,$16,$22
	lw	$25,%call16(__umoddi3)($28)
	multu	$22,$22
	move	$6,$18
	move	$7,$19
	srl	$20,$20,1
	mfhi	$5
	mflo	$4
	sll	$16,$16,1
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$5,$16,$5

	move	$22,$2
	lw	$28,16($sp)
	sll	$2,$21,31
	move	$16,$3
	srl	$21,$21,1
	.option	pic0
	b	$L2
	.option	pic2
	or	$20,$2,$20

	.set	macro
	.set	reorder
	.end	rsa_mod_exp
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

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
	move	$22,$0
	sw	$21,48($sp)
	sw	$20,44($sp)
	move	$20,$7
	sw	$17,32($sp)
	move	$17,$6
	sw	$16,28($sp)
	.cprestore	16
	sw	$31,60($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$28,16($sp)
	move	$16,$2
	move	$21,$3
$L2:
	or	$2,$17,$20
	bne	$2,$0,$L5
	andi	$2,$20,0x1

	lw	$31,60($sp)
	move	$2,$22
	lw	$21,48($sp)
	move	$3,$23
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

$L5:
	beq	$2,$0,$L3
	mult	$22,$21

	lw	$25,%call16(__umoddi3)($28)
	madd	$16,$23
	move	$7,$19
	move	$6,$18
	mflo	$22
	multu	$21,$23
	mfhi	$4
	mflo	$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$22,$4

	lw	$28,16($sp)
	move	$23,$3
	move	$22,$2
$L3:
	mul	$16,$16,$21
	lw	$25,%call16(__umoddi3)($28)
	multu	$21,$21
	move	$7,$19
	move	$6,$18
	srl	$20,$20,1
	mfhi	$4
	mflo	$5
	sll	$16,$16,1
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$16,$4

	move	$21,$3
	lw	$28,16($sp)
	sll	$3,$17,31
	move	$16,$2
	srl	$17,$17,1
	.option	pic0
	b	$L2
	.option	pic2
	or	$20,$3,$20

	.set	macro
	.set	reorder
	.end	rsa_mod_exp
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

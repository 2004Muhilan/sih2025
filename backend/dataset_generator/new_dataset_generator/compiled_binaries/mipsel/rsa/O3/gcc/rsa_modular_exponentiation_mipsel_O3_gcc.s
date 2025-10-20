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
	sw	$22,52($sp)
	move	$22,$7
	sw	$20,44($sp)
	move	$20,$6
	sw	$16,28($sp)
	.cprestore	16
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$21,48($sp)
	sw	$17,32($sp)
	lw	$18,80($sp)
	lw	$19,84($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$7,$19

	move	$16,$3
	or	$3,$20,$22
	beq	$3,$0,$L7
	lw	$28,16($sp)

	li	$21,1			# 0x1
	move	$17,$0
	move	$23,$2
$L6:
	mul	$2,$16,$21
	lw	$25,%call16(__umoddi3)($28)
	mul	$3,$17,$23
	multu	$23,$21
	mflo	$4
	addu	$3,$2,$3
	andi	$2,$20,0x1
	beq	$2,$0,$L4
	mfhi	$5

	addu	$5,$3,$5
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$7,$19

	lw	$28,16($sp)
	move	$17,$3
	move	$21,$2
$L4:
	mul	$16,$16,$23
	lw	$25,%call16(__umoddi3)($28)
	multu	$23,$23
	move	$6,$18
	move	$7,$19
	srl	$20,$20,1
	mfhi	$5
	mflo	$4
	sll	$16,$16,1
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$5,$16,$5

	sll	$4,$22,31
	srl	$22,$22,1
	lw	$28,16($sp)
	or	$20,$4,$20
	move	$16,$3
	or	$3,$20,$22
	bne	$3,$0,$L6
	move	$23,$2

	lw	$31,60($sp)
	move	$2,$21
	lw	$23,56($sp)
	move	$3,$17
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

$L7:
	lw	$31,60($sp)
	li	$21,1			# 0x1
	move	$17,$0
	lw	$23,56($sp)
	lw	$22,52($sp)
	move	$2,$21
	lw	$20,44($sp)
	move	$3,$17
	lw	$21,48($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	rsa_mod_exp
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

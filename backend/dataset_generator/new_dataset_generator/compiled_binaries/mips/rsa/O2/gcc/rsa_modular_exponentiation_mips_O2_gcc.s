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
	move	$22,$6
	sw	$20,44($sp)
	move	$20,$7
	.cprestore	16
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$21,48($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	or	$4,$22,$20
	beq	$4,$0,$L7
	lw	$28,16($sp)

	move	$17,$0
	li	$21,1			# 0x1
	move	$16,$2
	move	$23,$3
$L6:
	mul	$2,$16,$21
	lw	$25,%call16(__umoddi3)($28)
	mul	$3,$17,$23
	multu	$23,$21
	mflo	$5
	addu	$3,$2,$3
	andi	$2,$20,0x1
	beq	$2,$0,$L4
	mfhi	$4

	addu	$4,$3,$4
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$28,16($sp)
	move	$21,$3
	move	$17,$2
$L4:
	mul	$16,$16,$23
	lw	$25,%call16(__umoddi3)($28)
	multu	$23,$23
	move	$7,$19
	move	$6,$18
	srl	$20,$20,1
	mfhi	$4
	mflo	$5
	sll	$16,$16,1
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$16,$4

	sll	$4,$22,31
	srl	$22,$22,1
	lw	$28,16($sp)
	or	$20,$4,$20
	or	$4,$22,$20
	move	$16,$2
	bne	$4,$0,$L6
	move	$23,$3

	lw	$31,60($sp)
	move	$2,$17
	lw	$23,56($sp)
	move	$3,$21
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
	move	$17,$0
	li	$21,1			# 0x1
	lw	$23,56($sp)
	lw	$22,52($sp)
	move	$2,$17
	lw	$20,44($sp)
	move	$3,$21
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

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
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$21,$6
	move	$23,$7
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$16,$2
	or	$2,$21,$23
	beq	$2,$0,$L7
	move	$17,$3

	move	$20,$0
	.option	pic0
	b	$L6
	.option	pic2
	li	$22,1			# 0x1

$L4:
	mul	$16,$16,$17
	sll	$16,$16,1
	multu	$17,$17
	mflo	$5
	mfhi	$4
	addu	$4,$16,$4
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$17,$3
	move	$16,$2
	sll	$2,$21,31
	srl	$3,$23,1
	or	$3,$2,$3
	srl	$21,$21,1
	move	$23,$3
	or	$3,$21,$3
	beq	$3,$0,$L10
	move	$2,$20

$L6:
	andi	$2,$23,0x1
	beq	$2,$0,$L4
	mult	$20,$17

	madd	$16,$22
	mflo	$20
	multu	$17,$22
	mflo	$5
	mfhi	$4
	addu	$4,$20,$4
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$22,$3
	.option	pic0
	b	$L4
	.option	pic2
	move	$20,$2

$L7:
	move	$20,$0
	li	$22,1			# 0x1
	move	$2,$20
$L10:
	move	$3,$22
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
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

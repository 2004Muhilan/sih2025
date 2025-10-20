	.file	1 "custom_rsa.c"
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
	.globl	mod_exp
	.set	nomips16
	.set	nomicromips
	.ent	mod_exp
	.type	mod_exp, @function
mod_exp:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$22,$6
	move	$fp,$7
	lw	$21,84($sp)
	lw	$20,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$21
	move	$6,$20
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$16,$2
	or	$2,$22,$fp
	beq	$2,$0,$L7
	move	$17,$3

	move	$19,$0
	.option	pic0
	b	$L6
	.option	pic2
	li	$23,1			# 0x1

$L4:
	sll	$2,$22,31
$L10:
	srl	$18,$fp,1
	or	$18,$2,$18
	srl	$22,$22,1
	move	$fp,$18
	mul	$16,$16,$17
	sll	$16,$16,1
	multu	$17,$17
	mflo	$5
	mfhi	$4
	addu	$4,$16,$4
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$21
	move	$6,$20
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$17,$3
	or	$18,$22,$18
	beq	$18,$0,$L1
	move	$16,$2

$L6:
	andi	$2,$fp,0x1
	beq	$2,$0,$L10
	sll	$2,$22,31

	mult	$19,$17
	madd	$16,$23
	mflo	$19
	multu	$17,$23
	mflo	$5
	mfhi	$4
	addu	$4,$19,$4
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$21
	move	$6,$20
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$23,$3
	.option	pic0
	b	$L4
	.option	pic2
	move	$19,$2

$L7:
	move	$19,$0
	li	$23,1			# 0x1
$L1:
	move	$2,$19
	move	$3,$23
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	mod_exp
	.size	mod_exp, .-mod_exp
	.globl	__moddi3
	.globl	__divdi3
	.align	2
	.globl	extended_gcd
	.set	nomips16
	.set	nomicromips
	.ent	extended_gcd
	.type	extended_gcd, @function
extended_gcd:
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
	bne	$2,$0,$L17
	lw	$25,%call16(__moddi3)($28)

	move	$23,$0
	li	$22,1			# 0x1
$L12:
	sw	$16,0($21)
	sw	$17,4($21)
	sw	$23,0($20)
	sw	$22,4($20)
	lw	$3,60($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L18
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

$L17:
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
	jal	extended_gcd
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
	b	$L12
	.option	pic2
	lw	$18,36($sp)

$L18:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	extended_gcd
	.size	extended_gcd, .-extended_gcd
	.align	2
	.globl	rsa_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	lw	$3,60($sp)
	lw	$2,56($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	.option	pic0
	jal	mod_exp
	nop

	.option	pic2
	lw	$31,36($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	rsa_encrypt
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.globl	rsa_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	lw	$3,60($sp)
	lw	$2,56($sp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	.option	pic0
	jal	mod_exp
	nop

	.option	pic2
	lw	$31,36($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	rsa_decrypt
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

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
	move	$22,$7
	lw	$25,%call16(__umoddi3)($28)
	lw	$6,80($sp)
	lw	$7,84($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$17,$2
	or	$2,$21,$22
	beq	$2,$0,$L7
	move	$16,$3

	li	$20,1			# 0x1
	.option	pic0
	b	$L6
	.option	pic2
	move	$19,$0

$L4:
	sll	$2,$22,31
$L10:
	srl	$18,$21,1
	or	$18,$2,$18
	srl	$23,$22,1
	move	$21,$18
	move	$22,$23
	mul	$16,$16,$17
	sll	$16,$16,1
	multu	$17,$17
	mflo	$4
	mfhi	$5
	addu	$5,$16,$5
	lw	$25,%call16(__umoddi3)($28)
	lw	$6,80($sp)
	lw	$7,84($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$16,$3
	or	$18,$18,$23
	beq	$18,$0,$L1
	move	$17,$2

$L6:
	andi	$2,$21,0x1
	beq	$2,$0,$L10
	sll	$2,$22,31

	mult	$19,$17
	madd	$16,$20
	mflo	$19
	multu	$17,$20
	mflo	$4
	mfhi	$5
	addu	$5,$19,$5
	lw	$25,%call16(__umoddi3)($28)
	lw	$6,80($sp)
	lw	$7,84($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$3
	.option	pic0
	b	$L4
	.option	pic2
	move	$20,$2

$L7:
	li	$20,1			# 0x1
	move	$19,$0
$L1:
	move	$2,$20
	move	$3,$19
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
	move	$17,$4
	move	$16,$5
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

	li	$22,1			# 0x1
	move	$23,$0
$L12:
	sw	$17,0($21)
	sw	$16,4($21)
	sw	$22,0($20)
	sw	$23,4($20)
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
	move	$6,$17
	move	$7,$16
	move	$4,$2
	move	$5,$3
	.option	pic0
	jal	extended_gcd
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$fp,$2
	sw	$3,36($sp)
	lw	$22,40($sp)
	lw	$23,44($sp)
	lw	$25,%call16(__divdi3)($28)
	move	$6,$17
	move	$7,$16
	move	$4,$19
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,24($sp)
	mult	$23,$2
	madd	$3,$22
	mflo	$3
	multu	$2,$22
	mflo	$4
	mfhi	$5
	addu	$5,$3,$5
	lw	$2,48($sp)
	subu	$17,$2,$4
	sltu	$2,$2,$17
	lw	$16,52($sp)
	subu	$16,$16,$5
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
	lw	$2,56($sp)
	lw	$3,60($sp)
	sw	$2,16($sp)
	sw	$3,20($sp)
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
	lw	$2,56($sp)
	lw	$3,60($sp)
	sw	$2,16($sp)
	sw	$3,20($sp)
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

	.file	1 "tinycrypt_ecc_dsa.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	bits2int
	.type	bits2int, @function
bits2int:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lh	$2,2($7)
	addiu	$sp,$sp,-56
	lui	$28,%hi(__gnu_local_gp)
	addiu	$3,$2,31
	sw	$18,36($sp)
	addiu	$18,$2,62
	sw	$19,40($sp)
	move	$19,$5
	sw	$16,28($sp)
	slt	$5,$3,0
	sw	$20,44($sp)
	movz	$18,$3,$5
	addiu	$3,$2,7
	addiu	$16,$2,14
	slt	$2,$3,0
	sw	$31,52($sp)
	movz	$16,$3,$2
	addiu	$28,$28,%lo(__gnu_local_gp)
	sra	$18,$18,5
	sw	$21,48($sp)
	move	$21,$7
	sw	$17,32($sp)
	seb	$20,$18
	.cprestore	16
	sra	$16,$16,3
	lw	$25,%call16(uECC_vli_clear)($28)
	move	$5,$20
	sltu	$2,$6,$16
	movn	$16,$6,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	move	$17,$4

	move	$5,$19
	lw	$28,16($sp)
	move	$4,$17
	move	$6,$16
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	sll	$16,$16,3

	lh	$2,2($21)
	sltu	$3,$2,$16
	beq	$3,$0,$L1
	lw	$28,16($sp)

	subu	$16,$16,$2
	li	$3,32			# 0x20
	sll	$2,$18,2
	move	$5,$0
	addu	$2,$17,$2
	subu	$3,$3,$16
$L4:
	sltu	$4,$17,$2
	bne	$4,$0,$L5
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)

	addiu	$21,$21,36
	move	$6,$20
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$21

	li	$3,1			# 0x1
	beq	$2,$3,$L1
	lw	$28,16($sp)

	lw	$31,52($sp)
	move	$7,$20
	lw	$19,40($sp)
	move	$6,$21
	lw	$20,44($sp)
	move	$5,$17
	lw	$21,48($sp)
	move	$4,$17
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	lw	$25,%call16(uECC_vli_sub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jr	$25
	addiu	$sp,$sp,56

$L5:
	lw	$6,-4($2)
	addiu	$2,$2,-4
	srl	$4,$6,$16
	or	$4,$4,$5
	sw	$4,0($2)
	.option	pic0
	b	$L4
	.option	pic2
	sll	$5,$6,$3

$L1:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	bits2int
	.size	bits2int, .-bits2int
	.align	2
	.globl	uECC_sign_with_k
	.set	nomips16
	.set	nomicromips
	.ent	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
	.frame	$sp,240,$31		# vars= 168, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-240
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,256($sp)
	sw	$23,228($sp)
	sw	$19,212($sp)
	sw	$2,44($sp)
	lw	$23,%got(__stack_chk_guard)($28)
	lw	$19,260($sp)
	lw	$25,%call16(uECC_vli_isZero)($28)
	sw	$22,224($sp)
	sw	$20,216($sp)
	addiu	$20,$sp,68
	sw	$18,208($sp)
	addiu	$18,$sp,100
	sw	$17,204($sp)
	move	$17,$7
	.cprestore	24
	sw	$31,236($sp)
	sw	$fp,232($sp)
	sw	$21,220($sp)
	sw	$16,200($sp)
	lw	$2,0($23)
	lh	$22,2($19)
	sw	$4,48($sp)
	move	$4,$7
	sw	$2,196($sp)
	sw	$5,52($sp)
	sw	$6,248($sp)
	sw	$20,60($sp)
	sw	$18,64($sp)
	lb	$2,0($19)
	sw	$2,40($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	move	$5,$2

	beq	$2,$0,$L9
	lw	$28,24($sp)

$L11:
	move	$2,$0
$L8:
	lw	$4,196($sp)
	lw	$3,0($23)
	beq	$4,$3,$L14
	lw	$31,236($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L9:
	addiu	$2,$22,31
	lw	$25,%call16(uECC_vli_cmp)($28)
	addiu	$16,$22,62
	slt	$3,$2,0
	movz	$16,$2,$3
	addiu	$21,$19,36
	move	$5,$17
	move	$4,$21
	sra	$16,$16,5
	seb	$16,$16
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp
1:	jalr	$25
	move	$6,$16

	move	$fp,$2
	li	$2,1			# 0x1
	bne	$fp,$2,$L11
	lw	$28,24($sp)

	lw	$25,%call16(regularize_k)($28)
	move	$7,$19
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	move	$4,$17

	addiu	$3,$sp,24
	sltu	$2,$2,1
	lw	$28,24($sp)
	sll	$2,$2,2
	sw	$19,20($sp)
	addiu	$22,$22,1
	addiu	$2,$2,176
	seh	$22,$22
	lw	$25,%call16(EccPoint_mult)($28)
	addu	$2,$2,$3
	sw	$22,16($sp)
	addiu	$3,$sp,132
	move	$7,$0
	sw	$3,36($sp)
	addiu	$5,$19,68
	lw	$6,-140($2)
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	move	$4,$3

	lw	$28,24($sp)
	lw	$5,40($sp)
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	lw	$4,36($sp)

	bne	$2,$0,$L11
	lw	$28,24($sp)

	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	bne	$2,$0,$L12
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_clear)($28)
	move	$5,$16
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	move	$4,$20

	lw	$28,24($sp)
	sw	$fp,68($sp)
$L13:
	lw	$25,%call16(uECC_vli_modMult)($28)
	move	$7,$21
	move	$6,$20
	sw	$16,16($sp)
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$4,$17

	move	$7,$16
	lw	$28,24($sp)
	move	$6,$21
	move	$5,$17
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$17

	move	$7,$21
	lw	$28,24($sp)
	move	$6,$20
	move	$5,$17
	sw	$16,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$4,$17

	lw	$28,24($sp)
	lw	$6,36($sp)
	lb	$5,1($19)
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$4,44($sp)

	move	$4,$20
	lh	$6,2($19)
	lw	$28,24($sp)
	lw	$5,48($sp)
	addiu	$2,$6,7
	addiu	$6,$6,14
	slt	$3,$2,0
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	movz	$6,$2,$3
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	sra	$6,$6,3

	addiu	$2,$16,-1
	lw	$28,24($sp)
	addiu	$3,$sp,24
	sll	$2,$2,2
	lw	$6,40($sp)
	lw	$5,36($sp)
	move	$4,$18
	addiu	$2,$2,176
	lw	$25,%call16(uECC_vli_set)($28)
	addu	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	sw	$0,-100($2)

	move	$7,$21
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$20
	sw	$16,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$4,$18

	move	$7,$19
	lw	$6,248($sp)
	move	$4,$20
	.option	pic0
	jal	bits2int
	.option	pic2
	lw	$5,52($sp)

	move	$7,$21
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$20
	sw	$16,16($sp)
	lw	$25,%call16(uECC_vli_modAdd)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modAdd
1:	jalr	$25
	move	$4,$18

	move	$7,$21
	lw	$28,24($sp)
	move	$6,$17
	move	$5,$18
	sw	$16,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$4,$18

	move	$5,$16
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	move	$4,$18

	lb	$5,1($19)
	sll	$3,$5,3
	slt	$2,$3,$2
	bne	$2,$0,$L11
	lw	$28,24($sp)

	lw	$2,44($sp)
	move	$6,$18
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	addu	$4,$2,$5

	li	$2,1			# 0x1
	.option	pic0
	b	$L8
	.option	pic2
	lw	$28,24($sp)

$L12:
	lw	$25,%call16(uECC_generate_random_int)($28)
	move	$6,$16
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	move	$4,$20

	bne	$2,$0,$L13
	lw	$28,24($sp)

	.option	pic0
	b	$L8
	.option	pic2
	move	$2,$0

$L14:
	lw	$fp,232($sp)
	lw	$23,228($sp)
	lw	$22,224($sp)
	lw	$21,220($sp)
	lw	$20,216($sp)
	lw	$19,212($sp)
	lw	$18,208($sp)
	lw	$17,204($sp)
	lw	$16,200($sp)
	jr	$31
	addiu	$sp,$sp,240

	.set	macro
	.set	reorder
	.end	uECC_sign_with_k
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	2
	.globl	uECC_sign
	.set	nomips16
	.set	nomicromips
	.ent	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
	.frame	$sp,184,$31		# vars= 112, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-184
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,168($sp)
	lw	$22,%got(__stack_chk_guard)($28)
	sw	$21,164($sp)
	sw	$fp,176($sp)
	sw	$23,172($sp)
	addiu	$23,$sp,44
	sw	$16,144($sp)
	li	$16,64			# 0x40
	lw	$2,0($22)
	lw	$21,200($sp)
	sw	$20,160($sp)
	move	$20,$7
	sw	$2,140($sp)
	addiu	$2,$sp,76
	addiu	$fp,$21,36
	sw	$19,156($sp)
	sw	$18,152($sp)
	move	$19,$6
	sw	$17,148($sp)
	move	$18,$5
	sw	$31,180($sp)
	move	$17,$4
	.cprestore	24
	sw	$2,36($sp)
	lw	$25,%call16(uECC_get_rng)($28)
$L33:
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L20
	move	$25,$2

	lw	$4,36($sp)
	jalr	$25
	li	$5,64			# 0x40

	beq	$2,$0,$L20
	lw	$28,24($sp)

	lh	$2,2($21)
	move	$6,$fp
	lw	$25,%call16(uECC_vli_mmod)($28)
	lw	$5,36($sp)
	addiu	$3,$2,31
	addiu	$7,$2,62
	slt	$4,$3,0
	move	$2,$3
	movn	$2,$7,$4
	move	$4,$23
	sra	$7,$2,5
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	seb	$7,$7

	move	$7,$23
	sw	$21,20($sp)
	move	$6,$19
	sw	$20,16($sp)
	move	$5,$18
	.option	pic0
	jal	uECC_sign_with_k
	.option	pic2
	move	$4,$17

	bne	$2,$0,$L24
	lw	$28,24($sp)

	addiu	$16,$16,-1
	bne	$16,$0,$L33
	lw	$25,%call16(uECC_get_rng)($28)

$L20:
	move	$2,$0
$L19:
	lw	$4,140($sp)
	lw	$3,0($22)
	beq	$4,$3,$L23
	lw	$31,180($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L24:
	.option	pic0
	b	$L19
	.option	pic2
	li	$2,1			# 0x1

$L23:
	lw	$fp,176($sp)
	lw	$23,172($sp)
	lw	$22,168($sp)
	lw	$21,164($sp)
	lw	$20,160($sp)
	lw	$19,156($sp)
	lw	$18,152($sp)
	lw	$17,148($sp)
	lw	$16,144($sp)
	jr	$31
	addiu	$sp,$sp,184

	.set	macro
	.set	reorder
	.end	uECC_sign
	.size	uECC_sign, .-uECC_sign
	.align	2
	.globl	uECC_verify
	.set	nomips16
	.set	nomicromips
	.ent	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
	.frame	$sp,584,$31		# vars= 512, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-584
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,548($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$17,600($sp)
	sw	$16,544($sp)
	sw	$2,64($sp)
	lw	$2,0($2)
	sw	$20,560($sp)
	sw	$31,580($sp)
	sw	$2,540($sp)
	lh	$2,2($17)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	sw	$fp,576($sp)
	addiu	$3,$2,31
	sw	$23,572($sp)
	addiu	$16,$2,62
	sw	$21,564($sp)
	slt	$2,$3,0
	sw	$19,556($sp)
	movz	$16,$3,$2
	addiu	$3,$sp,40
	move	$21,$4
	.cprestore	24
	move	$19,$7
	sw	$22,568($sp)
	sra	$16,$16,5
	sw	$18,552($sp)
	sw	$6,592($sp)
	seb	$16,$16
	sw	$5,44($sp)
	addiu	$20,$16,-1
	lb	$6,1($17)
	lb	$18,0($17)
	move	$5,$4
	sll	$20,$20,2
	addiu	$2,$20,504
	sll	$23,$18,2
	addu	$20,$2,$3
	addiu	$2,$sp,476
	sw	$0,-356($20)
	move	$4,$2
	sw	$2,48($sp)
	sw	$0,-196($20)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	sw	$0,-164($20)

	lw	$28,24($sp)
	lw	$2,48($sp)
	lb	$6,1($17)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	addu	$fp,$2,$23
	addu	$5,$21,$6
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$4,$fp

	addiu	$2,$sp,348
	lw	$28,24($sp)
	move	$5,$19
	lb	$6,1($17)
	move	$4,$2
	sw	$2,40($sp)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	addiu	$21,$sp,380

	move	$4,$21
	lw	$28,24($sp)
	lb	$6,1($17)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	addu	$5,$19,$6

	move	$5,$18
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	lw	$4,40($sp)

	beq	$2,$0,$L35
	lw	$28,24($sp)

$L37:
	move	$2,$0
$L34:
	lw	$3,64($sp)
	lw	$4,540($sp)
	lw	$3,0($3)
	beq	$4,$3,$L43
	lw	$31,580($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L35:
	lw	$25,%call16(uECC_vli_isZero)($28)
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	move	$4,$21

	bne	$2,$0,$L37
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	addiu	$22,$17,36
	lw	$5,40($sp)
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$22

	move	$19,$2
	li	$2,1			# 0x1
	bne	$19,$2,$L37
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	move	$6,$16
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$22

	bne	$2,$19,$L37
	lw	$28,24($sp)

	addiu	$19,$sp,156
	lw	$25,%call16(uECC_vli_modInv)($28)
	move	$5,$21
	move	$7,$16
	move	$6,$22
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$19

	addiu	$2,$sp,92
	lw	$6,592($sp)
	move	$7,$17
	lw	$5,44($sp)
	move	$4,$2
	sw	$0,-452($20)
	addiu	$20,$sp,412
	.option	pic0
	jal	bits2int
	.option	pic2
	sw	$2,36($sp)

	move	$7,$22
	lw	$28,24($sp)
	move	$6,$19
	lw	$5,36($sp)
	sw	$16,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$4,$5

	addiu	$2,$sp,124
	lw	$28,24($sp)
	move	$7,$22
	lw	$5,40($sp)
	move	$4,$2
	sw	$2,52($sp)
	move	$6,$19
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	sw	$16,16($sp)

	move	$4,$20
	lw	$28,24($sp)
	move	$6,$18
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	lw	$5,48($sp)

	addu	$4,$20,$23
	lw	$28,24($sp)
	move	$5,$fp
	move	$6,$18
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	addiu	$fp,$sp,252

	addiu	$2,$17,68
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$2
	move	$4,$fp
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$21,$2

	addiu	$2,$sp,284
	lw	$28,24($sp)
	addu	$5,$21,$23
	move	$4,$2
	sw	$2,44($sp)
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$6,$18

	addiu	$2,$17,4
	lw	$28,24($sp)
	move	$5,$20
	move	$7,$2
	sw	$2,56($sp)
	move	$6,$fp
	sw	$18,16($sp)
	lw	$25,%call16(uECC_vli_modSub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	move	$4,$19

	addu	$7,$20,$23
	lw	$28,24($sp)
	move	$6,$20
	lw	$5,44($sp)
	move	$4,$fp
	lw	$25,%call16(XYcZ_add)($28)
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	sw	$17,16($sp)

	addiu	$6,$17,4
	lw	$28,24($sp)
	move	$7,$18
	move	$5,$19
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$19

	addu	$5,$20,$23
	lw	$28,24($sp)
	move	$7,$17
	move	$6,$19
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	move	$4,$20

	move	$5,$16
	lw	$28,24($sp)
	lw	$2,48($sp)
	lw	$4,36($sp)
	sw	$21,80($sp)
	sw	$20,88($sp)
	sw	$0,76($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	sw	$2,84($sp)

	move	$5,$16
	lw	$28,24($sp)
	move	$21,$2
	lw	$4,52($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	move	$20,$21

	slt	$21,$21,$2
	beq	$21,$0,$L38
	lw	$28,24($sp)

	move	$20,$2
$L38:
	andi	$20,$20,0xffff
	lw	$25,%call16(uECC_vli_testBit)($28)
	addiu	$5,$20,-1
	lw	$4,36($sp)
	addiu	$20,$20,-2
	seh	$5,$5
	sw	$5,48($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	seh	$20,$20

	lw	$28,24($sp)
	move	$21,$2
	lw	$5,48($sp)
	sltu	$21,$0,$21
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	lw	$4,52($sp)

	addiu	$3,$sp,40
	sltu	$2,$0,$2
	lw	$28,24($sp)
	sll	$2,$2,1
	move	$6,$18
	or	$2,$2,$21
	sll	$2,$2,2
	lw	$25,%call16(uECC_vli_set)($28)
	addiu	$21,$sp,188
	addiu	$2,$2,504
	move	$4,$21
	addu	$2,$2,$3
	lw	$5,-468($2)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	sw	$5,60($sp)

	addiu	$2,$sp,220
	lw	$28,24($sp)
	move	$6,$18
	lw	$5,60($sp)
	move	$4,$2
	sw	$2,48($sp)
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	addu	$5,$5,$23

	move	$5,$18
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_clear)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	move	$4,$19

	li	$2,1			# 0x1
	lw	$28,24($sp)
	sw	$2,156($sp)
	addiu	$2,$sp,316
	sw	$2,60($sp)
$L39:
	bgez	$20,$L41
	move	$7,$17

	lw	$25,%call16(uECC_vli_modInv)($28)
	move	$7,$18
	lw	$6,56($sp)
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$19

	move	$7,$17
	lw	$28,24($sp)
	move	$6,$19
	lw	$5,48($sp)
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	move	$4,$21

	move	$6,$16
	lw	$28,24($sp)
	move	$5,$21
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$22

	li	$3,1			# 0x1
	beq	$2,$3,$L42
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_sub)($28)
	move	$7,$16
	move	$6,$22
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jalr	$25
	move	$4,$21

	lw	$28,24($sp)
$L42:
	lw	$25,%call16(uECC_vli_equal)($28)
	move	$6,$18
	lw	$5,40($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_equal
1:	jalr	$25
	move	$4,$21

	lw	$28,24($sp)
	.option	pic0
	b	$L34
	.option	pic2
	sltu	$2,$2,1

$L41:
	lw	$25,164($17)
	lw	$5,48($sp)
	move	$6,$19
	jalr	$25
	move	$4,$21

	move	$5,$20
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	lw	$4,36($sp)

	move	$5,$20
	lw	$28,24($sp)
	lw	$4,52($sp)
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	sw	$2,68($sp)

	lw	$3,68($sp)
	sltu	$2,$0,$2
	sll	$2,$2,1
	sltu	$3,$0,$3
	or	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$sp,40
	addiu	$2,$2,504
	addu	$2,$2,$3
	lw	$5,-468($2)
	beq	$5,$0,$L40
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_set)($28)
	move	$6,$18
	sw	$5,68($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$4,$fp

	move	$6,$18
	lw	$28,24($sp)
	lw	$5,68($sp)
	lw	$4,44($sp)
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	addu	$5,$5,$23

	move	$7,$17
	lw	$28,24($sp)
	move	$6,$19
	lw	$5,44($sp)
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	move	$4,$fp

	move	$6,$fp
	lw	$28,24($sp)
	move	$5,$21
	lw	$7,56($sp)
	lw	$4,60($sp)
	lw	$25,%call16(uECC_vli_modSub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	sw	$18,16($sp)

	move	$6,$21
	lw	$28,24($sp)
	move	$4,$fp
	lw	$7,48($sp)
	lw	$5,44($sp)
	lw	$25,%call16(XYcZ_add)($28)
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	sw	$17,16($sp)

	move	$7,$17
	lw	$28,24($sp)
	move	$5,$19
	lw	$6,60($sp)
	lw	$25,%call16(uECC_vli_modMult_fast)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult_fast
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
$L40:
	addiu	$20,$20,-1
	.option	pic0
	b	$L39
	.option	pic2
	seh	$20,$20

$L43:
	lw	$fp,576($sp)
	lw	$23,572($sp)
	lw	$22,568($sp)
	lw	$21,564($sp)
	lw	$20,560($sp)
	lw	$19,556($sp)
	lw	$18,552($sp)
	lw	$17,548($sp)
	lw	$16,544($sp)
	jr	$31
	addiu	$sp,$sp,584

	.set	macro
	.set	reorder
	.end	uECC_verify
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

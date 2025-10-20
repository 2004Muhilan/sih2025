	.file	1 "tinycrypt_hmac_prng.c"
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
	.ent	update
	.type	update, @function
update:
	.frame	$sp,64,$31		# vars= 8, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$4
	move	$19,$5
	move	$21,$6
	move	$20,$7
	lw	$22,80($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,28($sp)
	sb	$0,26($sp)
	li	$2,1			# 0x1
	sb	$2,27($sp)
	addiu	$17,$4,240
	li	$6,32			# 0x20
	move	$5,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$18,$16,272
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,1			# 0x1
	addiu	$5,$sp,26
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$19,$0,$L2
	nop

	bne	$21,$0,$L26
	move	$6,$21

	beq	$20,$0,$L27
	move	$6,$16

	bne	$22,$0,$L14
	li	$5,32			# 0x20

	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L1
	nop

	.option	pic2
$L26:
	move	$5,$19
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$20,$0,$L28
	move	$6,$16

	bne	$22,$0,$L14
	li	$5,32			# 0x20

	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L33
	.option	pic2
	li	$6,32			# 0x20

$L31:
	move	$6,$22
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L34
	.option	pic2
	move	$6,$16

$L29:
	li	$5,32			# 0x20
	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L1
	nop

	.option	pic2
$L2:
	beq	$20,$0,$L29
	move	$6,$16

	beq	$22,$0,$L30
	li	$5,32			# 0x20

$L14:
	move	$6,$22
	move	$5,$20
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$19,$0,$L1
	nop

	beq	$21,$0,$L1
	li	$6,32			# 0x20

$L33:
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,1			# 0x1
	addiu	$5,$sp,27
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$21
	move	$5,$19
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$20,$0,$L34
	move	$6,$16

	bne	$22,$0,$L31
	move	$5,$20

$L34:
	li	$5,32			# 0x20
	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L1:
	lw	$3,28($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L32
	lw	$31,60($sp)

	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,64

$L27:
	li	$5,32			# 0x20
	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L1
	nop

	.option	pic2
$L28:
	li	$5,32			# 0x20
	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,1			# 0x1
	addiu	$5,$sp,27
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$21
	move	$5,$19
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L34
	.option	pic2
	move	$6,$16

$L30:
	move	$4,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$17
	move	$4,$16
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$16
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,32			# 0x20
	move	$5,$18
	move	$4,$16
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$16
	li	$5,32			# 0x20
	move	$4,$18
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L1
	nop

	.option	pic2
$L32:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	update
	.size	update, .-update
	.align	2
	.globl	tc_hmac_prng_init
	.set	nomips16
	.set	nomicromips
	.ent	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
	.frame	$sp,48,$31		# vars= 0, regs= 4/0, args= 24, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	beq	$4,$0,$L37
	.cprestore	24

	move	$16,$4
	move	$17,$5
	beq	$5,$0,$L38
	move	$18,$6

	li	$6,32			# 0x20
	move	$5,$0
	addiu	$4,$4,240
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$6,32			# 0x20
	li	$5,1			# 0x1
	addiu	$4,$16,272
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$0,16($sp)
	move	$7,$0
	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	update
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$0,304($16)
	li	$2,1			# 0x1
$L35:
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,48

$L37:
	.option	pic0
	b	$L35
	.option	pic2
	move	$2,$0

$L38:
	.option	pic0
	b	$L35
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_init
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	2
	.globl	tc_hmac_prng_reseed
	.set	nomips16
	.set	nomicromips
	.ent	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
	.frame	$sp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L44
	nop

	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$16,32($sp)
	beq	$5,$0,$L45
	move	$16,$4

	sltu	$2,$6,32
	bne	$2,$0,$L54
	move	$2,$0

	beq	$7,$0,$L42
	nop

	lw	$2,56($sp)
	bne	$2,$0,$L52
	nop

	.option	pic0
	b	$L40
	.option	pic2
	move	$2,$0

$L52:
	sw	$2,16($sp)
	.option	pic0
	jal	update
	nop

	.option	pic2
	li	$2,-1			# 0xffffffffffffffff
$L53:
	sw	$2,304($16)
	li	$2,1			# 0x1
$L40:
$L54:
	lw	$31,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,40

$L42:
	sw	$0,16($sp)
	move	$7,$0
	.option	pic0
	jal	update
	nop

	.option	pic2
	.option	pic0
	b	$L53
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L44:
	jr	$31
	move	$2,$0

$L45:
	.option	pic0
	b	$L40
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_reseed
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	2
	.globl	tc_hmac_prng_generate
	.set	nomips16
	.set	nomicromips
	.ent	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	beq	$4,$0,$L58
	.cprestore	24

	move	$18,$4
	move	$16,$5
	beq	$6,$0,$L59
	move	$17,$6

	addiu	$2,$5,-1
	li	$3,524288			# 0x80000
	sltu	$2,$2,$3
	beq	$2,$0,$L60
	move	$2,$0

	lw	$2,304($6)
	beq	$2,$0,$L61
	addiu	$22,$6,240

	addiu	$2,$2,-1
	sw	$2,304($6)
	addiu	$21,$6,272
$L57:
	li	$6,32			# 0x20
	move	$5,$22
	move	$4,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$4,$17
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$6,32			# 0x20
	move	$5,$21
	move	$4,$17
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$6,$17
	li	$5,32			# 0x20
	move	$4,$21
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$19,32			# 0x20
	sltu	$2,$16,33
	move	$20,$19
	movn	$20,$16,$2
	move	$7,$20
	move	$6,$21
	move	$5,$20
	move	$4,$18
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sltu	$2,$16,32
	movz	$19,$16,$2
	addiu	$16,$19,-32
	bne	$16,$0,$L57
	addu	$18,$18,$20

	sw	$0,16($sp)
	move	$7,$0
	move	$6,$0
	move	$5,$0
	move	$4,$17
	.option	pic0
	jal	update
	nop

	.option	pic2
	lw	$28,24($sp)
	.option	pic0
	b	$L55
	.option	pic2
	li	$2,1			# 0x1

$L58:
	.option	pic0
	b	$L55
	.option	pic2
	move	$2,$0

$L59:
	move	$2,$0
$L60:
$L55:
	lw	$31,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,64

$L61:
	.option	pic0
	b	$L55
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_generate
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

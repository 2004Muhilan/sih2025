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
	.frame	$sp,72,$31		# vars= 8, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$3,1			# 0x1
	sw	$22,60($sp)
	lw	$22,%got(__stack_chk_guard)($28)
	lw	$25,%call16(tc_hmac_set_key)($28)
	sw	$17,40($sp)
	addiu	$17,$4,240
	sw	$21,56($sp)
	move	$21,$6
	sw	$31,68($sp)
	li	$6,32			# 0x20
	sb	$3,27($sp)
	sw	$23,64($sp)
	sw	$20,52($sp)
	move	$20,$7
	sw	$19,48($sp)
	move	$19,$5
	sw	$18,44($sp)
	move	$5,$17
	sw	$16,36($sp)
	move	$16,$4
	.cprestore	16
	addiu	$18,$16,272
	sb	$0,26($sp)
	lw	$2,0($22)
	lw	$23,88($sp)
	sw	$2,28($sp)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$6,1			# 0x1
	lw	$28,16($sp)
	addiu	$5,$sp,26
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	beq	$19,$0,$L3
	lw	$28,16($sp)

	bne	$21,$0,$L38
	lw	$25,%call16(tc_hmac_update)($28)

$L3:
	beq	$20,$0,$L41
	lw	$25,%call16(tc_hmac_final)($28)

	bne	$23,$0,$L42
	lw	$25,%call16(tc_hmac_update)($28)

$L32:
	lw	$25,%call16(tc_hmac_final)($28)
$L41:
	li	$5,32			# 0x20
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$17

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$18

	lw	$28,16($sp)
$L1:
	lw	$3,28($sp)
	lw	$2,0($22)
	bne	$3,$2,$L39
	lw	$31,68($sp)

	lw	$23,64($sp)
	lw	$22,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	jr	$31
	addiu	$sp,$sp,72

$L38:
	move	$6,$21
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	beq	$20,$0,$L40
	lw	$28,16($sp)

	bne	$23,$0,$L14
	lw	$25,%call16(tc_hmac_final)($28)

	li	$5,32			# 0x20
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$17

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$18

	.option	pic0
	b	$L7
	.option	pic2
	lw	$28,16($sp)

$L14:
	lw	$25,%call16(tc_hmac_update)($28)
$L42:
	move	$6,$23
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$17

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$18

	beq	$19,$0,$L1
	lw	$28,16($sp)

	beq	$21,$0,$L1
	nop

$L7:
	lw	$25,%call16(tc_hmac_set_key)($28)
	li	$6,32			# 0x20
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$6,1			# 0x1
	lw	$28,16($sp)
	addiu	$5,$sp,27
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	move	$6,$21
	lw	$28,16($sp)
	move	$5,$19
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	beq	$20,$0,$L32
	lw	$28,16($sp)

	beq	$23,$0,$L41
	lw	$25,%call16(tc_hmac_final)($28)

	lw	$25,%call16(tc_hmac_update)($28)
	move	$6,$23
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	.option	pic0
	b	$L32
	.option	pic2
	lw	$28,16($sp)

$L40:
	lw	$25,%call16(tc_hmac_final)($28)
	li	$5,32			# 0x20
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$17

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$18

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$6,1			# 0x1
	lw	$28,16($sp)
	addiu	$5,$sp,27
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	move	$6,$21
	lw	$28,16($sp)
	move	$5,$19
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	.option	pic0
	b	$L32
	.option	pic2
	lw	$28,16($sp)

$L39:
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
	beq	$4,$0,$L45
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,36($sp)
	move	$17,$5
	sw	$31,44($sp)
	sw	$18,40($sp)
	sw	$16,32($sp)
	beq	$5,$0,$L46
	.cprestore	24

	lw	$25,%call16(_set)($28)
	move	$16,$4
	move	$18,$6
	move	$5,$0
	li	$6,32			# 0x20
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	addiu	$4,$4,240

	addiu	$4,$16,272
	lw	$28,24($sp)
	li	$6,32			# 0x20
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	li	$5,1			# 0x1

	move	$7,$0
	move	$6,$18
	sw	$0,16($sp)
	move	$5,$17
	.option	pic0
	jal	update
	.option	pic2
	move	$4,$16

	li	$2,1			# 0x1
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	sw	$0,304($16)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,48

$L46:
	lw	$31,44($sp)
	move	$2,$0
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,48

$L45:
	jr	$31
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
	beq	$4,$0,$L56
	nop

	beq	$5,$0,$L56
	nop

	sltu	$2,$6,32
	bne	$2,$0,$L57
	nop

	addiu	$sp,$sp,-40
	sw	$16,32($sp)
	move	$16,$4
	beq	$7,$0,$L53
	sw	$31,36($sp)

	lw	$2,56($sp)
	bne	$2,$0,$L63
	lw	$31,36($sp)

	move	$2,$0
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,40

$L57:
	jr	$31
	move	$2,$0

$L56:
	jr	$31
	move	$2,$0

$L63:
	.option	pic0
	jal	update
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
$L64:
	li	$3,-1			# 0xffffffffffffffff
	li	$2,1			# 0x1
	sw	$3,304($16)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,40

$L53:
	.option	pic0
	jal	update
	.option	pic2
	sw	$0,16($sp)

	.option	pic0
	b	$L64
	.option	pic2
	lw	$31,36($sp)

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
	beq	$4,$0,$L68
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,36($sp)
	move	$17,$6
	sw	$31,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$16,32($sp)
	beq	$6,$0,$L70
	.cprestore	24

	addiu	$2,$5,-1
	li	$3,524288			# 0x80000
	sltu	$2,$2,$3
	beq	$2,$0,$L70
	move	$16,$5

	lw	$2,304($6)
	beq	$2,$0,$L71
	addiu	$22,$6,240

	addiu	$2,$2,-1
	addiu	$21,$6,272
	sw	$2,304($6)
	move	$18,$4
$L67:
	lw	$25,%call16(tc_hmac_set_key)($28)
	li	$6,32			# 0x20
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$17

	move	$4,$17
	lw	$28,24($sp)
	li	$19,32			# 0x20
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$20,$19

	li	$6,32			# 0x20
	lw	$28,24($sp)
	move	$5,$21
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$17

	li	$5,32			# 0x20
	lw	$28,24($sp)
	move	$6,$17
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$21

	sltu	$2,$16,33
	lw	$28,24($sp)
	move	$4,$18
	movn	$20,$16,$2
	move	$6,$21
	lw	$25,%call16(_copy)($28)
	move	$7,$20
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$5,$20

	sltu	$2,$16,32
	movz	$19,$16,$2
	addu	$18,$18,$20
	addiu	$16,$19,-32
	bne	$16,$0,$L67
	lw	$28,24($sp)

	move	$7,$0
	sw	$0,16($sp)
	move	$6,$0
	move	$5,$0
	.option	pic0
	jal	update
	.option	pic2
	move	$4,$17

	li	$2,1			# 0x1
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

$L70:
	move	$2,$0
$L65:
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

$L71:
	.option	pic0
	b	$L65
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L68:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_generate
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

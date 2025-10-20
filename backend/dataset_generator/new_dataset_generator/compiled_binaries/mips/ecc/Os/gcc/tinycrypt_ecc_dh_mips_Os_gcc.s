	.file	1 "tinycrypt_ecc_dh.c"
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
	.ent	_set_secure.constprop.0
	.type	_set_secure.constprop.0, @function
_set_secure.constprop.0:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$6,$5
	move	$5,$0
	sw	$16,24($sp)
	sw	$31,28($sp)
	.cprestore	16
	lw	$25,%call16(memset)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$31,28($sp)
	lw	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,32
	.set	macro
	.set	reorder

	.end	_set_secure.constprop.0
	.size	_set_secure.constprop.0, .-_set_secure.constprop.0
	.align	2
	.globl	uECC_make_key_with_d
	.set	nomips16
	.set	nomicromips
	.ent	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
	.frame	$sp,160,$31		# vars= 104, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-160
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,148($sp)
	lw	$20,%got(__stack_chk_guard)($28)
	lw	$25,%call16(memcpy)($28)
	sw	$17,136($sp)
	addiu	$17,$sp,28
	sw	$21,152($sp)
	move	$21,$5
	sw	$31,156($sp)
	move	$5,$6
	sw	$19,144($sp)
	li	$6,32			# 0x20
	sw	$18,140($sp)
	move	$18,$4
	sw	$16,132($sp)
	move	$4,$17
	.cprestore	16
	move	$16,$7
	lw	$2,0($20)
	addiu	$19,$sp,60
	sw	$2,124($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	move	$6,$16
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(EccPoint_compute_public_key)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	move	$4,$19

	move	$3,$2
	lw	$28,16($sp)
	beq	$3,$0,$L3
	move	$2,$0

	lh	$2,2($16)
	move	$6,$17
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	addiu	$3,$2,7
	addiu	$2,$2,14
	slt	$4,$3,0
	movz	$2,$3,$4
	move	$4,$21
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	sra	$5,$2,3

	move	$6,$19
	lw	$28,16($sp)
	move	$4,$18
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lb	$5,1($16)

	lw	$28,16($sp)
	lb	$6,0($16)
	lb	$5,1($16)
	sll	$6,$6,2
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	addu	$4,$18,$5
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	addu	$6,$19,$6

	li	$5,32			# 0x20
	.option	pic0
	jal	_set_secure.constprop.0
	.option	pic2
	move	$4,$17

	li	$2,1			# 0x1
	lw	$28,16($sp)
$L3:
	lw	$4,124($sp)
	lw	$3,0($20)
	beq	$4,$3,$L5
	lw	$31,156($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	lw	$21,152($sp)
	lw	$20,148($sp)
	lw	$19,144($sp)
	lw	$18,140($sp)
	lw	$17,136($sp)
	lw	$16,132($sp)
	jr	$31
	addiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	uECC_make_key_with_d
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	2
	.globl	uECC_make_key
	.set	nomips16
	.set	nomicromips
	.ent	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
	.frame	$sp,232,$31		# vars= 168, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-232
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,216($sp)
	lw	$22,%got(__stack_chk_guard)($28)
	sw	$fp,224($sp)
	addiu	$fp,$6,36
	sw	$23,220($sp)
	addiu	$23,$sp,60
	sw	$21,212($sp)
	addiu	$21,$sp,124
	sw	$19,204($sp)
	li	$19,64			# 0x40
	sw	$18,200($sp)
	addiu	$18,$sp,28
	sw	$20,208($sp)
	move	$20,$5
	sw	$17,196($sp)
	move	$17,$4
	sw	$16,192($sp)
	move	$16,$6
	sw	$31,228($sp)
	.cprestore	16
	lw	$2,0($22)
	sw	$2,188($sp)
	lw	$25,%call16(uECC_get_rng)($28)
$L24:
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$2,$0,$L11
	move	$25,$2

	li	$5,64			# 0x40
	jalr	$25
	move	$4,$23

	beq	$2,$0,$L11
	lw	$28,16($sp)

	lh	$2,2($16)
	move	$6,$fp
	lw	$25,%call16(uECC_vli_mmod)($28)
	move	$5,$23
	addiu	$3,$2,31
	addiu	$7,$2,62
	slt	$4,$3,0
	move	$2,$3
	movn	$2,$7,$4
	move	$4,$18
	sra	$7,$2,5
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	seb	$7,$7

	move	$6,$16
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(EccPoint_compute_public_key)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	move	$4,$21

	beq	$2,$0,$L12
	lw	$28,16($sp)

	lh	$5,2($16)
	move	$6,$18
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	move	$4,$20
	addiu	$2,$5,7
	addiu	$5,$5,14
	slt	$3,$2,0
	movz	$5,$2,$3
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	sra	$5,$5,3

	move	$6,$21
	lw	$28,16($sp)
	move	$4,$17
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lb	$5,1($16)

	lw	$28,16($sp)
	lb	$6,0($16)
	lb	$5,1($16)
	sll	$6,$6,2
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	addu	$4,$17,$5
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	addu	$6,$21,$6

	li	$5,32			# 0x20
	.option	pic0
	jal	_set_secure.constprop.0
	.option	pic2
	move	$4,$18

	li	$2,1			# 0x1
	lw	$28,16($sp)
$L10:
	lw	$4,188($sp)
	lw	$3,0($22)
	beq	$4,$3,$L15
	lw	$31,228($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L12:
	addiu	$19,$19,-1
	bne	$19,$0,$L24
	lw	$25,%call16(uECC_get_rng)($28)

$L11:
	.option	pic0
	b	$L10
	.option	pic2
	move	$2,$0

$L15:
	lw	$fp,224($sp)
	lw	$23,220($sp)
	lw	$22,216($sp)
	lw	$21,212($sp)
	lw	$20,208($sp)
	lw	$19,204($sp)
	lw	$18,200($sp)
	lw	$17,196($sp)
	lw	$16,192($sp)
	jr	$31
	addiu	$sp,$sp,232

	.set	macro
	.set	reorder
	.end	uECC_make_key
	.size	uECC_make_key, .-uECC_make_key
	.align	2
	.globl	uECC_shared_secret
	.set	nomips16
	.set	nomicromips
	.ent	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
	.frame	$sp,224,$31		# vars= 152, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-224
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,212($sp)
	sw	$6,36($sp)
	lw	$23,%got(__stack_chk_guard)($28)
	lh	$6,2($7)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	sw	$21,204($sp)
	addiu	$21,$sp,84
	lw	$2,0($23)
	sw	$19,196($sp)
	addiu	$19,$sp,52
	sw	$31,220($sp)
	sw	$2,180($sp)
	addiu	$2,$6,7
	addiu	$6,$6,14
	sw	$18,192($sp)
	slt	$3,$2,0
	sw	$17,188($sp)
	movz	$6,$2,$3
	move	$17,$4
	move	$4,$19
	sw	$16,184($sp)
	move	$16,$7
	.cprestore	24
	addiu	$18,$sp,116
	sra	$6,$6,3
	sw	$fp,216($sp)
	sw	$22,208($sp)
	sw	$20,200($sp)
	sw	$19,44($sp)
	sw	$21,48($sp)
	lb	$20,1($7)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	lb	$fp,0($7)

	move	$5,$17
	lw	$28,24($sp)
	move	$6,$20
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$4,$18

	sll	$4,$fp,2
	lw	$28,24($sp)
	addu	$5,$17,$20
	addu	$4,$18,$4
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$6,$20

	move	$7,$16
	lw	$28,24($sp)
	move	$6,$21
	move	$5,$19
	lw	$25,%call16(regularize_k)($28)
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	move	$17,$2

	beq	$2,$0,$L29
	lw	$28,24($sp)

	sll	$3,$17,2
	lw	$25,%call16(uECC_generate_random_int)($28)
	addiu	$5,$16,4
	addiu	$2,$3,176
	addiu	$3,$sp,8
	move	$6,$fp
	addu	$22,$2,$3
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	lw	$4,-140($22)

	lw	$28,24($sp)
	beq	$2,$0,$L27
	move	$fp,$2

	lw	$7,-140($22)
$L26:
	sltu	$17,$17,1
	sw	$16,20($sp)
	sll	$17,$17,2
	lw	$25,%call16(EccPoint_mult)($28)
	addiu	$3,$sp,8
	addiu	$2,$17,176
	move	$5,$18
	addu	$17,$2,$3
	lhu	$2,2($16)
	move	$4,$18
	addiu	$2,$2,1
	seh	$2,$2
	sw	$2,16($sp)
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	lw	$6,-140($17)

	move	$6,$18
	lw	$28,24($sp)
	move	$5,$20
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$4,36($sp)

	move	$5,$16
	lw	$28,24($sp)
	lw	$25,%call16(EccPoint_isZero)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_isZero
1:	jalr	$25
	move	$4,$18

	sltu	$fp,$2,1
$L27:
	li	$5,8			# 0x8
	.option	pic0
	jal	_set_secure.constprop.0
	.option	pic2
	addiu	$4,$sp,44

	li	$5,32			# 0x20
	.option	pic0
	jal	_set_secure.constprop.0
	.option	pic2
	move	$4,$21

	li	$5,32			# 0x20
	.option	pic0
	jal	_set_secure.constprop.0
	.option	pic2
	move	$4,$19

	lw	$3,180($sp)
	lw	$2,0($23)
	beq	$3,$2,$L28
	lw	$28,24($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L29:
	.option	pic0
	b	$L26
	.option	pic2
	move	$7,$0

$L28:
	lw	$31,220($sp)
	move	$2,$fp
	lw	$fp,216($sp)
	lw	$23,212($sp)
	lw	$22,208($sp)
	lw	$21,204($sp)
	lw	$20,200($sp)
	lw	$19,196($sp)
	lw	$18,192($sp)
	lw	$17,188($sp)
	lw	$16,184($sp)
	jr	$31
	addiu	$sp,$sp,224

	.set	macro
	.set	reorder
	.end	uECC_shared_secret
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

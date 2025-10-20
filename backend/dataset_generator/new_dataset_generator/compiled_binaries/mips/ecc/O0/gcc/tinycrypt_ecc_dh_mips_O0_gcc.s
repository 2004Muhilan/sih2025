	.file	1 "tinycrypt_ecc_dh.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.section	.data.rel.ro,"aw"
	.align	2
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.half	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_set_secure
	.type	_set_secure, @function
_set_secure:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	move	$2,$5
	sw	$6,40($fp)
	sb	$2,36($fp)
	lbu	$2,36($fp)
	lw	$6,40($fp)
	move	$5,$2
	lw	$4,32($fp)
	lw	$2,%call16(memset)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	lw	$28,16($fp)
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	.end	_set_secure
	.size	_set_secure, .-_set_secure
	.align	2
	.globl	uECC_make_key_with_d
	.set	nomips16
	.set	nomicromips
	.ent	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
	.frame	$fp,152,$31		# vars= 120, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-152
	sw	$31,148($sp)
	sw	$fp,144($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	sw	$7,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,140($fp)
	addiu	$2,$fp,44
	li	$6,32			# 0x20
	lw	$5,28($fp)
	move	$4,$2
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$3,$fp,44
	addiu	$2,$fp,76
	lw	$6,24($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(EccPoint_compute_public_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L3
	nop

	lw	$2,24($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L4
	nop

	addiu	$2,$2,7
$L4:
	sra	$2,$2,3
	addiu	$3,$fp,44
	move	$6,$3
	move	$5,$2
	lw	$4,32($fp)
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,24($fp)
	lb	$2,1($2)
	addiu	$3,$fp,76
	move	$6,$3
	move	$5,$2
	lw	$4,36($fp)
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,24($fp)
	lb	$2,1($2)
	move	$3,$2
	lw	$2,36($fp)
	addu	$3,$2,$3
	lw	$2,24($fp)
	lb	$2,1($2)
	move	$5,$2
	lw	$2,24($fp)
	lb	$2,0($2)
	sll	$2,$2,2
	addiu	$4,$fp,76
	addu	$2,$4,$2
	move	$6,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,44
	li	$6,32			# 0x20
	move	$5,$0
	move	$4,$2
	.option	pic0
	jal	_set_secure
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,1			# 0x1
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L3:
	move	$2,$0
$L6:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,140($fp)
	lw	$2,0($2)
	beq	$3,$2,$L7
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L7:
	move	$2,$4
	move	$sp,$fp
	lw	$31,148($sp)
	lw	$fp,144($sp)
	addiu	$sp,$sp,152
	jr	$31
	nop

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
	.frame	$fp,224,$31		# vars= 192, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-224
	sw	$31,220($sp)
	sw	$fp,216($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,212($fp)
	sw	$0,44($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L16:
	lw	$2,%call16(uECC_get_rng)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,48($fp)
	lw	$2,48($fp)
	beq	$2,$0,$L10
	nop

	addiu	$3,$fp,84
	lw	$2,48($fp)
	li	$5,64			# 0x40
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L11
	nop

$L10:
	move	$2,$0
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L11:
	lw	$2,28($fp)
	addiu	$3,$2,36
	lw	$2,28($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L13
	nop

	addiu	$2,$2,31
$L13:
	sra	$2,$2,5
	seb	$2,$2
	addiu	$5,$fp,84
	addiu	$4,$fp,52
	move	$7,$2
	move	$6,$3
	lw	$2,%call16(uECC_vli_mmod)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$3,$fp,52
	addiu	$2,$fp,148
	lw	$6,28($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(EccPoint_compute_public_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L14
	nop

	lw	$2,28($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L15
	nop

	addiu	$2,$2,7
$L15:
	sra	$2,$2,3
	addiu	$3,$fp,52
	move	$6,$3
	move	$5,$2
	lw	$4,32($fp)
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	lb	$2,1($2)
	addiu	$3,$fp,148
	move	$6,$3
	move	$5,$2
	lw	$4,36($fp)
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	lb	$2,1($2)
	move	$3,$2
	lw	$2,36($fp)
	addu	$3,$2,$3
	lw	$2,28($fp)
	lb	$2,1($2)
	move	$5,$2
	lw	$2,28($fp)
	lb	$2,0($2)
	sll	$2,$2,2
	addiu	$4,$fp,148
	addu	$2,$4,$2
	move	$6,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,52
	li	$6,32			# 0x20
	move	$5,$0
	move	$4,$2
	.option	pic0
	jal	_set_secure
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,1			# 0x1
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L14:
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
$L9:
	lw	$2,44($fp)
	sltu	$2,$2,64
	bne	$2,$0,$L16
	nop

	move	$2,$0
$L17:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,212($fp)
	lw	$2,0($2)
	beq	$3,$2,$L18
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L18:
	move	$2,$4
	move	$sp,$fp
	lw	$31,220($sp)
	lw	$fp,216($sp)
	addiu	$sp,$sp,224
	jr	$31
	nop

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
	.frame	$fp,216,$31		# vars= 176, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-216
	sw	$31,212($sp)
	sw	$fp,208($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	sw	$7,32($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,204($fp)
	addiu	$2,$fp,76
	sw	$2,68($fp)
	addiu	$2,$fp,108
	sw	$2,72($fp)
	sw	$0,56($fp)
	lw	$2,32($fp)
	lbu	$2,0($2)
	sb	$2,54($fp)
	lw	$2,32($fp)
	lbu	$2,1($2)
	sb	$2,55($fp)
	lw	$2,32($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L20
	nop

	addiu	$2,$2,7
$L20:
	sra	$2,$2,3
	addiu	$3,$fp,76
	move	$6,$2
	lw	$5,40($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,55($fp)
	addiu	$3,$fp,140
	move	$6,$2
	lw	$5,44($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	addiu	$3,$fp,140
	addu	$4,$3,$2
	lb	$2,55($fp)
	lw	$3,44($fp)
	addu	$2,$3,$2
	lb	$3,55($fp)
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$4,$fp,108
	addiu	$3,$fp,76
	addiu	$2,$fp,76
	lw	$7,32($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(regularize_k)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,64($fp)
	lw	$2,%call16(uECC_get_rng)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L21
	nop

	lw	$2,64($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$3,-140($2)
	lw	$2,32($fp)
	addiu	$2,$2,4
	lb	$4,54($fp)
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_generate_random_int)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L22
	nop

	sw	$0,60($fp)
	.option	pic0
	b	$L23
	nop

	.option	pic2
$L22:
	lw	$2,64($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$2,-140($2)
	sw	$2,56($fp)
$L21:
	lw	$2,64($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$4,-140($2)
	lw	$2,32($fp)
	lh	$2,2($2)
	andi	$2,$2,0xffff
	addiu	$2,$2,1
	andi	$2,$2,0xffff
	seh	$2,$2
	addiu	$5,$fp,140
	addiu	$8,$fp,140
	lw	$3,32($fp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$7,56($fp)
	move	$6,$4
	move	$4,$8
	lw	$2,%call16(EccPoint_mult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,55($fp)
	addiu	$3,$fp,140
	move	$6,$3
	move	$5,$2
	lw	$4,36($fp)
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$2,$fp,140
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%call16(EccPoint_isZero)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,EccPoint_isZero
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,60($fp)
$L23:
	addiu	$2,$fp,68
	li	$6,8			# 0x8
	move	$5,$0
	move	$4,$2
	.option	pic0
	jal	_set_secure
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,108
	li	$6,32			# 0x20
	move	$5,$0
	move	$4,$2
	.option	pic0
	jal	_set_secure
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,76
	li	$6,32			# 0x20
	move	$5,$0
	move	$4,$2
	.option	pic0
	jal	_set_secure
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,60($fp)
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,204($fp)
	lw	$2,0($2)
	beq	$3,$2,$L25
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L25:
	move	$2,$4
	move	$sp,$fp
	lw	$31,212($sp)
	lw	$fp,208($sp)
	addiu	$sp,$sp,216
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_shared_secret
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

	.file	1 "tinycrypt_aes_decrypt.c"
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
	.ent	mult_row_column
	.type	mult_row_column, @function
mult_row_column:
	.frame	$sp,72,$31		# vars= 8, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	move	$17,$4
	sw	$16,32($sp)
	move	$16,$5
	.cprestore	16
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($5)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$23,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	move	$22,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	move	$20,$2
	lbu	$3,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lbu	$5,2($16)
	lw	$3,28($sp)
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lbu	$4,3($16)
	lw	$3,28($sp)
	lw	$28,16($sp)
	xor	$3,$3,$4
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	lw	$25,%call16(_double_byte)($28)
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	xor	$2,$2,$18
	sb	$2,0($17)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$23,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$fp,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$22,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	move	$20,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lbu	$5,2($16)
	lbu	$4,3($16)
	sw	$2,28($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$fp,$fp,$5

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lbu	$4,3($16)
	lw	$3,28($sp)
	lw	$28,16($sp)
	xor	$fp,$fp,$4
	xor	$23,$23,$fp
	xor	$22,$22,$23
	xor	$21,$21,$22
	lw	$25,%call16(_double_byte)($28)
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$3,$3,$19
	xor	$18,$18,$3
	xor	$2,$2,$18
	sb	$2,1($17)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$23,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$18,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$22,$2
	lbu	$5,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$20,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lbu	$4,3($16)
	lw	$3,28($sp)
	lw	$28,16($sp)
	xor	$3,$3,$4
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	lw	$25,%call16(_double_byte)($28)
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	xor	$2,$2,$18
	sb	$2,2($17)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	move	$20,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$22,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lbu	$3,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$22,$22,$3

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lbu	$3,2($16)
	lw	$28,16($sp)
	lbu	$4,3($16)
	xor	$22,$22,$3
	xor	$21,$21,$22
	lw	$25,%call16(_double_byte)($28)
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$19,$2,$18

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$19,$19,0x00ff

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$18,$18,$19

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lbu	$4,3($16)
	move	$16,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$16,$16,$18

	xor	$2,$2,$16
	sb	$2,3($17)
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	mult_row_column
	.size	mult_row_column, .-mult_row_column
	.align	2
	.globl	tc_aes128_set_decrypt_key
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(tc_aes128_set_encrypt_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_aes128_set_encrypt_key
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	tc_aes128_set_decrypt_key
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	2
	.globl	tc_aes_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
	.frame	$sp,168,$31		# vars= 104, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-168
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,164($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$fp,160($sp)
	sw	$23,156($sp)
	sw	$22,152($sp)
	sw	$21,148($sp)
	sw	$20,144($sp)
	sw	$19,140($sp)
	sw	$18,136($sp)
	sw	$17,132($sp)
	sw	$16,128($sp)
	.cprestore	16
	sw	$2,80($sp)
	sw	$4,84($sp)
	lw	$3,0($2)
	sw	$3,124($sp)
	beq	$4,$0,$L13
	nop

	beq	$5,$0,$L13
	move	$2,$5

	beq	$6,$0,$L13
	move	$22,$6

	lw	$25,%call16(_copy)($28)
	addiu	$3,$sp,92
	li	$7,16			# 0x10
	li	$5,16			# 0x10
	sw	$3,24($sp)
	move	$4,$3
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$6,$2

	addiu	$2,$sp,108
	lw	$9,160($22)
	addiu	$fp,$22,144
	lw	$4,164($22)
	lw	$3,168($22)
	srl	$5,$9,24
	lbu	$18,93($sp)
	srl	$19,$4,24
	lbu	$17,94($sp)
	lbu	$8,99($sp)
	srl	$13,$3,16
	sw	$5,32($sp)
	srl	$12,$3,8
	sw	$19,36($sp)
	srl	$23,$3,24
	lbu	$5,103($sp)
	srl	$31,$9,16
	lbu	$19,92($sp)
	srl	$24,$9,8
	lbu	$16,95($sp)
	srl	$15,$4,16
	xor	$3,$3,$5
	lw	$5,32($sp)
	lbu	$10,98($sp)
	srl	$14,$4,8
	lbu	$25,97($sp)
	xor	$31,$31,$18
	xor	$24,$24,$17
	lbu	$18,96($sp)
	lbu	$17,100($sp)
	xor	$19,$5,$19
	lw	$5,36($sp)
	xor	$4,$4,$8
	lbu	$6,102($sp)
	xor	$9,$9,$16
	lbu	$7,101($sp)
	xor	$14,$14,$10
	lbu	$20,105($sp)
	andi	$8,$4,0x00ff
	lbu	$16,104($sp)
	addiu	$4,$sp,96
	lw	$28,16($sp)
	xor	$15,$15,$25
	sw	$2,28($sp)
	lui	$2,%hi(inv_sbox)
	xor	$18,$5,$18
	sb	$19,92($sp)
	andi	$31,$31,0x00ff
	sb	$18,96($sp)
	andi	$24,$24,0x00ff
	sb	$31,93($sp)
	andi	$9,$9,0x00ff
	sb	$24,94($sp)
	andi	$15,$15,0x00ff
	sb	$9,95($sp)
	andi	$14,$14,0x00ff
	sb	$15,97($sp)
	xor	$17,$23,$17
	sb	$14,98($sp)
	xor	$12,$12,$6
	sb	$8,99($sp)
	addiu	$6,$sp,112
	addiu	$21,$2,%lo(inv_sbox)
	lw	$2,172($22)
	sb	$17,100($sp)
	xor	$13,$13,$7
	sw	$4,56($sp)
	andi	$7,$3,0x00ff
	sw	$6,68($sp)
	addiu	$6,$sp,100
	lbu	$4,107($sp)
	srl	$3,$2,24
	srl	$11,$2,16
	sw	$6,60($sp)
	srl	$5,$2,8
	sb	$7,103($sp)
	xor	$2,$2,$4
	sw	$22,52($sp)
	andi	$6,$2,0x00ff
	addiu	$2,$sp,116
	sb	$6,107($sp)
	xor	$16,$3,$16
	lbu	$3,106($sp)
	sw	$2,72($sp)
	addiu	$2,$sp,104
	xor	$11,$11,$20
	sb	$16,104($sp)
	xor	$3,$5,$3
	sw	$2,64($sp)
	addiu	$2,$sp,120
	andi	$13,$13,0x00ff
	andi	$12,$12,0x00ff
	sb	$13,101($sp)
	andi	$11,$11,0x00ff
	sb	$12,102($sp)
	andi	$10,$3,0x00ff
	sb	$11,105($sp)
	sb	$10,106($sp)
	.option	pic0
	b	$L9
	.option	pic2
	sw	$2,76($sp)

$L15:
	lbu	$19,92($sp)
	lbu	$11,105($sp)
	lbu	$12,102($sp)
	lbu	$8,99($sp)
	lbu	$18,96($sp)
	lbu	$31,93($sp)
	lbu	$10,106($sp)
	lbu	$7,103($sp)
	lbu	$17,100($sp)
	lbu	$15,97($sp)
	lbu	$24,94($sp)
	lbu	$6,107($sp)
	lbu	$16,104($sp)
	lbu	$13,101($sp)
	lbu	$14,98($sp)
	lbu	$9,95($sp)
$L9:
	move	$4,$0
	lw	$25,%call16(_copy)($28)
	move	$5,$0
	ins	$4,$18,24,8
	move	$3,$0
	move	$2,$0
	ins	$5,$19,24,8
	ins	$4,$31,16,8
	ins	$3,$17,24,8
	ins	$2,$16,24,8
	ins	$5,$11,16,8
	ins	$3,$15,16,8
	ins	$2,$13,16,8
	ins	$4,$10,8,8
	ins	$5,$12,8,8
	ins	$3,$24,8,8
	ins	$2,$14,8,8
	ins	$4,$7,0,8
	ins	$5,$8,0,8
	ins	$3,$6,0,8
	lw	$6,28($sp)
	ins	$2,$9,0,8
	sw	$4,112($sp)
	sw	$5,108($sp)
	li	$7,16			# 0x10
	sw	$3,116($sp)
	li	$5,16			# 0x10
	sw	$2,120($sp)
	addiu	$fp,$fp,-16
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	lw	$4,24($sp)

	move	$7,$0
	lbu	$25,97($sp)
	move	$5,$0
	lbu	$16,96($sp)
	move	$6,$0
	lbu	$14,98($sp)
	move	$4,$0
	lbu	$11,99($sp)
	addu	$25,$21,$25
	lbu	$9,101($sp)
	addu	$16,$21,$16
	lbu	$8,102($sp)
	addu	$14,$21,$14
	lbu	$10,100($sp)
	addu	$11,$21,$11
	lbu	$18,104($sp)
	addu	$9,$21,$9
	lw	$3,20($fp)
	addu	$8,$21,$8
	lbu	$19,103($sp)
	addu	$10,$21,$10
	lbu	$17,105($sp)
	addu	$18,$21,$18
	lbu	$15,92($sp)
	srl	$23,$3,24
	lbu	$25,0($25)
	addu	$19,$21,$19
	lw	$2,24($fp)
	addu	$17,$21,$17
	lbu	$13,93($sp)
	addu	$15,$21,$15
	lbu	$16,0($16)
	lw	$22,28($fp)
	lbu	$14,0($14)
	addu	$13,$21,$13
	lbu	$11,0($11)
	xor	$16,$23,$16
	lbu	$9,0($9)
	srl	$23,$2,24
	lbu	$8,0($8)
	ins	$7,$16,24,8
	lw	$20,16($fp)
	lbu	$18,0($18)
	lbu	$31,106($sp)
	lbu	$24,107($sp)
	srl	$12,$20,24
	lbu	$19,0($19)
	sb	$25,35($sp)
	addu	$31,$21,$31
	sb	$14,39($sp)
	srl	$14,$22,24
	sb	$11,43($sp)
	srl	$11,$3,16
	sb	$9,47($sp)
	xor	$14,$14,$18
	sb	$8,51($sp)
	srl	$8,$20,16
	lbu	$25,0($10)
	srl	$9,$22,16
	lbu	$17,0($17)
	srl	$10,$2,16
	lbu	$16,0($15)
	ins	$4,$14,24,8
	xor	$25,$23,$25
	lbu	$18,94($sp)
	lw	$23,32($sp)
	ins	$5,$25,24,8
	lbu	$25,0($13)
	xor	$12,$12,$16
	lbu	$13,95($sp)
	ins	$6,$12,24,8
	xor	$11,$11,$23
	lw	$23,44($sp)
	xor	$8,$8,$25
	lbu	$31,0($31)
	addu	$12,$21,$18
	addu	$16,$21,$13
	ins	$6,$8,16,8
	lw	$8,48($sp)
	addu	$24,$21,$24
	lbu	$18,0($12)
	xor	$9,$9,$17
	lbu	$16,0($16)
	srl	$14,$2,8
	lw	$17,24($sp)
	xor	$10,$10,$23
	lbu	$24,0($24)
	ins	$4,$9,16,8
	lw	$9,36($sp)
	srl	$13,$22,8
	xor	$14,$14,$8
	lw	$8,40($sp)
	ins	$5,$10,16,8
	srl	$15,$3,8
	srl	$12,$20,8
	ins	$7,$11,16,8
	xor	$13,$13,$31
	xor	$15,$15,$9
	ins	$5,$14,8,8
	ins	$4,$13,8,8
	xor	$12,$12,$18
	xor	$3,$3,$8
	ins	$7,$15,8,8
	xor	$8,$20,$16
	lw	$16,28($sp)
	ins	$6,$12,8,8
	xor	$2,$2,$19
	xor	$9,$22,$24
	ins	$5,$2,0,8
	ins	$4,$9,0,8
	ins	$7,$3,0,8
	sw	$5,100($sp)
	ins	$6,$8,0,8
	sw	$4,104($sp)
	move	$5,$17
	sw	$7,96($sp)
	move	$4,$16
	.option	pic0
	jal	mult_row_column
	.option	pic2
	sw	$6,92($sp)

	lw	$5,56($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,68($sp)

	lw	$5,60($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,72($sp)

	lw	$5,64($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,76($sp)

	li	$7,16			# 0x10
	lw	$28,16($sp)
	li	$5,16			# 0x10
	move	$6,$16
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$17

	lw	$2,52($sp)
	bne	$2,$fp,$L15
	lw	$28,16($sp)

	lbu	$6,96($sp)
	move	$5,$0
	lbu	$10,100($sp)
	move	$22,$2
	lbu	$8,92($sp)
	move	$4,$0
	lbu	$9,104($sp)
	move	$2,$0
	lbu	$7,93($sp)
	ins	$5,$6,24,8
	move	$3,$0
	lbu	$6,97($sp)
	ins	$4,$10,24,8
	lbu	$10,101($sp)
	ins	$2,$8,24,8
	lbu	$8,106($sp)
	ins	$3,$9,24,8
	lbu	$9,105($sp)
	ins	$5,$7,16,8
	lbu	$7,94($sp)
	ins	$4,$6,16,8
	lbu	$6,98($sp)
	ins	$3,$10,16,8
	lbu	$10,102($sp)
	ins	$5,$8,8,8
	lbu	$8,107($sp)
	ins	$2,$9,16,8
	lbu	$9,103($sp)
	ins	$4,$7,8,8
	lbu	$7,95($sp)
	ins	$3,$6,8,8
	lbu	$6,99($sp)
	ins	$4,$8,0,8
	lw	$25,%call16(_copy)($28)
	ins	$2,$10,8,8
	ins	$5,$9,0,8
	sw	$4,116($sp)
	ins	$3,$7,0,8
	lw	$4,24($sp)
	ins	$2,$6,0,8
	lw	$6,28($sp)
	li	$7,16			# 0x10
	sw	$5,112($sp)
	li	$5,16			# 0x10
	sw	$3,120($sp)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	sw	$2,108($sp)

	move	$8,$0
	lbu	$19,98($sp)
	move	$7,$0
	lbu	$18,99($sp)
	move	$9,$0
	lbu	$31,102($sp)
	move	$6,$0
	lbu	$25,103($sp)
	addu	$19,$21,$19
	lbu	$14,96($sp)
	addu	$18,$21,$18
	lbu	$20,97($sp)
	addu	$31,$21,$31
	lbu	$17,100($sp)
	addu	$25,$21,$25
	lbu	$16,101($sp)
	addu	$14,$21,$14
	lbu	$24,104($sp)
	addu	$20,$21,$20
	lbu	$10,93($sp)
	addu	$17,$21,$17
	lbu	$15,105($sp)
	addu	$16,$21,$16
	lbu	$19,0($19)
	addu	$24,$21,$24
	lbu	$18,0($18)
	addu	$10,$21,$10
	lbu	$31,0($31)
	addu	$15,$21,$15
	lbu	$25,0($25)
	lw	$4,8($22)
	lw	$3,12($22)
	lw	$5,4($22)
	lw	$2,0($22)
	srl	$fp,$4,16
	lw	$28,16($sp)
	lbu	$23,0($20)
	srl	$20,$4,24
	lbu	$16,0($16)
	srl	$22,$2,24
	lbu	$13,106($sp)
	lbu	$12,107($sp)
	lbu	$11,92($sp)
	xor	$fp,$fp,$16
	lbu	$14,0($14)
	addu	$13,$21,$13
	lbu	$17,0($17)
	addu	$12,$21,$12
	sw	$10,44($sp)
	addu	$11,$21,$11
	sb	$19,31($sp)
	srl	$19,$3,24
	sb	$18,35($sp)
	xor	$17,$20,$17
	sb	$31,39($sp)
	srl	$20,$3,16
	sb	$25,43($sp)
	srl	$25,$5,24
	lbu	$24,0($24)
	ins	$7,$17,24,8
	lbu	$15,0($15)
	xor	$14,$25,$14
	lbu	$25,0($11)
	srl	$11,$5,8
	xor	$19,$19,$24
	lbu	$24,94($sp)
	ins	$8,$19,24,8
	lbu	$31,0($10)
	xor	$15,$20,$15
	lbu	$13,0($13)
	ins	$8,$15,16,8
	lw	$15,28($sp)
	srl	$10,$4,8
	lbu	$12,0($12)
	ins	$9,$14,24,8
	lbu	$14,95($sp)
	xor	$11,$11,$15
	lw	$15,36($sp)
	ins	$7,$fp,16,8
	lw	$16,24($sp)
	addu	$24,$21,$24
	xor	$10,$10,$15
	ins	$7,$10,8,8
	lw	$10,32($sp)
	srl	$18,$5,16
	lbu	$19,0($24)
	srl	$20,$2,16
	xor	$22,$22,$25
	lw	$25,%call16(_copy)($28)
	addu	$14,$21,$14
	ins	$6,$22,24,8
	xor	$31,$20,$31
	xor	$5,$5,$10
	lw	$10,40($sp)
	srl	$17,$3,8
	lbu	$14,0($14)
	srl	$24,$2,8
	xor	$18,$18,$23
	ins	$6,$31,16,8
	ins	$9,$18,16,8
	xor	$17,$17,$13
	xor	$24,$24,$19
	xor	$4,$4,$10
	ins	$9,$11,8,8
	ins	$6,$24,8,8
	ins	$8,$17,8,8
	ins	$7,$4,0,8
	lw	$4,84($sp)
	xor	$3,$3,$12
	xor	$2,$2,$14
	sw	$7,100($sp)
	ins	$9,$5,0,8
	ins	$8,$3,0,8
	ins	$6,$2,0,8
	sw	$9,96($sp)
	li	$7,16			# 0x10
	sw	$8,104($sp)
	li	$5,16			# 0x10
	sw	$6,92($sp)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$6,$16

	li	$6,16			# 0x10
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	move	$4,$16

	li	$2,1			# 0x1
	.option	pic0
	b	$L6
	.option	pic2
	lw	$28,16($sp)

$L13:
	move	$2,$0
$L6:
	lw	$3,80($sp)
	lw	$4,124($sp)
	lw	$3,0($3)
	bne	$4,$3,$L16
	lw	$31,164($sp)

	lw	$fp,160($sp)
	lw	$23,156($sp)
	lw	$22,152($sp)
	lw	$21,148($sp)
	lw	$20,144($sp)
	lw	$19,140($sp)
	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	jr	$31
	addiu	$sp,$sp,168

$L16:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	tc_aes_decrypt
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.rdata
	.align	2
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.ascii	"R\011j\32506\2458\277@\243\236\201\363\327\373|\3439\202"
	.ascii	"\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356"
	.ascii	"L\225\013B\372\303N\010.\241f(\331$\262v[\242Im\213\321%"
	.ascii	"r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355"
	.ascii	"\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323"
	.ascii	"\012\367\344X\005\270\263E\006\320,\036\217\312?\017\002"
	.ascii	"\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350"
	.ascii	"\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033"
	.ascii	"\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503"
	.ascii	"\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\015"
	.ascii	"-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353"
	.ascii	"\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\014}"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

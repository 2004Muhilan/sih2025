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
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
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
	move	$17,$4
	move	$16,$5
	lbu	$4,0($5)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$23,$2
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$22,$2
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$21,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$20,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$fp,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,28($sp)
	lbu	$2,2($16)
	xor	$fp,$fp,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,3($16)
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	lw	$3,28($sp)
	xor	$18,$3,$18
	xor	$2,$2,$18
	sb	$2,0($17)
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$23,$2
	lbu	$fp,0($16)
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$22,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$21,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$20,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$18,$2
	lbu	$2,2($16)
	xor	$fp,$fp,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,28($sp)
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,3($16)
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	lw	$3,28($sp)
	xor	$18,$3,$18
	xor	$2,$2,$18
	sb	$2,1($17)
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$23,$2
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$22,$2
	lbu	$fp,0($16)
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$21,$2
	lbu	$2,1($16)
	xor	$fp,$fp,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$20,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$2,28($sp)
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,3($16)
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	lw	$3,28($sp)
	xor	$18,$3,$18
	xor	$2,$2,$18
	sb	$2,2($17)
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,0($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$22,$2
	lbu	$19,0($16)
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$21,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$20,$2
	lbu	$2,1($16)
	xor	$19,$19,$2
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,2($16)
	xor	$19,$19,$3
	xor	$18,$18,$19
	xor	$22,$22,$18
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$20,$2,$20
	andi	$20,$20,0x00ff
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	xor	$19,$19,$20
	xor	$18,$18,$19
	xor	$2,$2,$18
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(tc_aes128_set_encrypt_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_aes128_set_encrypt_key
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,112,$31		# vars= 48, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$23,100($sp)
	sw	$22,96($sp)
	sw	$21,92($sp)
	sw	$20,88($sp)
	sw	$19,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($sp)
	beq	$4,$0,$L11
	nop

	beq	$5,$0,$L12
	move	$22,$6

	beq	$6,$0,$L13
	addiu	$4,$sp,36

	li	$7,16			# 0x10
	move	$6,$5
	li	$5,16			# 0x10
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$2,160($22)
	srl	$3,$2,24
	lbu	$4,36($sp)
	xor	$3,$3,$4
	sb	$3,36($sp)
	srl	$3,$2,16
	lbu	$4,37($sp)
	xor	$3,$3,$4
	sb	$3,37($sp)
	srl	$3,$2,8
	lbu	$4,38($sp)
	xor	$3,$3,$4
	sb	$3,38($sp)
	lbu	$3,39($sp)
	xor	$2,$2,$3
	sb	$2,39($sp)
	lw	$2,164($22)
	srl	$3,$2,24
	lbu	$4,40($sp)
	xor	$3,$3,$4
	sb	$3,40($sp)
	srl	$3,$2,16
	lbu	$4,41($sp)
	xor	$3,$3,$4
	sb	$3,41($sp)
	srl	$3,$2,8
	lbu	$4,42($sp)
	xor	$3,$3,$4
	sb	$3,42($sp)
	lbu	$3,43($sp)
	xor	$2,$2,$3
	sb	$2,43($sp)
	lw	$2,168($22)
	srl	$3,$2,24
	lbu	$4,44($sp)
	xor	$3,$3,$4
	sb	$3,44($sp)
	srl	$3,$2,16
	lbu	$4,45($sp)
	xor	$3,$3,$4
	sb	$3,45($sp)
	srl	$3,$2,8
	lbu	$4,46($sp)
	xor	$3,$3,$4
	sb	$3,46($sp)
	lbu	$3,47($sp)
	xor	$2,$2,$3
	sb	$2,47($sp)
	lw	$2,172($22)
	srl	$3,$2,24
	lbu	$4,48($sp)
	xor	$3,$3,$4
	sb	$3,48($sp)
	srl	$3,$2,16
	lbu	$4,49($sp)
	xor	$3,$3,$4
	sb	$3,49($sp)
	srl	$3,$2,8
	lbu	$4,50($sp)
	xor	$3,$3,$4
	sb	$3,50($sp)
	lbu	$3,51($sp)
	xor	$2,$2,$3
	sb	$2,51($sp)
	addiu	$19,$22,144
	sw	$22,24($sp)
	addiu	$16,$sp,52
	addiu	$20,$sp,36
	lui	$17,%hi(inv_sbox)
	addiu	$17,$17,%lo(inv_sbox)
	addiu	$fp,$sp,40
	addiu	$23,$sp,56
	lbu	$2,36($sp)
$L19:
	sb	$2,52($sp)
	lbu	$2,49($sp)
	sb	$2,53($sp)
	lbu	$2,46($sp)
	sb	$2,54($sp)
	lbu	$2,43($sp)
	sb	$2,55($sp)
	lbu	$2,40($sp)
	sb	$2,56($sp)
	lbu	$2,37($sp)
	sb	$2,57($sp)
	lbu	$2,50($sp)
	sb	$2,58($sp)
	lbu	$2,47($sp)
	sb	$2,59($sp)
	lbu	$2,44($sp)
	sb	$2,60($sp)
	lbu	$2,41($sp)
	sb	$2,61($sp)
	lbu	$2,38($sp)
	sb	$2,62($sp)
	lbu	$2,51($sp)
	sb	$2,63($sp)
	lbu	$2,48($sp)
	sb	$2,64($sp)
	lbu	$2,45($sp)
	sb	$2,65($sp)
	lbu	$2,42($sp)
	sb	$2,66($sp)
	lbu	$2,39($sp)
	sb	$2,67($sp)
	li	$7,16			# 0x10
	move	$6,$16
	li	$5,16			# 0x10
	move	$4,$20
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$18,$20
	move	$21,$16
	move	$2,$20
$L7:
	lbu	$3,0($2)
	addu	$3,$3,$17
	lbu	$3,0($3)
	sb	$3,0($2)
	addiu	$2,$2,1
	bne	$2,$16,$L7
	lbu	$4,36($sp)

	lw	$2,0($19)
	srl	$3,$2,24
	xor	$3,$3,$4
	sb	$3,36($sp)
	srl	$3,$2,16
	lbu	$4,37($sp)
	xor	$3,$3,$4
	sb	$3,37($sp)
	srl	$3,$2,8
	lbu	$4,38($sp)
	xor	$3,$3,$4
	sb	$3,38($sp)
	lbu	$3,39($sp)
	xor	$2,$2,$3
	sb	$2,39($sp)
	lw	$2,4($19)
	srl	$3,$2,24
	lbu	$4,40($sp)
	xor	$3,$3,$4
	sb	$3,40($sp)
	srl	$3,$2,16
	lbu	$4,41($sp)
	xor	$3,$3,$4
	sb	$3,41($sp)
	srl	$3,$2,8
	lbu	$4,42($sp)
	xor	$3,$3,$4
	sb	$3,42($sp)
	lbu	$3,43($sp)
	xor	$2,$2,$3
	sb	$2,43($sp)
	lw	$2,8($19)
	srl	$3,$2,24
	lbu	$4,44($sp)
	xor	$3,$3,$4
	sb	$3,44($sp)
	srl	$3,$2,16
	lbu	$4,45($sp)
	xor	$3,$3,$4
	sb	$3,45($sp)
	srl	$3,$2,8
	lbu	$4,46($sp)
	xor	$3,$3,$4
	sb	$3,46($sp)
	lbu	$3,47($sp)
	xor	$2,$2,$3
	sb	$2,47($sp)
	lw	$2,12($19)
	srl	$3,$2,24
	lbu	$4,48($sp)
	xor	$3,$3,$4
	sb	$3,48($sp)
	srl	$3,$2,16
	lbu	$4,49($sp)
	xor	$3,$3,$4
	sb	$3,49($sp)
	srl	$3,$2,8
	lbu	$4,50($sp)
	xor	$3,$3,$4
	sb	$3,50($sp)
	lbu	$3,51($sp)
	xor	$2,$2,$3
	sb	$2,51($sp)
	move	$5,$20
	move	$4,$16
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$5,$fp
	move	$4,$23
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($sp)
	addiu	$5,$sp,44
	addiu	$4,$sp,60
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($sp)
	addiu	$5,$sp,48
	addiu	$4,$sp,64
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($sp)
	li	$7,16			# 0x10
	move	$6,$16
	li	$5,16			# 0x10
	move	$4,$20
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$19,$19,-16
	lw	$2,24($sp)
	bne	$19,$2,$L19
	lbu	$2,36($sp)

	sb	$2,52($sp)
	lbu	$2,49($sp)
	sb	$2,53($sp)
	lbu	$2,46($sp)
	sb	$2,54($sp)
	lbu	$2,43($sp)
	sb	$2,55($sp)
	lbu	$2,40($sp)
	sb	$2,56($sp)
	lbu	$2,37($sp)
	sb	$2,57($sp)
	lbu	$2,50($sp)
	sb	$2,58($sp)
	lbu	$2,47($sp)
	sb	$2,59($sp)
	lbu	$2,44($sp)
	sb	$2,60($sp)
	lbu	$2,41($sp)
	sb	$2,61($sp)
	lbu	$2,38($sp)
	sb	$2,62($sp)
	lbu	$2,51($sp)
	sb	$2,63($sp)
	lbu	$2,48($sp)
	sb	$2,64($sp)
	lbu	$2,45($sp)
	sb	$2,65($sp)
	lbu	$2,42($sp)
	sb	$2,66($sp)
	lbu	$2,39($sp)
	sb	$2,67($sp)
	li	$7,16			# 0x10
	addiu	$6,$sp,52
	li	$5,16			# 0x10
	addiu	$4,$sp,36
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lui	$3,%hi(inv_sbox)
	addiu	$3,$3,%lo(inv_sbox)
$L9:
	lbu	$2,0($18)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,0($18)
	addiu	$18,$18,1
	bne	$18,$21,$L9
	lbu	$4,36($sp)

	lw	$2,0($22)
	srl	$3,$2,24
	xor	$3,$3,$4
	sb	$3,36($sp)
	srl	$3,$2,16
	lbu	$4,37($sp)
	xor	$3,$3,$4
	sb	$3,37($sp)
	srl	$3,$2,8
	lbu	$4,38($sp)
	xor	$3,$3,$4
	sb	$3,38($sp)
	lbu	$3,39($sp)
	xor	$2,$2,$3
	sb	$2,39($sp)
	lw	$2,4($22)
	srl	$3,$2,24
	lbu	$4,40($sp)
	xor	$3,$3,$4
	sb	$3,40($sp)
	srl	$3,$2,16
	lbu	$4,41($sp)
	xor	$3,$3,$4
	sb	$3,41($sp)
	srl	$3,$2,8
	lbu	$4,42($sp)
	xor	$3,$3,$4
	sb	$3,42($sp)
	lbu	$3,43($sp)
	xor	$2,$2,$3
	sb	$2,43($sp)
	lw	$2,8($22)
	srl	$3,$2,24
	lbu	$4,44($sp)
	xor	$3,$3,$4
	sb	$3,44($sp)
	srl	$3,$2,16
	lbu	$4,45($sp)
	xor	$3,$3,$4
	sb	$3,45($sp)
	srl	$3,$2,8
	lbu	$4,46($sp)
	xor	$3,$3,$4
	sb	$3,46($sp)
	lbu	$3,47($sp)
	xor	$2,$2,$3
	sb	$2,47($sp)
	lw	$2,12($22)
	srl	$3,$2,24
	lbu	$4,48($sp)
	xor	$3,$3,$4
	sb	$3,48($sp)
	srl	$3,$2,16
	lbu	$4,49($sp)
	xor	$3,$3,$4
	sb	$3,49($sp)
	srl	$3,$2,8
	lbu	$4,50($sp)
	xor	$3,$3,$4
	sb	$3,50($sp)
	lbu	$3,51($sp)
	xor	$2,$2,$3
	sb	$2,51($sp)
	li	$7,16			# 0x10
	addiu	$16,$sp,36
	move	$6,$16
	li	$5,16			# 0x10
	lw	$4,28($sp)
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,16			# 0x10
	move	$5,$0
	move	$4,$16
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$2,1			# 0x1
$L5:
	lw	$4,68($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L18
	lw	$31,108($sp)

	lw	$fp,104($sp)
	lw	$23,100($sp)
	lw	$22,96($sp)
	lw	$21,92($sp)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	jr	$31
	addiu	$sp,$sp,112

$L11:
	.option	pic0
	b	$L5
	.option	pic2
	move	$2,$0

$L12:
	.option	pic0
	b	$L5
	.option	pic2
	move	$2,$0

$L13:
	.option	pic0
	b	$L5
	.option	pic2
	move	$2,$0

$L18:
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

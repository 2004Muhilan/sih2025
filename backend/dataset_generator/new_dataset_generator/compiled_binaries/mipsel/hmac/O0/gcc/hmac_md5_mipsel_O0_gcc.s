	.file	1 "hmac_md5.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_md5
	.set	nomips16
	.set	nomicromips
	.ent	hmac_md5
	.type	hmac_md5, @function
hmac_md5:
	.frame	$fp,192,$31		# vars= 160, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-192
	sw	$31,188($sp)
	sw	$fp,184($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,196($fp)
	sw	$6,32($fp)
	sw	$7,204($fp)
	lw	$2,208($fp)
	sw	$2,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,180($fp)
	sw	$0,44($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L7:
	lw	$3,44($fp)
	lw	$2,196($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L3
	nop

	lw	$3,36($fp)
	lw	$2,44($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	xori	$2,$2,0x36
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L3:
	li	$2,54			# 0x36
$L4:
	lw	$3,44($fp)
	addiu	$3,$3,184
	addu	$3,$3,$fp
	sb	$2,-132($3)
	lw	$3,44($fp)
	lw	$2,196($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L5
	nop

	lw	$3,36($fp)
	lw	$2,44($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	xori	$2,$2,0x5c
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L5:
	li	$2,92			# 0x5c
$L6:
	lw	$3,44($fp)
	addiu	$3,$3,184
	addu	$3,$3,$fp
	sb	$2,-68($3)
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
$L2:
	lw	$2,44($fp)
	sltu	$2,$2,64
	bne	$2,$0,$L7
	nop

	sw	$0,48($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L9:
	lw	$2,48($fp)
	addiu	$2,$2,184
	addu	$2,$2,$fp
	lbu	$4,-132($2)
	lw	$2,48($fp)
	addiu	$2,$2,184
	addu	$2,$2,$fp
	lbu	$3,-68($2)
	lw	$2,48($fp)
	lw	$5,28($fp)
	addu	$2,$5,$2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,48($fp)
	addiu	$2,$2,1
	sw	$2,48($fp)
$L8:
	lw	$2,48($fp)
	slt	$2,$2,16
	bne	$2,$0,$L9
	nop

	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,180($fp)
	lw	$2,0($2)
	beq	$3,$2,$L10
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L10:
	move	$sp,$fp
	lw	$31,188($sp)
	lw	$fp,184($sp)
	addiu	$sp,$sp,192
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hmac_md5
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

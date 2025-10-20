	.file	1 "xor_simple.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_cipher_simple
	.set	nomips16
	.set	nomicromips
	.ent	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$7,28($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,4($fp)
	lw	$2,28($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lw	$5,16($fp)
	lw	$2,4($fp)
	addu	$2,$5,$2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$3,4($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L3
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_cipher_simple
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	2
	.globl	xor_encrypt_simple
	.set	nomips16
	.set	nomicromips
	.ent	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	lw	$6,36($fp)
	lw	$5,32($fp)
	lw	$4,48($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$7,44($fp)
	lw	$6,40($fp)
	lw	$5,36($fp)
	lw	$4,48($fp)
	.option	pic0
	jal	xor_cipher_simple
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_encrypt_simple
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	2
	.globl	xor_decrypt_simple
	.set	nomips16
	.set	nomicromips
	.ent	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	lw	$6,36($fp)
	lw	$5,32($fp)
	lw	$4,48($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$7,44($fp)
	lw	$6,40($fp)
	lw	$5,36($fp)
	lw	$4,48($fp)
	.option	pic0
	jal	xor_cipher_simple
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_decrypt_simple
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

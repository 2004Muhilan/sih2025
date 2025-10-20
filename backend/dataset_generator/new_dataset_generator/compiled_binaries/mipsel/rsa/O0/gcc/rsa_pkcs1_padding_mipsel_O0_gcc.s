	.file	1 "rsa_pkcs1_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rsa_pkcs1_pad
	.set	nomips16
	.set	nomicromips
	.ent	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$2,48($fp)
	sb	$0,0($2)
	lw	$2,48($fp)
	addiu	$2,$2,1
	li	$3,2			# 0x2
	sb	$3,0($2)
	li	$2,2			# 0x2
	sw	$2,28($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,48($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	li	$3,-1			# 0xffffffffffffffff
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L2:
	lw	$3,52($fp)
	lw	$2,44($fp)
	subu	$2,$3,$2
	addiu	$2,$2,-1
	lw	$3,28($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L3
	nop

	lw	$3,52($fp)
	lw	$2,44($fp)
	subu	$2,$3,$2
	addiu	$2,$2,-1
	lw	$3,48($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$3,52($fp)
	lw	$2,44($fp)
	subu	$2,$3,$2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$6,44($fp)
	lw	$5,40($fp)
	move	$4,$2
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_pkcs1_pad
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

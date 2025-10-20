	.file	1 "des_initial_permutation.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.rdata
	.align	2
	.type	IP, @object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\012\002<4,$\034\024\014\004>6.&\036\026\016"
	.ascii	"\006@80( \030\020\01091)!\031\021\011\001;3+#\033\023\013"
	.ascii	"\003=5-%\035\025\015\005?7/'\037\027\017\007"
	.text
	.align	2
	.globl	des_initial_permutation
	.set	nomips16
	.set	nomicromips
	.ent	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$5,28($fp)
	sw	$4,24($fp)
	move	$5,$0
	move	$4,$0
	sw	$5,12($fp)
	sw	$4,8($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	lui	$4,%hi(IP)
	addiu	$5,$4,%lo(IP)
	lw	$4,4($fp)
	addu	$4,$5,$4
	lbu	$4,0($4)
	move	$5,$4
	li	$4,64			# 0x40
	subu	$4,$4,$5
	andi	$5,$4,0x20
	move	$14,$0
	lw	$12,24($fp)
	sll	$13,$12,1
	li	$12,-1			# 0xffffffffffffffff
	xor	$12,$4,$12
	sll	$12,$13,$12
	lw	$13,28($fp)
	srl	$3,$13,$4
	or	$3,$12,$3
	lw	$12,24($fp)
	srl	$2,$12,$4
	movn	$3,$2,$5
	movn	$2,$14,$5
	andi	$8,$2,0
	andi	$9,$3,0x1
	move	$4,$8
	or	$4,$4,$9
	beq	$4,$0,$L3
	nop

	lw	$4,4($fp)
	andi	$4,$4,0x20
	move	$14,$0
	li	$5,-2147483648			# 0xffffffff80000000
	sll	$12,$5,1
	lw	$13,4($fp)
	li	$5,-1			# 0xffffffffffffffff
	xor	$5,$13,$5
	sll	$5,$12,$5
	move	$13,$0
	lw	$12,4($fp)
	srl	$7,$13,$12
	or	$7,$5,$7
	li	$12,-2147483648			# 0xffffffff80000000
	lw	$5,4($fp)
	srl	$6,$12,$5
	movn	$7,$6,$4
	movn	$6,$14,$4
	lw	$4,8($fp)
	or	$10,$4,$6
	lw	$4,12($fp)
	or	$11,$4,$7
	sw	$11,12($fp)
	sw	$10,8($fp)
$L3:
	lw	$4,4($fp)
	addiu	$4,$4,1
	sw	$4,4($fp)
$L2:
	lw	$4,4($fp)
	slt	$4,$4,64
	bne	$4,$0,$L5
	nop

	lw	$3,12($fp)
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_initial_permutation
	.size	des_initial_permutation, .-des_initial_permutation
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

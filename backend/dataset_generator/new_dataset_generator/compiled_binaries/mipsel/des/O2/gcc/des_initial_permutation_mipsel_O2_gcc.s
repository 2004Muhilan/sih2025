	.file	1 "des_initial_permutation.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_initial_permutation
	.set	nomips16
	.set	nomicromips
	.ent	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$10,%hi(IP)
	move	$7,$0
	addiu	$10,$10,%lo(IP)
	move	$2,$0
	move	$14,$0
	sll	$24,$5,1
	li	$11,64			# 0x40
	li	$15,-2147483648			# 0xffffffff80000000
$L4:
	lbu	$3,0($10)
	srl	$8,$15,$7
	andi	$6,$7,0x20
	move	$13,$8
	movn	$8,$0,$6
	subu	$3,$11,$3
	movz	$13,$0,$6
	addiu	$7,$7,1
	nor	$9,$0,$3
	srl	$6,$4,$3
	sll	$9,$24,$9
	srl	$12,$5,$3
	or	$6,$9,$6
	andi	$3,$3,0x20
	movn	$6,$12,$3
	andi	$6,$6,0x1
	beq	$6,$0,$L2
	addiu	$10,$10,1

	or	$2,$2,$13
	or	$14,$14,$8
$L2:
	bne	$7,$11,$L4
	move	$3,$14

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_initial_permutation
	.size	des_initial_permutation, .-des_initial_permutation
	.rdata
	.align	2
	.type	IP, @object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\012\002<4,$\034\024\014\004>6.&\036\026\016"
	.ascii	"\006@80( \030\020\01091)!\031\021\011\001;3+#\033\023\013"
	.ascii	"\003=5-%\035\025\015\005?7/'\037\027\017\007"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

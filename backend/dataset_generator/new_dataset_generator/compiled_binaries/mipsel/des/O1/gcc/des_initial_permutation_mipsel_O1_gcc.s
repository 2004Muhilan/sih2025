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
	lui	$9,%hi(IP)
	addiu	$9,$9,%lo(IP)
	move	$7,$0
	move	$2,$0
	move	$12,$0
	li	$10,64			# 0x40
	sll	$13,$5,1
	.option	pic0
	b	$L4
	.option	pic2
	li	$14,-2147483648			# 0xffffffff80000000

$L2:
	addiu	$7,$7,1
	beq	$7,$10,$L6
	addiu	$9,$9,1

$L4:
	lbu	$3,0($9)
	subu	$3,$10,$3
	andi	$11,$3,0x20
	nor	$8,$0,$3
	sll	$8,$13,$8
	srl	$6,$4,$3
	or	$6,$8,$6
	srl	$3,$5,$3
	movn	$6,$3,$11
	andi	$6,$6,0x1
	beq	$6,$0,$L2
	andi	$6,$7,0x20

	srl	$3,$14,$7
	move	$8,$3
	movz	$8,$0,$6
	movn	$3,$0,$6
	or	$2,$2,$8
	.option	pic0
	b	$L2
	.option	pic2
	or	$12,$12,$3

$L6:
	jr	$31
	move	$3,$12

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

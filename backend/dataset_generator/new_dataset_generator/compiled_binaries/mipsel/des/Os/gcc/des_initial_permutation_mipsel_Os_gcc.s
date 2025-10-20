	.file	1 "des_initial_permutation.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__lshrdi3
	.align	2
	.globl	des_initial_permutation
	.set	nomips16
	.set	nomicromips
	.ent	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	sw	$19,36($sp)
	lui	$19,%hi(IP)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,56($sp)
	sw	$21,44($sp)
	addiu	$19,$19,%lo(IP)
	sw	$20,40($sp)
	li	$fp,64			# 0x40
	sw	$18,32($sp)
	move	$20,$0
	sw	$17,28($sp)
	move	$18,$0
	sw	$16,24($sp)
	move	$17,$0
	move	$16,$0
	sw	$23,52($sp)
	li	$21,-2147483648			# 0xffffffff80000000
	sw	$22,48($sp)
	sw	$31,60($sp)
	move	$22,$4
	.cprestore	16
	move	$23,$5
	addu	$2,$19,$16
$L10:
	lw	$25,%call16(__lshrdi3)($28)
	move	$4,$22
	move	$5,$23
	lbu	$6,0($2)
	.reloc	1f,R_MIPS_JALR,__lshrdi3
1:	jalr	$25
	subu	$6,$fp,$6

	andi	$2,$2,0x1
	beq	$2,$0,$L2
	lw	$28,16($sp)

	lw	$25,%call16(__lshrdi3)($28)
	move	$6,$16
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__lshrdi3
1:	jalr	$25
	move	$5,$21

	lw	$28,16($sp)
	or	$18,$18,$2
	or	$17,$17,$3
$L2:
	addiu	$16,$16,1
	bne	$16,$fp,$L10
	addu	$2,$19,$16

	lw	$31,60($sp)
	move	$2,$18
	lw	$fp,56($sp)
	move	$3,$17
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,64

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

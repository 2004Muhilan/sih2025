	.file	1 "md5_compress.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	md5_compress
	.set	nomips16
	.set	nomicromips
	.ent	md5_compress
	.type	md5_compress, @function
md5_compress:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$11,0($4)
	addiu	$13,$5,64
	lw	$10,4($4)
	lw	$9,8($4)
	lw	$7,12($4)
	move	$12,$11
	move	$3,$10
	move	$8,$9
	move	$6,$7
$L2:
	lw	$14,0($5)
	xor	$2,$8,$6
	and	$2,$2,$3
	xor	$2,$2,$6
	addu	$2,$2,$14
	addiu	$5,$5,4
	addu	$2,$2,$12
	move	$12,$6
	sll	$2,$2,7
	bne	$13,$5,$L3
	addu	$2,$2,$3

	addu	$11,$11,$6
	addu	$10,$10,$2
	addu	$9,$9,$3
	sw	$11,0($4)
	addu	$7,$7,$8
	sw	$10,4($4)
	sw	$9,8($4)
	jr	$31
	sw	$7,12($4)

$L3:
	move	$6,$8
	move	$8,$3
	.option	pic0
	b	$L2
	.option	pic2
	move	$3,$2

	.set	macro
	.set	reorder
	.end	md5_compress
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

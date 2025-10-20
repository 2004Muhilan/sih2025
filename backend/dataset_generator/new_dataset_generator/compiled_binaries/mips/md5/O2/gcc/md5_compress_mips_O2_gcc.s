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
	lw	$14,0($4)
	addiu	$10,$5,64
	lw	$13,4($4)
	lw	$12,8($4)
	lw	$11,12($4)
	move	$8,$14
	move	$6,$13
	move	$7,$12
	.option	pic0
	b	$L2
	.option	pic2
	move	$3,$11

$L3:
	move	$3,$7
	move	$7,$6
	move	$6,$2
$L2:
	lw	$9,0($5)
	xor	$2,$7,$3
	and	$2,$2,$6
	xor	$2,$2,$3
	addu	$2,$2,$9
	addiu	$5,$5,4
	addu	$2,$2,$8
	move	$8,$3
	sll	$2,$2,7
	bne	$10,$5,$L3
	addu	$2,$2,$6

	addu	$14,$14,$3
	addu	$13,$13,$2
	addu	$12,$12,$6
	sw	$14,0($4)
	addu	$11,$11,$7
	sw	$13,4($4)
	sw	$12,8($4)
	jr	$31
	sw	$11,12($4)

	.set	macro
	.set	reorder
	.end	md5_compress
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

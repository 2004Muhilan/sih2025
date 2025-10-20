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
	.frame	$fp,40,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$2,40($fp)
	lw	$2,0($2)
	sw	$2,4($fp)
	lw	$2,40($fp)
	lw	$2,4($2)
	sw	$2,8($fp)
	lw	$2,40($fp)
	lw	$2,8($2)
	sw	$2,12($fp)
	lw	$2,40($fp)
	lw	$2,12($2)
	sw	$2,16($fp)
	sw	$0,20($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,8($fp)
	lw	$2,12($fp)
	and	$3,$3,$2
	lw	$2,8($fp)
	nor	$4,$0,$2
	lw	$2,16($fp)
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,16($fp)
	sw	$2,28($fp)
	lw	$2,12($fp)
	sw	$2,16($fp)
	lw	$2,8($fp)
	sw	$2,12($fp)
	lw	$3,4($fp)
	lw	$2,24($fp)
	addu	$3,$3,$2
	lw	$2,20($fp)
	sll	$2,$2,2
	lw	$4,44($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	addu	$2,$3,$2
	sll	$2,$2,7
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	sw	$2,4($fp)
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
$L2:
	lw	$2,20($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	lw	$2,40($fp)
	lw	$3,0($2)
	lw	$2,4($fp)
	addu	$3,$3,$2
	lw	$2,40($fp)
	sw	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,4
	lw	$4,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,4
	lw	$3,8($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,8
	lw	$4,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,8
	lw	$3,12($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,12
	lw	$4,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,12
	lw	$3,16($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	md5_compress
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

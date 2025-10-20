	.file	1 "base64_encode_standard.c"
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
	.type	b64, @object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123"
	.ascii	"456789+/\000"
	.text
	.align	2
	.globl	base64_encode_standard
	.set	nomips16
	.set	nomicromips
	.ent	base64_encode_standard
	.type	base64_encode_standard, @function
base64_encode_standard:
	.frame	$fp,32,$31		# vars= 24, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$0,0($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L9:
	lw	$3,0($fp)
	lw	$2,36($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L3
	nop

	lw	$2,0($fp)
	addiu	$3,$2,1
	sw	$3,0($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L3:
	move	$2,$0
$L4:
	sw	$2,8($fp)
	lw	$3,0($fp)
	lw	$2,36($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L5
	nop

	lw	$2,0($fp)
	addiu	$3,$2,1
	sw	$3,0($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L5:
	move	$2,$0
$L6:
	sw	$2,12($fp)
	lw	$3,0($fp)
	lw	$2,36($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L7
	nop

	lw	$2,0($fp)
	addiu	$3,$2,1
	sw	$3,0($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L7:
	move	$2,$0
$L8:
	sw	$2,16($fp)
	lw	$2,8($fp)
	sll	$3,$2,16
	lw	$2,12($fp)
	sll	$2,$2,8
	addu	$2,$3,$2
	lw	$3,16($fp)
	addu	$2,$3,$2
	sw	$2,20($fp)
	lw	$2,20($fp)
	srl	$2,$2,18
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,20($fp)
	srl	$2,$2,12
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,20($fp)
	srl	$2,$2,6
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,20($fp)
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
$L2:
	lw	$3,0($fp)
	lw	$2,36($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L9
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_encode_standard
	.size	base64_encode_standard, .-base64_encode_standard
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

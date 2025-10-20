	.file	1 "base64_encode_urlsafe.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	base64_encode_urlsafe
	.set	nomips16
	.set	nomicromips
	.ent	base64_encode_urlsafe
	.type	base64_encode_urlsafe, @function
base64_encode_urlsafe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L8
	move	$3,$0

	move	$10,$0
	lui	$7,%hi(b64url)
	.option	pic0
	b	$L4
	.option	pic2
	addiu	$7,$7,%lo(b64url)

$L5:
	move	$3,$8
	move	$8,$10
	move	$9,$10
$L3:
	sll	$2,$2,16
	addu	$2,$2,$9
	sll	$8,$8,8
	addu	$2,$2,$8
	srl	$8,$2,18
	addu	$8,$8,$7
	lbu	$8,0($8)
	sb	$8,0($6)
	ext	$8,$2,12,6
	addu	$8,$8,$7
	lbu	$8,0($8)
	sb	$8,1($6)
	ext	$8,$2,6,6
	addu	$8,$8,$7
	lbu	$8,0($8)
	sb	$8,2($6)
	andi	$2,$2,0x3f
	addu	$2,$2,$7
	lbu	$2,0($2)
	sb	$2,3($6)
	sltu	$2,$3,$5
	beq	$2,$0,$L8
	addiu	$6,$6,4

$L4:
	addiu	$8,$3,1
	addu	$2,$4,$3
	sltu	$9,$8,$5
	beq	$9,$0,$L5
	lbu	$2,0($2)

	addiu	$9,$3,2
	addu	$8,$4,$8
	sltu	$11,$9,$5
	beq	$11,$0,$L6
	lbu	$8,0($8)

	addiu	$3,$3,3
	addu	$9,$4,$9
	.option	pic0
	b	$L3
	.option	pic2
	lbu	$9,0($9)

$L6:
	move	$3,$9
	.option	pic0
	b	$L3
	.option	pic2
	move	$9,$0

$L8:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_encode_urlsafe
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.rdata
	.align	2
	.type	b64url, @object
	.size	b64url, 65
b64url:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123"
	.ascii	"456789-_\000"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

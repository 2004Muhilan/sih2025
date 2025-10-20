	.file	1 "des_sbox_substitution.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_sbox
	.set	nomips16
	.set	nomicromips
	.ent	des_sbox
	.type	des_sbox, @function
des_sbox:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,4
	andi	$2,$2,0x2
	andi	$3,$4,0x1
	or	$2,$2,$3
	ext	$4,$4,1,4
	sll	$2,$2,4
	lui	$3,%hi(S1)
	addiu	$3,$3,%lo(S1)
	addu	$2,$2,$3
	addu	$2,$2,$4
	jr	$31
	lbu	$2,0($2)

	.set	macro
	.set	reorder
	.end	des_sbox
	.size	des_sbox, .-des_sbox
	.rdata
	.align	2
	.type	S1, @object
	.size	S1, 64
S1:
	.ascii	"\016\004\015\001\002\017\013\010\003\012\006\014\005\011"
	.ascii	"\000\007"
	.ascii	"\000\017\007\004\016\002\015\001\012\006\014\013\011\005"
	.ascii	"\003\010"
	.ascii	"\004\001\016\010\015\006\002\013\017\014\011\007\003\012"
	.ascii	"\005\000"
	.ascii	"\017\014\010\002\004\011\001\007\005\013\003\016\012\000"
	.ascii	"\006\015"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits

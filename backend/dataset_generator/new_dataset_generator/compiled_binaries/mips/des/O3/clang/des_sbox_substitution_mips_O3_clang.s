	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_sbox_substitution.c"
	.globl	des_sbox                        # -- Begin function des_sbox
	.p2align	2
	.type	des_sbox,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_sbox
des_sbox:                               # @des_sbox
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	srl	$3, $4, 4
	andi	$2, $4, 1
	lw	$1, %got(S1)($1)
	andi	$3, $3, 2
	or	$2, $3, $2
	sll	$2, $2, 4
	addiu	$1, $1, %lo(S1)
	addu	$1, $1, $2
	ext	$2, $4, 1, 4
	addu	$1, $1, $2
	lbu	$2, 0($1)
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_sbox
$func_end0:
	.size	des_sbox, ($func_end0)-des_sbox
                                        # -- End function
	.type	S1,@object                      # @S1
	.section	.rodata,"a",@progbits
S1:
	.ascii	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t\000\007"
	.ascii	"\000\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.asciz	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.ascii	"\017\f\b\002\004\t\001\007\005\013\003\016\n\000\006\r"
	.size	S1, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

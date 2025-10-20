	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_add_round_key
aes_add_round_key:                      # @aes_add_round_key
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 0($5)
	lbu	$2, 0($4)
	xor	$1, $2, $1
	sb	$1, 0($4)
	lbu	$1, 1($4)
	lbu	$2, 1($5)
	xor	$1, $1, $2
	sb	$1, 1($4)
	lbu	$3, 2($4)
	lbu	$6, 2($5)
	lbu	$1, 4($4)
	lbu	$2, 3($4)
	xor	$3, $3, $6
	sb	$3, 2($4)
	lbu	$3, 3($5)
	xor	$2, $2, $3
	sb	$2, 3($4)
	lbu	$2, 4($5)
	xor	$1, $1, $2
	sb	$1, 4($4)
	lbu	$1, 5($5)
	lbu	$2, 5($4)
	xor	$1, $2, $1
	sb	$1, 5($4)
	lbu	$1, 6($5)
	lbu	$2, 6($4)
	xor	$1, $2, $1
	sb	$1, 6($4)
	lbu	$1, 7($5)
	lbu	$2, 7($4)
	xor	$1, $2, $1
	sb	$1, 7($4)
	lbu	$1, 8($5)
	lbu	$2, 8($4)
	xor	$1, $2, $1
	sb	$1, 8($4)
	lbu	$1, 9($5)
	lbu	$2, 9($4)
	xor	$1, $2, $1
	sb	$1, 9($4)
	lbu	$1, 10($5)
	lbu	$2, 10($4)
	xor	$1, $2, $1
	sb	$1, 10($4)
	lbu	$1, 11($5)
	lbu	$2, 11($4)
	xor	$1, $2, $1
	sb	$1, 11($4)
	lbu	$1, 12($5)
	lbu	$2, 12($4)
	xor	$1, $2, $1
	sb	$1, 12($4)
	lbu	$1, 13($5)
	lbu	$2, 13($4)
	xor	$1, $2, $1
	sb	$1, 13($4)
	lbu	$1, 14($5)
	lbu	$2, 14($4)
	xor	$1, $2, $1
	sb	$1, 14($4)
	lbu	$1, 15($5)
	lbu	$2, 15($4)
	xor	$1, $2, $1
	jr	$ra
	sb	$1, 15($4)
	.set	at
	.set	macro
	.set	reorder
	.end	aes_add_round_key
$func_end0:
	.size	aes_add_round_key, ($func_end0)-aes_add_round_key
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

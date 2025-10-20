	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des3_triple.c"
	.globl	des3_encrypt                    # -- Begin function des3_encrypt
	.p2align	2
	.type	des3_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	des3_encrypt
des3_encrypt:                           # @des3_encrypt
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$2, 16($sp)
	xor	$1, $6, $4
	lw	$3, 20($sp)
	xor	$1, $1, $2
	lw	$2, 24($sp)
	xor	$2, $1, $2
	xor	$1, $7, $5
	xor	$1, $1, $3
	lw	$3, 28($sp)
	jr	$ra
	xor	$3, $1, $3
	.set	at
	.set	macro
	.set	reorder
	.end	des3_encrypt
$func_end0:
	.size	des3_encrypt, ($func_end0)-des3_encrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

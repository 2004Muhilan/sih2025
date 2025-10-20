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
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	move	$8, $4
	lw	$2, 68($fp)
	lw	$1, 64($fp)
	lw	$4, 60($fp)
	lw	$3, 56($fp)
	sw	$8, 24($fp)
	sw	$5, 28($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	sw	$4, 12($fp)
	sw	$3, 8($fp)
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	lw	$2, 28($fp)
	lw	$1, 24($fp)
	lw	$3, 20($fp)
	lw	$4, 16($fp)
	xor	$1, $1, $4
	xor	$2, $2, $3
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$2, 28($fp)
	lw	$1, 24($fp)
	lw	$3, 12($fp)
	lw	$4, 8($fp)
	xor	$1, $1, $4
	xor	$2, $2, $3
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$2, 28($fp)
	lw	$1, 24($fp)
	lw	$3, 4($fp)
	lw	$4, 0($fp)
	xor	$1, $1, $4
	xor	$2, $2, $3
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$2, 24($fp)
	lw	$3, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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

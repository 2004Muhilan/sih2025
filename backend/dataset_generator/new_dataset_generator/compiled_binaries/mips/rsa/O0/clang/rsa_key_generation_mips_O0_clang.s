	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               # -- Begin function rsa_generate_keys
	.p2align	2
	.type	rsa_generate_keys,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_generate_keys
rsa_generate_keys:                      # @rsa_generate_keys
	.frame	$fp,72,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -72
	sw	$ra, 68($sp)                    # 4-byte Folded Spill
	sw	$fp, 64($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 60($fp)
	sw	$5, 56($fp)
	sw	$6, 52($fp)
	addiu	$1, $zero, 61
	sw	$1, 44($fp)
	sw	$zero, 40($fp)
	addiu	$1, $zero, 53
	sw	$1, 36($fp)
	sw	$zero, 32($fp)
	lw	$2, 40($fp)
	lw	$1, 44($fp)
	lw	$3, 36($fp)
	lw	$4, 32($fp)
	mul	$4, $1, $4
	multu	$1, $3
	mflo	$1
	sw	$1, 8($fp)                      # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 12($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $4
	mul	$2, $2, $3
	lw	$3, 8($fp)                      # 8-byte Folded Reload
	mtlo	$3
	lw	$3, 12($fp)                     # 8-byte Folded Reload
	mthi	$3
	addu	$1, $1, $2
	mflo	$3
	lw	$2, 60($fp)
	sw	$3, 4($2)
	sw	$1, 0($2)
	lw	$2, 40($fp)
	lw	$1, 44($fp)
	sltiu	$3, $1, 1
	subu	$2, $2, $3
	addiu	$1, $1, -1
	lw	$4, 32($fp)
	lw	$3, 36($fp)
	sltiu	$5, $3, 1
	subu	$4, $4, $5
	addiu	$3, $3, -1
	mul	$4, $1, $4
	multu	$1, $3
	mflo	$1
	sw	$1, 16($fp)                     # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 20($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $4
	mul	$2, $2, $3
	lw	$3, 16($fp)                     # 8-byte Folded Reload
	mtlo	$3
	lw	$3, 20($fp)                     # 8-byte Folded Reload
	mthi	$3
	addu	$1, $1, $2
	mflo	$2
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$1, 56($fp)
	addiu	$2, $zero, 17
	sw	$2, 4($1)
	sw	$zero, 0($1)
	lw	$1, 52($fp)
	sw	$zero, 4($1)
	sw	$zero, 0($1)
	move	$sp, $fp
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 72
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_generate_keys
$func_end0:
	.size	rsa_generate_keys, ($func_end0)-rsa_generate_keys
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

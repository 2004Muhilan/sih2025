	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 # -- Begin function ecc_ecdh_shared
	.p2align	2
	.type	ecc_ecdh_shared,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_ecdh_shared
ecc_ecdh_shared:                        # @ecc_ecdh_shared
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$2, 68($fp)
	lw	$1, 64($fp)
	sw	$4, 24($fp)
	sw	$5, 28($fp)
	sw	$6, 32($fp)
	sw	$7, 36($fp)
	sw	$2, 20($fp)
	sw	$1, 16($fp)
	lw	$2, 24($fp)
	lw	$1, 28($fp)
	lw	$3, 20($fp)
	lw	$4, 16($fp)
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
	mflo	$2
	addu	$1, $2, $1
	sltu	$2, $1, $2
	addu	$3, $1, $2
	addiu	$1, $zero, -1
	xor	$1, $3, $1
	addiu	$2, $zero, 0
	movz	$3, $zero, $1
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_ecdh_shared
$func_end0:
	.size	ecc_ecdh_shared, ($func_end0)-ecc_ecdh_shared
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

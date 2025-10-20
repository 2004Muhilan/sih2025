	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   # -- Begin function sha256_sigma0
	.p2align	2
	.type	sha256_sigma0,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_sigma0
sha256_sigma0:                          # @sha256_sigma0
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	srl	$1, $1, 2
	lw	$2, 4($fp)
	sll	$2, $2, 30
	or	$1, $1, $2
	lw	$2, 4($fp)
	srl	$2, $2, 13
	lw	$3, 4($fp)
	sll	$3, $3, 19
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 4($fp)
	srl	$2, $2, 22
	lw	$3, 4($fp)
	sll	$3, $3, 10
	or	$2, $2, $3
	xor	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_sigma0
$func_end0:
	.size	sha256_sigma0, ($func_end0)-sha256_sigma0
                                        # -- End function
	.globl	sha256_sigma1                   # -- Begin function sha256_sigma1
	.p2align	2
	.type	sha256_sigma1,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_sigma1
sha256_sigma1:                          # @sha256_sigma1
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	srl	$1, $1, 6
	lw	$2, 4($fp)
	sll	$2, $2, 26
	or	$1, $1, $2
	lw	$2, 4($fp)
	srl	$2, $2, 11
	lw	$3, 4($fp)
	sll	$3, $3, 21
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 4($fp)
	srl	$2, $2, 25
	lw	$3, 4($fp)
	sll	$3, $3, 7
	or	$2, $2, $3
	xor	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_sigma1
$func_end1:
	.size	sha256_sigma1, ($func_end1)-sha256_sigma1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

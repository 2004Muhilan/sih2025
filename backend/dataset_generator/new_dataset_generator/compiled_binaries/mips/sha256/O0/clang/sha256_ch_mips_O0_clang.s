	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_ch.c"
	.globl	sha256_ch                       # -- Begin function sha256_ch
	.p2align	2
	.type	sha256_ch,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_ch
sha256_ch:                              # @sha256_ch
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	and	$1, $1, $2
	lw	$2, 12($fp)
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lw	$3, 4($fp)
	and	$2, $2, $3
	xor	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_ch
$func_end0:
	.size	sha256_ch, ($func_end0)-sha256_ch
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

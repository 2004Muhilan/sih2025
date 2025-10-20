	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_padding.c"
	.globl	sha256_padding                  # -- Begin function sha256_padding
	.p2align	2
	.type	sha256_padding,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_padding
sha256_padding:                         # @sha256_padding
	.frame	$sp,40,$ra
	.mask 	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$19, 32($sp)                    # 4-byte Folded Spill
	sw	$18, 28($sp)                    # 4-byte Folded Spill
	sw	$17, 24($sp)                    # 4-byte Folded Spill
	sw	$16, 20($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $6
	move	$18, $5
	move	$5, $4
	lw	$25, %call16(memcpy)($16)
	move	$4, $6
	move	$6, $18
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$gp, $16
	addu	$1, $17, $18
	addiu	$2, $zero, 128
	sb	$2, 0($1)
	addiu	$17, $1, 1
	addiu	$1, $zero, 55
	subu	$1, $1, $18
	andi	$19, $1, 63
	lw	$25, %call16(memset)($16)
	move	$4, $17
	addiu	$5, $zero, 0
	move	$6, $19
	.reloc ($tmp1), R_MIPS_JALR, memset
$tmp1:
	jalr	$25
	move	$gp, $16
	addu	$2, $17, $19
	sll	$3, $18, 3
	addiu	$4, $zero, 56
	addiu	$5, $zero, -8
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	srlv	$1, $3, $4
	andi	$6, $4, 32
	movn	$1, $zero, $6
	sb	$1, 0($2)
	addiu	$4, $4, -8
	bne	$4, $5, $BB0_1
	addiu	$2, $2, 1
# %bb.2:
	lw	$16, 20($sp)                    # 4-byte Folded Reload
	lw	$17, 24($sp)                    # 4-byte Folded Reload
	lw	$18, 28($sp)                    # 4-byte Folded Reload
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_padding
$func_end0:
	.size	sha256_padding, ($func_end0)-sha256_padding
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

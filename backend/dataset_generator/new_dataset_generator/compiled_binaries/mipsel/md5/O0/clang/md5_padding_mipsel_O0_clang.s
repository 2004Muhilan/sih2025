	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"md5_padding.c"
	.globl	md5_padding                     # -- Begin function md5_padding
	.p2align	2
	.type	md5_padding,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_padding
md5_padding:                            # @md5_padding
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$gp, $2, $25
	sw	$gp, 20($fp)                    # 4-byte Folded Spill
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	lw	$4, 36($fp)
	lw	$5, 44($fp)
	lw	$6, 40($fp)
	lw	$25, %call16(memcpy)($gp)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	lw	$1, 36($fp)
	lw	$2, 40($fp)
	addu	$2, $1, $2
	addiu	$1, $zero, 128
	sb	$1, 0($2)
	lw	$2, 40($fp)
	addiu	$1, $zero, 55
	subu	$1, $1, $2
	andi	$1, $1, 63
	sw	$1, 32($fp)
	lw	$1, 36($fp)
	lw	$2, 40($fp)
	addu	$1, $1, $2
	addiu	$4, $1, 1
	lw	$6, 32($fp)
	lw	$25, %call16(memset)($gp)
	addiu	$5, $zero, 0
	.reloc ($tmp1), R_MIPS_JALR, memset
$tmp1:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 40($fp)
	sll	$2, $2, 3
	sw	$2, 24($fp)
	sw	$zero, 28($fp)
	lw	$2, 36($fp)
	lw	$3, 40($fp)
	addu	$2, $2, $3
	addiu	$3, $zero, 1
	addu	$2, $2, $3
	lw	$3, 32($fp)
	addu	$4, $2, $3
	addiu	$5, $fp, 24
	addiu	$6, $zero, 8
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp2), R_MIPS_JALR, memcpy
$tmp2:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	md5_padding
$func_end0:
	.size	md5_padding, ($func_end0)-md5_padding
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

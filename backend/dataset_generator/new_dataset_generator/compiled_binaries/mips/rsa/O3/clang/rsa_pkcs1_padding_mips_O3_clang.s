	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   # -- Begin function rsa_pkcs1_pad
	.p2align	2
	.type	rsa_pkcs1_pad,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_pkcs1_pad
rsa_pkcs1_pad:                          # @rsa_pkcs1_pad
	.frame	$sp,48,$ra
	.mask 	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$21, 40($sp)                    # 4-byte Folded Spill
	sw	$20, 36($sp)                    # 4-byte Folded Spill
	sw	$19, 32($sp)                    # 4-byte Folded Spill
	sw	$18, 28($sp)                    # 4-byte Folded Spill
	sw	$17, 24($sp)                    # 4-byte Folded Spill
	sw	$16, 20($sp)                    # 4-byte Folded Spill
	addiu	$1, $zero, 2
	addu	$16, $2, $25
	move	$19, $7
	move	$20, $6
	move	$17, $5
	move	$18, $4
	sb	$1, 1($6)
	not	$1, $5
	addu	$21, $1, $7
	sltiu	$1, $21, 3
	bnez	$1, $BB0_2
	sb	$zero, 0($6)
# %bb.1:
	subu	$1, $19, $17
	lw	$25, %call16(memset)($16)
	addiu	$4, $20, 2
	addiu	$5, $zero, 255
	move	$gp, $16
	.reloc ($tmp0), R_MIPS_JALR, memset
$tmp0:
	jalr	$25
	addiu	$6, $1, -3
$BB0_2:
	addu	$1, $20, $21
	lw	$25, %call16(memcpy)($16)
	move	$5, $18
	move	$6, $17
	move	$gp, $16
	sb	$zero, 0($1)
	addu	$1, $20, $19
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	subu	$4, $1, $17
	lw	$16, 20($sp)                    # 4-byte Folded Reload
	lw	$17, 24($sp)                    # 4-byte Folded Reload
	lw	$18, 28($sp)                    # 4-byte Folded Reload
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$20, 36($sp)                    # 4-byte Folded Reload
	lw	$21, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 48
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_pkcs1_pad
$func_end0:
	.size	rsa_pkcs1_pad, ($func_end0)-rsa_pkcs1_pad
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

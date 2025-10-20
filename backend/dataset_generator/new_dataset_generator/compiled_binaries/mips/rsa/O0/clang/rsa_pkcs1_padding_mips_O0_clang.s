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
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	sw	$7, 24($fp)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	sb	$zero, 0($1)
	lw	$2, 28($fp)
	addiu	$1, $zero, 2
	sb	$1, 1($2)
	addiu	$1, $zero, 2
	sw	$1, 20($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 24($fp)
	lw	$3, 32($fp)
	subu	$2, $2, $3
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 20($fp)
	addu	$2, $1, $2
	addiu	$1, $zero, 255
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB0_1
	nop
$BB0_5:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)
	lw	$3, 24($fp)
	lw	$4, 32($fp)
	subu	$3, $3, $4
	addiu	$4, $zero, 1
	subu	$3, $3, $4
	addu	$2, $2, $3
	addiu	$3, $zero, 0
	sb	$zero, 0($2)
	lw	$2, 28($fp)
	lw	$3, 24($fp)
	addu	$2, $2, $3
	lw	$3, 32($fp)
	addiu	$4, $zero, 0
	negu	$3, $3
	addu	$4, $2, $3
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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

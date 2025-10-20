	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               # -- Begin function xor_cipher_simple
	.p2align	2
	.type	xor_cipher_simple,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_cipher_simple
xor_cipher_simple:                      # @xor_cipher_simple
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	sw	$7, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 16($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	lw	$3, 4($fp)
	lw	$2, 8($fp)
	divu	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$3, $1, 255
	lw	$1, 20($fp)
	lw	$2, 4($fp)
	addu	$2, $1, $2
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_1
	nop
$BB0_5:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_cipher_simple
$func_end0:
	.size	xor_cipher_simple, ($func_end0)-xor_cipher_simple
                                        # -- End function
	.globl	xor_encrypt_simple              # -- Begin function xor_encrypt_simple
	.p2align	2
	.type	xor_encrypt_simple,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_encrypt_simple
xor_encrypt_simple:                     # @xor_encrypt_simple
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
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 64($fp)
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	sw	$7, 24($fp)
	lw	$4, 64($fp)
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 64($fp)
	lw	$5, 32($fp)
	lw	$6, 28($fp)
	lw	$7, 24($fp)
	lw	$25, %got(xor_cipher_simple)($1)
	.reloc ($tmp1), R_MIPS_JALR, xor_cipher_simple
$tmp1:
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
	.end	xor_encrypt_simple
$func_end1:
	.size	xor_encrypt_simple, ($func_end1)-xor_encrypt_simple
                                        # -- End function
	.globl	xor_decrypt_simple              # -- Begin function xor_decrypt_simple
	.p2align	2
	.type	xor_decrypt_simple,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_decrypt_simple
xor_decrypt_simple:                     # @xor_decrypt_simple
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
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 64($fp)
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	sw	$7, 24($fp)
	lw	$4, 64($fp)
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp2), R_MIPS_JALR, memcpy
$tmp2:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 64($fp)
	lw	$5, 32($fp)
	lw	$6, 28($fp)
	lw	$7, 24($fp)
	lw	$25, %got(xor_cipher_simple)($1)
	.reloc ($tmp3), R_MIPS_JALR, xor_cipher_simple
$tmp3:
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
	.end	xor_decrypt_simple
$func_end2:
	.size	xor_decrypt_simple, ($func_end2)-xor_decrypt_simple
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_simple
	.text

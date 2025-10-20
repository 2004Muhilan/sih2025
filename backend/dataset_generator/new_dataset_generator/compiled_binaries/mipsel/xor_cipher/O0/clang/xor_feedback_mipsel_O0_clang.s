	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             # -- Begin function xor_cipher_feedback
	.p2align	2
	.type	xor_cipher_feedback,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_cipher_feedback
xor_cipher_feedback:                    # @xor_cipher_feedback
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
	lw	$1, 56($fp)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	sw	$7, 16($fp)
	lw	$1, 56($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_2
	nop
# %bb.1:
	b	$BB0_3
	nop
$BB0_2:
	lw	$1, 56($fp)
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	$BB0_4
	nop
$BB0_3:
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	$BB0_4
	nop
$BB0_4:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	sb	$1, 15($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_7
	nop
# %bb.6:
	b	$BB0_9
	nop
$BB0_7:                                 #   in Loop: Header=BB0_5 Depth=1
	lw	$1, 20($fp)
	lw	$3, 8($fp)
	lw	$2, 16($fp)
	divu	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lbu	$2, 15($fp)
	andi	$2, $2, 255
	xor	$1, $1, $2
	sb	$1, 7($fp)
	lw	$1, 28($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 6($fp)
	lbu	$1, 7($fp)
	andi	$3, $1, 255
	lw	$1, 28($fp)
	lw	$2, 8($fp)
	addu	$2, $1, $2
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 0($2)
	lbu	$1, 6($fp)
	sb	$1, 15($fp)
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_5
	nop
$BB0_9:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_cipher_feedback
$func_end0:
	.size	xor_cipher_feedback, ($func_end0)-xor_cipher_feedback
                                        # -- End function
	.globl	xor_encrypt_feedback            # -- Begin function xor_encrypt_feedback
	.p2align	2
	.type	xor_encrypt_feedback,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_encrypt_feedback
xor_encrypt_feedback:                   # @xor_encrypt_feedback
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
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	lw	$2, 76($fp)
	lw	$2, 72($fp)
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	sw	$7, 32($fp)
	sb	$2, 31($fp)
	lw	$4, 76($fp)
	lw	$5, 44($fp)
	lw	$6, 40($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 76($fp)
	lw	$5, 40($fp)
	lw	$6, 36($fp)
	lw	$7, 32($fp)
	move	$2, $sp
	addiu	$1, $fp, 31
	sw	$1, 16($2)
	lw	$25, %call16(xor_cipher_feedback)($gp)
	.reloc ($tmp1), R_MIPS_JALR, xor_cipher_feedback
$tmp1:
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
	.end	xor_encrypt_feedback
$func_end1:
	.size	xor_encrypt_feedback, ($func_end1)-xor_encrypt_feedback
                                        # -- End function
	.globl	xor_decrypt_feedback            # -- Begin function xor_decrypt_feedback
	.p2align	2
	.type	xor_decrypt_feedback,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_decrypt_feedback
xor_decrypt_feedback:                   # @xor_decrypt_feedback
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
	lw	$1, 60($fp)
	lw	$1, 56($fp)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	sw	$7, 16($fp)
	sb	$1, 15($fp)
	lbu	$1, 15($fp)
	sb	$1, 14($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB2_3
	nop
# %bb.2:
	b	$BB2_5
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 20($fp)
	lw	$3, 8($fp)
	lw	$2, 16($fp)
	divu	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lbu	$2, 14($fp)
	andi	$2, $2, 255
	xor	$1, $1, $2
	sb	$1, 7($fp)
	lw	$1, 28($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 14($fp)
	lw	$1, 28($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lbu	$2, 7($fp)
	andi	$2, $2, 255
	xor	$1, $1, $2
	lw	$2, 60($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB2_1
	nop
$BB2_5:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_decrypt_feedback
$func_end2:
	.size	xor_decrypt_feedback, ($func_end2)-xor_decrypt_feedback
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_feedback
	.text

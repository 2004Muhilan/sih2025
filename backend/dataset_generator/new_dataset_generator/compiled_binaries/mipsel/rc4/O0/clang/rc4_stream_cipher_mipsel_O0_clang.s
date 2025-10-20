	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      # -- Begin function rc4_stream
	.p2align	2
	.type	rc4_stream,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_stream
rc4_stream:                             # @rc4_stream
	.frame	$fp,296,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -296
	sw	$ra, 292($sp)                   # 4-byte Folded Spill
	sw	$fp, 288($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 284($fp)
	sw	$5, 280($fp)
	sw	$6, 276($fp)
	sw	$7, 272($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	lw	$3, 12($fp)
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sb	$zero, 11($fp)
	addiu	$1, $zero, 0
	sb	$zero, 10($fp)
	addiu	$1, $zero, 0
	sb	$zero, 9($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 280($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lbu	$1, 10($fp)
	andi	$1, $1, 255
	addiu	$2, $zero, 1
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sb	$1, 10($fp)
	lbu	$1, 9($fp)
	andi	$1, $1, 255
	lbu	$2, 10($fp)
	andi	$3, $2, 255
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sb	$1, 9($fp)
	lbu	$1, 10($fp)
	andi	$2, $1, 255
	addiu	$1, $fp, 16
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 3($fp)
	lbu	$1, 9($fp)
	andi	$2, $1, 255
	addiu	$1, $fp, 16
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lbu	$2, 10($fp)
	andi	$3, $2, 255
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 3($fp)
	lbu	$2, 9($fp)
	andi	$3, $2, 255
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 10($fp)
	andi	$2, $1, 255
	addiu	$1, $fp, 16
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lbu	$2, 9($fp)
	andi	$3, $2, 255
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$2
	addiu	$1, $fp, 16
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$3, $1, 255
	lw	$1, 284($fp)
	lw	$2, 4($fp)
	addu	$2, $1, $2
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_6
	nop
$BB0_10:
	move	$sp, $fp
	lw	$fp, 288($sp)                   # 4-byte Folded Reload
	lw	$ra, 292($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 296
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_stream
$func_end0:
	.size	rc4_stream, ($func_end0)-rc4_stream
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

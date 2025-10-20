	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"linked_list_insert.c"
	.globl	linked_list_insert              # -- Begin function linked_list_insert
	.p2align	2
	.type	linked_list_insert,@function
	.set	nomicromips
	.set	nomips16
	.ent	linked_list_insert
linked_list_insert:                     # @linked_list_insert
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	linked_list_insert
$func_end0:
	.size	linked_list_insert, ($func_end0)-linked_list_insert
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text

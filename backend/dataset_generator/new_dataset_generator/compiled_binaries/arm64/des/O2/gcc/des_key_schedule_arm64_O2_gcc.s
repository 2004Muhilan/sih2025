	.arch armv8-a
	.file	"des_key_schedule.c"
	.text
	.align	2
	.p2align 4,,11
	.global	des_key_schedule
	.type	des_key_schedule, %function
des_key_schedule:
.LFB0:
	.cfi_startproc
	adrp	x2, .LC0
	dup	v3.2d, x0
	movi	v5.4s, 0x4
	movi	v4.2d, 0xffffffffffff
	ldr	q2, [x2, #:lo12:.LC0]
	add	x2, x1, 128
.L2:
	mov	v0.16b, v2.16b
	add	v2.4s, v2.4s, v5.4s
	shl	v0.4s, v0.4s, 2
	sxtl	v1.2d, v0.2s
	sxtl2	v0.2d, v0.4s
	neg	v1.2d, v1.2d
	neg	v0.2d, v0.2d
	ushl	v1.2d, v3.2d, v1.2d
	ushl	v0.2d, v3.2d, v0.2d
	and	v1.16b, v1.16b, v4.16b
	and	v0.16b, v0.16b, v4.16b
	stp	q1, q0, [x1]
	add	x1, x1, 32
	cmp	x2, x1
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

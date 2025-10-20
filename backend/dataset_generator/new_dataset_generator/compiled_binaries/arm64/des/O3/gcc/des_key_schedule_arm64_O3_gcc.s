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
	dup	v0.2d, x0
	adrp	x0, .LC1
	movi	v1.2d, 0xffffffffffff
	adrp	x2, .LC0
	ldr	q7, [x0, #:lo12:.LC1]
	adrp	x0, .LC2
	ldr	q16, [x2, #:lo12:.LC0]
	ldr	q6, [x0, #:lo12:.LC2]
	adrp	x0, .LC3
	ushl	v16.2d, v0.2d, v16.2d
	ldr	q5, [x0, #:lo12:.LC3]
	adrp	x0, .LC4
	ushl	v7.2d, v0.2d, v7.2d
	ldr	q4, [x0, #:lo12:.LC4]
	adrp	x0, .LC5
	ushl	v6.2d, v0.2d, v6.2d
	ldr	q3, [x0, #:lo12:.LC5]
	adrp	x0, .LC6
	ushl	v5.2d, v0.2d, v5.2d
	ldr	q2, [x0, #:lo12:.LC6]
	adrp	x0, .LC7
	ushl	v4.2d, v0.2d, v4.2d
	ldr	q17, [x0, #:lo12:.LC7]
	ushl	v3.2d, v0.2d, v3.2d
	ushl	v2.2d, v0.2d, v2.2d
	ushl	v0.2d, v0.2d, v17.2d
	and	v16.16b, v16.16b, v1.16b
	and	v7.16b, v7.16b, v1.16b
	and	v6.16b, v6.16b, v1.16b
	and	v5.16b, v5.16b, v1.16b
	and	v4.16b, v4.16b, v1.16b
	and	v3.16b, v3.16b, v1.16b
	stp	q16, q7, [x1]
	and	v2.16b, v2.16b, v1.16b
	stp	q6, q5, [x1, 32]
	and	v0.16b, v0.16b, v1.16b
	stp	q4, q3, [x1, 64]
	stp	q2, q0, [x1, 96]
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.xword	0
	.xword	-4
	.align	4
.LC1:
	.xword	-8
	.xword	-12
	.align	4
.LC2:
	.xword	-16
	.xword	-20
	.align	4
.LC3:
	.xword	-24
	.xword	-28
	.align	4
.LC4:
	.xword	-32
	.xword	-36
	.align	4
.LC5:
	.xword	-40
	.xword	-44
	.align	4
.LC6:
	.xword	-48
	.xword	-52
	.align	4
.LC7:
	.xword	-56
	.xword	-60
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

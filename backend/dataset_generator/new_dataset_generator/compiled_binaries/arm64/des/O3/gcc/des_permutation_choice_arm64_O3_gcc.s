	.arch armv8-a
	.file	"des_permutation_choice.c"
	.text
	.align	2
	.p2align 4,,11
	.global	des_pc1
	.type	des_pc1, %function
des_pc1:
.LFB0:
	.cfi_startproc
	dup	v0.2d, x0
	adrp	x0, .LC1
	adrp	x1, .LC0
	ldr	q3, [x0, #:lo12:.LC1]
	adrp	x0, .LC2
	ldr	q2, [x1, #:lo12:.LC0]
	ldr	q1, [x0, #:lo12:.LC2]
	adrp	x0, .LC3
	ushl	v2.2d, v0.2d, v2.2d
	ldr	q6, [x0, #:lo12:.LC3]
	adrp	x0, .LC4
	ushl	v3.2d, v0.2d, v3.2d
	ldr	q7, [x0, #:lo12:.LC4]
	adrp	x0, .LC5
	and	v2.16b, v2.16b, v1.16b
	ldr	q4, [x0, #:lo12:.LC5]
	adrp	x0, .LC6
	ushl	v6.2d, v0.2d, v6.2d
	ldr	q5, [x0, #:lo12:.LC6]
	adrp	x0, .LC7
	and	v3.16b, v3.16b, v1.16b
	sshl	v2.2d, v2.2d, v7.2d
	and	v6.16b, v6.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC7]
	adrp	x0, .LC8
	ushl	v5.2d, v0.2d, v5.2d
	sshl	v3.2d, v3.2d, v4.2d
	ldr	q4, [x0, #:lo12:.LC8]
	adrp	x0, .LC9
	sshl	v6.2d, v6.2d, v7.2d
	and	v5.16b, v5.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC9]
	adrp	x0, .LC10
	orr	v2.16b, v2.16b, v3.16b
	ushl	v4.2d, v0.2d, v4.2d
	ldr	q3, [x0, #:lo12:.LC10]
	adrp	x0, .LC11
	sshl	v5.2d, v5.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC11]
	adrp	x0, .LC12
	orr	v6.16b, v6.16b, v2.16b
	and	v4.16b, v4.16b, v1.16b
	ldr	q2, [x0, #:lo12:.LC12]
	adrp	x0, .LC13
	ushl	v3.2d, v0.2d, v3.2d
	sshl	v4.2d, v4.2d, v7.2d
	ushl	v2.2d, v0.2d, v2.2d
	ldr	q7, [x0, #:lo12:.LC13]
	adrp	x0, .LC14
	and	v3.16b, v3.16b, v1.16b
	orr	v5.16b, v5.16b, v6.16b
	ldr	q6, [x0, #:lo12:.LC14]
	adrp	x0, .LC15
	sshl	v3.2d, v3.2d, v7.2d
	and	v2.16b, v2.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC15]
	adrp	x0, .LC16
	orr	v4.16b, v4.16b, v5.16b
	ushl	v6.2d, v0.2d, v6.2d
	ldr	q5, [x0, #:lo12:.LC16]
	adrp	x0, .LC17
	sshl	v2.2d, v2.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC17]
	adrp	x0, .LC18
	orr	v3.16b, v3.16b, v4.16b
	and	v6.16b, v6.16b, v1.16b
	ldr	q4, [x0, #:lo12:.LC18]
	adrp	x0, .LC19
	ushl	v5.2d, v0.2d, v5.2d
	sshl	v6.2d, v6.2d, v7.2d
	ushl	v4.2d, v0.2d, v4.2d
	ldr	q7, [x0, #:lo12:.LC19]
	adrp	x0, .LC20
	and	v5.16b, v5.16b, v1.16b
	orr	v2.16b, v2.16b, v3.16b
	ldr	q3, [x0, #:lo12:.LC20]
	adrp	x0, .LC21
	sshl	v5.2d, v5.2d, v7.2d
	and	v4.16b, v4.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC21]
	adrp	x0, .LC22
	orr	v6.16b, v6.16b, v2.16b
	ushl	v3.2d, v0.2d, v3.2d
	ldr	q2, [x0, #:lo12:.LC22]
	adrp	x0, .LC23
	sshl	v4.2d, v4.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC23]
	adrp	x0, .LC24
	orr	v5.16b, v5.16b, v6.16b
	and	v3.16b, v3.16b, v1.16b
	ldr	q6, [x0, #:lo12:.LC24]
	adrp	x0, .LC25
	ushl	v2.2d, v0.2d, v2.2d
	sshl	v3.2d, v3.2d, v7.2d
	ushl	v6.2d, v0.2d, v6.2d
	ldr	q7, [x0, #:lo12:.LC25]
	adrp	x0, .LC26
	and	v2.16b, v2.16b, v1.16b
	orr	v4.16b, v4.16b, v5.16b
	ldr	q5, [x0, #:lo12:.LC26]
	adrp	x0, .LC27
	sshl	v2.2d, v2.2d, v7.2d
	and	v6.16b, v6.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC27]
	adrp	x0, .LC28
	orr	v3.16b, v3.16b, v4.16b
	ushl	v5.2d, v0.2d, v5.2d
	ldr	q4, [x0, #:lo12:.LC28]
	adrp	x0, .LC29
	sshl	v6.2d, v6.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC29]
	adrp	x0, .LC30
	orr	v2.16b, v2.16b, v3.16b
	and	v5.16b, v5.16b, v1.16b
	ldr	q3, [x0, #:lo12:.LC30]
	adrp	x0, .LC31
	ushl	v4.2d, v0.2d, v4.2d
	sshl	v5.2d, v5.2d, v7.2d
	ushl	v3.2d, v0.2d, v3.2d
	ldr	q7, [x0, #:lo12:.LC31]
	adrp	x0, .LC32
	and	v4.16b, v4.16b, v1.16b
	orr	v6.16b, v6.16b, v2.16b
	ldr	q2, [x0, #:lo12:.LC32]
	adrp	x0, .LC33
	sshl	v4.2d, v4.2d, v7.2d
	and	v3.16b, v3.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC33]
	adrp	x0, .LC34
	orr	v5.16b, v5.16b, v6.16b
	ushl	v2.2d, v0.2d, v2.2d
	ldr	q6, [x0, #:lo12:.LC34]
	adrp	x0, .LC35
	sshl	v3.2d, v3.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC35]
	adrp	x0, .LC36
	orr	v4.16b, v4.16b, v5.16b
	and	v2.16b, v2.16b, v1.16b
	ldr	q5, [x0, #:lo12:.LC36]
	adrp	x0, .LC37
	ushl	v6.2d, v0.2d, v6.2d
	sshl	v2.2d, v2.2d, v7.2d
	ushl	v5.2d, v0.2d, v5.2d
	ldr	q7, [x0, #:lo12:.LC37]
	adrp	x0, .LC38
	and	v6.16b, v6.16b, v1.16b
	orr	v3.16b, v3.16b, v4.16b
	ldr	q4, [x0, #:lo12:.LC38]
	adrp	x0, .LC39
	sshl	v6.2d, v6.2d, v7.2d
	and	v5.16b, v5.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC39]
	adrp	x0, .LC40
	orr	v2.16b, v2.16b, v3.16b
	ushl	v4.2d, v0.2d, v4.2d
	ldr	q3, [x0, #:lo12:.LC40]
	adrp	x0, .LC41
	sshl	v5.2d, v5.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC41]
	adrp	x0, .LC42
	orr	v6.16b, v6.16b, v2.16b
	and	v4.16b, v4.16b, v1.16b
	ldr	q2, [x0, #:lo12:.LC42]
	adrp	x0, .LC43
	ushl	v3.2d, v0.2d, v3.2d
	sshl	v4.2d, v4.2d, v7.2d
	ushl	v2.2d, v0.2d, v2.2d
	ldr	q7, [x0, #:lo12:.LC43]
	adrp	x0, .LC44
	and	v3.16b, v3.16b, v1.16b
	orr	v5.16b, v5.16b, v6.16b
	ldr	q6, [x0, #:lo12:.LC44]
	adrp	x0, .LC45
	sshl	v3.2d, v3.2d, v7.2d
	and	v2.16b, v2.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC45]
	adrp	x0, .LC46
	orr	v4.16b, v4.16b, v5.16b
	ushl	v6.2d, v0.2d, v6.2d
	ldr	q5, [x0, #:lo12:.LC46]
	adrp	x0, .LC47
	sshl	v2.2d, v2.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC47]
	adrp	x0, .LC48
	orr	v3.16b, v3.16b, v4.16b
	and	v6.16b, v6.16b, v1.16b
	ldr	q4, [x0, #:lo12:.LC48]
	adrp	x0, .LC49
	ushl	v5.2d, v0.2d, v5.2d
	sshl	v6.2d, v6.2d, v7.2d
	ushl	v4.2d, v0.2d, v4.2d
	ldr	q7, [x0, #:lo12:.LC49]
	adrp	x0, .LC50
	and	v5.16b, v5.16b, v1.16b
	orr	v2.16b, v2.16b, v3.16b
	ldr	q3, [x0, #:lo12:.LC50]
	adrp	x0, .LC51
	sshl	v5.2d, v5.2d, v7.2d
	and	v4.16b, v4.16b, v1.16b
	ldr	q7, [x0, #:lo12:.LC51]
	adrp	x0, .LC52
	orr	v6.16b, v6.16b, v2.16b
	ushl	v3.2d, v0.2d, v3.2d
	ldr	q2, [x0, #:lo12:.LC52]
	adrp	x0, .LC53
	sshl	v4.2d, v4.2d, v7.2d
	ldr	q7, [x0, #:lo12:.LC53]
	adrp	x0, .LC54
	orr	v5.16b, v5.16b, v6.16b
	and	v3.16b, v3.16b, v1.16b
	ldr	q6, [x0, #:lo12:.LC54]
	adrp	x0, .LC55
	ushl	v2.2d, v0.2d, v2.2d
	orr	v4.16b, v4.16b, v5.16b
	sshl	v3.2d, v3.2d, v7.2d
	ldr	q5, [x0, #:lo12:.LC55]
	adrp	x0, .LC56
	and	v2.16b, v2.16b, v1.16b
	ushl	v0.2d, v0.2d, v6.2d
	orr	v3.16b, v3.16b, v4.16b
	ldr	q4, [x0, #:lo12:.LC56]
	sshl	v2.2d, v2.2d, v5.2d
	and	v0.16b, v0.16b, v1.16b
	orr	v1.16b, v2.16b, v3.16b
	sshl	v0.2d, v0.2d, v4.2d
	movi	v2.4s, 0
	orr	v0.16b, v0.16b, v1.16b
	ext	v1.16b, v0.16b, v2.16b, #8
	orr	v0.16b, v1.16b, v0.16b
	fmov	x0, d0
	ret
	.cfi_endproc
.LFE0:
	.size	des_pc1, .-des_pc1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.xword	-64
	.xword	-63
	.align	4
.LC1:
	.xword	-62
	.xword	-61
	.align	4
.LC2:
	.xword	1
	.xword	1
	.align	4
.LC3:
	.xword	-60
	.xword	-59
	.align	4
.LC4:
	.xword	55
	.xword	54
	.align	4
.LC5:
	.xword	53
	.xword	52
	.align	4
.LC6:
	.xword	-58
	.xword	-57
	.align	4
.LC7:
	.xword	51
	.xword	50
	.align	4
.LC8:
	.xword	-56
	.xword	-55
	.align	4
.LC9:
	.xword	49
	.xword	48
	.align	4
.LC10:
	.xword	-54
	.xword	-53
	.align	4
.LC11:
	.xword	47
	.xword	46
	.align	4
.LC12:
	.xword	-52
	.xword	-51
	.align	4
.LC13:
	.xword	45
	.xword	44
	.align	4
.LC14:
	.xword	-50
	.xword	-49
	.align	4
.LC15:
	.xword	43
	.xword	42
	.align	4
.LC16:
	.xword	-48
	.xword	-47
	.align	4
.LC17:
	.xword	41
	.xword	40
	.align	4
.LC18:
	.xword	-46
	.xword	-45
	.align	4
.LC19:
	.xword	39
	.xword	38
	.align	4
.LC20:
	.xword	-44
	.xword	-43
	.align	4
.LC21:
	.xword	37
	.xword	36
	.align	4
.LC22:
	.xword	-42
	.xword	-41
	.align	4
.LC23:
	.xword	35
	.xword	34
	.align	4
.LC24:
	.xword	-40
	.xword	-39
	.align	4
.LC25:
	.xword	33
	.xword	32
	.align	4
.LC26:
	.xword	-38
	.xword	-37
	.align	4
.LC27:
	.xword	31
	.xword	30
	.align	4
.LC28:
	.xword	-36
	.xword	-35
	.align	4
.LC29:
	.xword	29
	.xword	28
	.align	4
.LC30:
	.xword	-34
	.xword	-33
	.align	4
.LC31:
	.xword	27
	.xword	26
	.align	4
.LC32:
	.xword	-32
	.xword	-31
	.align	4
.LC33:
	.xword	25
	.xword	24
	.align	4
.LC34:
	.xword	-30
	.xword	-29
	.align	4
.LC35:
	.xword	23
	.xword	22
	.align	4
.LC36:
	.xword	-28
	.xword	-27
	.align	4
.LC37:
	.xword	21
	.xword	20
	.align	4
.LC38:
	.xword	-26
	.xword	-25
	.align	4
.LC39:
	.xword	19
	.xword	18
	.align	4
.LC40:
	.xword	-24
	.xword	-23
	.align	4
.LC41:
	.xword	17
	.xword	16
	.align	4
.LC42:
	.xword	-22
	.xword	-21
	.align	4
.LC43:
	.xword	15
	.xword	14
	.align	4
.LC44:
	.xword	-20
	.xword	-19
	.align	4
.LC45:
	.xword	13
	.xword	12
	.align	4
.LC46:
	.xword	-18
	.xword	-17
	.align	4
.LC47:
	.xword	11
	.xword	10
	.align	4
.LC48:
	.xword	-16
	.xword	-15
	.align	4
.LC49:
	.xword	9
	.xword	8
	.align	4
.LC50:
	.xword	-14
	.xword	-13
	.align	4
.LC51:
	.xword	7
	.xword	6
	.align	4
.LC52:
	.xword	-12
	.xword	-11
	.align	4
.LC53:
	.xword	5
	.xword	4
	.align	4
.LC54:
	.xword	-10
	.xword	-9
	.align	4
.LC55:
	.xword	3
	.xword	2
	.align	4
.LC56:
	.xword	1
	.xword	0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

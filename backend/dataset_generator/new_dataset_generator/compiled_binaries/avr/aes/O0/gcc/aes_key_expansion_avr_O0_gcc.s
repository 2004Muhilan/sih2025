	.file	"aes_key_expansion.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.text
.global	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
/* stack size = 19 */
.L__stack_usage = 19
	std Y+15,r25
	std Y+14,r24
	std Y+17,r23
	std Y+16,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+14
	ldd r19,Y+15
	add r18,r24
	adc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+16
	ldd r21,Y+17
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,16
	brlt .L3
	ldi r24,lo8(1)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
	rjmp .L4
.L10:
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L5
.L6:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	swap r24
	swap r25
	andi r25,0xf0
	eor r25,r24
	andi r24,0xf0
	eor r25,r24
	movw r18,r24
	subi r18,-12
	sbci r19,-1
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	movw r18,r24
	ldd r24,Y+16
	ldd r25,Y+17
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	movw r18,r28
	subi r18,-10
	sbci r19,-1
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,r20
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L5:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,4
	brlt .L6
	ldd r24,Y+10
	std Y+9,r24
	ldd r24,Y+11
	std Y+10,r24
	ldd r24,Y+12
	std Y+11,r24
	ldd r24,Y+13
	std Y+12,r24
	ldd r24,Y+9
	std Y+13,r24
	ldd r18,Y+10
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	subi r24,lo8(-(rcon))
	sbci r25,hi8(-(rcon))
	movw r30,r24
	ld r24,Z
	eor r24,r18
	std Y+10,r24
	std Y+8,__zero_reg__
	std Y+7,__zero_reg__
	rjmp .L7
.L9:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	movw r18,r24
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	movw r18,r24
	ldd r24,Y+16
	ldd r25,Y+17
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r21,Z
	ldd r24,Y+7
	ldd r25,Y+8
	andi r24,3
	andi r25,128
	tst r25
	brge .L8
	sbiw r24,1
	ori r24,252
	ori r25,255
	adiw r24,1
.L8:
	movw r18,r24
	movw r24,r28
	adiw r24,10
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r24
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	movw r18,r24
	ldd r24,Y+16
	ldd r25,Y+17
	add r24,r18
	adc r25,r19
	mov r18,r21
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	std Y+8,r25
	std Y+7,r24
.L7:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,16
	brge .+2
	rjmp .L9
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,11
	brge .+2
	rjmp .L10
	nop
/* epilogue start */
	adiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	aes_key_expansion, .-aes_key_expansion
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data

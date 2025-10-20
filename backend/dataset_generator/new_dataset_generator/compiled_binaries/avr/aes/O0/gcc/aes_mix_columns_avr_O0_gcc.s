	.file	"aes_mix_columns.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.type	gf_mul, @function
gf_mul:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+5,r24
	std Y+6,r22
	std Y+1,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	rjmp .L2
.L5:
	ldd r24,Y+6
	mov r24,r24
	ldi r25,0
	andi r24,1
	clr r25
	or r24,r25
	breq .L3
	ldd r25,Y+1
	ldd r24,Y+5
	eor r24,r25
	std Y+1,r24
.L3:
	ldd r24,Y+5
	andi r24,lo8(-128)
	std Y+4,r24
	ldd r24,Y+5
	lsl r24
	std Y+5,r24
	ldd r24,Y+4
	tst r24
	breq .L4
	ldd r25,Y+5
	ldi r24,lo8(27)
	eor r24,r25
	std Y+5,r24
.L4:
	ldd r24,Y+6
	lsr r24
	std Y+6,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,1
	std Y+3,r25
	std Y+2,r24
.L2:
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r24,8
	brlt .L5
	ldd r24,Y+1
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	gf_mul, .-gf_mul
.global	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 13 */
.L__stack_usage = 13
	std Y+10,r25
	std Y+9,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L8
.L9:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r18,r24
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	ld r24,Z
	std Y+5,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	ldd r24,Z+1
	std Y+6,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	ldd r24,Z+2
	std Y+7,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	ldd r24,Z+3
	std Y+8,r24
	ldi r22,lo8(2)
	ldd r24,Y+5
	call gf_mul
	mov r17,r24
	ldi r22,lo8(3)
	ldd r24,Y+6
	call gf_mul
	mov r25,r17
	eor r25,r24
	ldd r24,Y+7
	eor r25,r24
	ldd r24,Y+8
	mov r18,r25
	eor r18,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	st Z,r18
	ldi r22,lo8(2)
	ldd r24,Y+6
	call gf_mul
	mov r25,r24
	ldd r24,Y+5
	mov r17,r25
	eor r17,r24
	ldi r22,lo8(3)
	ldd r24,Y+7
	call gf_mul
	mov r19,r17
	eor r19,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	ldd r18,Y+8
	eor r18,r19
	movw r30,r24
	st Z,r18
	ldd r25,Y+5
	ldd r24,Y+6
	mov r17,r25
	eor r17,r24
	ldi r22,lo8(2)
	ldd r24,Y+7
	call gf_mul
	eor r17,r24
	ldi r22,lo8(3)
	ldd r24,Y+8
	call gf_mul
	mov r18,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	eor r18,r17
	movw r30,r24
	st Z,r18
	ldi r22,lo8(3)
	ldd r24,Y+5
	call gf_mul
	mov r25,r24
	ldd r24,Y+6
	eor r25,r24
	ldd r24,Y+7
	mov r17,r25
	eor r17,r24
	ldi r22,lo8(2)
	ldd r24,Y+8
	call gf_mul
	mov r18,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,3
	eor r18,r17
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L8:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,4
	brge .+2
	rjmp .L9
	nop
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	ret
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (GNU) 7.3.0"

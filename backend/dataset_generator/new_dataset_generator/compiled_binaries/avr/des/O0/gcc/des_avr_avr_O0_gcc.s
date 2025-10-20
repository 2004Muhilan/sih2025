	.file	"des_avr.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_encrypt_avr
	.type	des_encrypt_avr, @function
des_encrypt_avr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 11 */
/* stack size = 13 */
.L__stack_usage = 13
	std Y+7,r25
	std Y+6,r24
	std Y+9,r23
	std Y+8,r22
	std Y+11,r21
	std Y+10,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L6:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+6
	ldd r19,Y+7
	add r18,r24
	adc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+10
	ldd r21,Y+11
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L3
.L5:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r21,Z
	ldd r24,Y+3
	ldd r25,Y+4
	andi r24,7
	andi r25,128
	tst r25
	brge .L4
	sbiw r24,1
	ori r24,248
	ori r25,255
	adiw r24,1
.L4:
	movw r18,r24
	ldd r24,Y+8
	ldd r25,Y+9
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	mov r18,r21
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+5,r24
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	lsl r24
	rol r25
	mov r25,r24
	ldd r24,Y+5
	rol r24
	clr r24
	rol r24
	mov r20,r25
	or r20,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	mov r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L3:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,16
	brge .+2
	rjmp .L5
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,8
	brge .+2
	rjmp .L6
	nop
/* epilogue start */
	adiw r28,11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	des_encrypt_avr, .-des_encrypt_avr
.global	des_decrypt_avr
	.type	des_decrypt_avr, @function
des_decrypt_avr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 11 */
/* stack size = 13 */
.L__stack_usage = 13
	std Y+7,r25
	std Y+6,r24
	std Y+9,r23
	std Y+8,r22
	std Y+11,r21
	std Y+10,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L8
.L12:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+6
	ldd r19,Y+7
	add r18,r24
	adc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+10
	ldd r21,Y+11
	add r24,r20
	adc r25,r21
	movw r26,r18
	ld r18,X
	movw r26,r24
	st X,r18
	ldi r24,lo8(15)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
	rjmp .L9
.L11:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+5,r24
	ldd r24,Y+5
	lsr r24
	mov r18,r24
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	mov r31,r24
	lsr r31
	mov r30,r24
	ror r30
	clr r30
	ror r30
	mov r24,r30
	mov r20,r18
	or r20,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	mov r18,r20
	movw r26,r24
	st X,r18
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r21,X
	ldd r24,Y+3
	ldd r25,Y+4
	andi r24,7
	andi r25,128
	tst r25
	brge .L10
	sbiw r24,1
	ori r24,248
	ori r25,255
	adiw r24,1
.L10:
	movw r18,r24
	ldd r24,Y+8
	ldd r25,Y+9
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r20,X
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	add r24,r18
	adc r25,r19
	mov r18,r21
	eor r18,r20
	movw r26,r24
	st X,r18
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
.L9:
	ldd r24,Y+3
	ldd r25,Y+4
	tst r25
	brlt .+2
	rjmp .L11
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L8:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,8
	brge .+2
	rjmp .L12
	nop
/* epilogue start */
	adiw r28,11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	des_decrypt_avr, .-des_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"

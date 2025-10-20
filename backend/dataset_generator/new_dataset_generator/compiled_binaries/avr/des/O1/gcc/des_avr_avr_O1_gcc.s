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
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	mov r26,r20
	mov r27,r21
	movw r16,r24
	subi r16,-8
	sbci r17,-1
	rjmp .L4
.L2:
	add r18,r22
	adc r19,r23
	movw r28,r18
	ld r25,Y
	ld r24,Z
	eor r25,r24
	lsl r25
	adc r25,__zero_reg__
	st Z,r25
	subi r20,-1
	sbci r21,-1
	cpi r20,16
	cpc r21,__zero_reg__
	breq .L7
.L3:
	movw r18,r20
	andi r18,7
	andi r19,128
	tst r19
	brge .L2
	subi r18,1
	sbc r19,__zero_reg__
	ori r18,248
	ori r19,255
	subi r18,-1
	sbci r19,-1
	rjmp .L2
.L7:
	adiw r26,1
	cp r14,r16
	cpc r15,r17
	breq .L8
.L4:
	movw r28,r14
	ld r24,Y+
	movw r14,r28
	movw r30,r26
	st X,r24
	ldi r21,0
	ldi r20,0
	rjmp .L3
.L8:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	des_encrypt_avr, .-des_encrypt_avr
.global	des_decrypt_avr
	.type	des_decrypt_avr, @function
des_decrypt_avr:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	mov r26,r20
	mov r27,r21
	movw r16,r24
	subi r16,-8
	sbci r17,-1
	rjmp .L12
.L10:
	add r18,r22
	adc r19,r23
	movw r28,r18
	ld r24,Y
	eor r25,r24
	st Z,r25
	subi r20,1
	sbc r21,__zero_reg__
	brcs .L15
.L11:
	ld r25,Z
	bst r25,0
	ror r25
	bld r25,7
	st Z,r25
	movw r18,r20
	andi r18,7
	andi r19,128
	tst r19
	brge .L10
	subi r18,1
	sbc r19,__zero_reg__
	ori r18,248
	ori r19,255
	subi r18,-1
	sbci r19,-1
	rjmp .L10
.L15:
	adiw r26,1
	cp r14,r16
	cpc r15,r17
	breq .L16
.L12:
	movw r28,r14
	ld r24,Y+
	movw r14,r28
	movw r30,r26
	st X,r24
	ldi r20,lo8(15)
	ldi r21,0
	rjmp .L11
.L16:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	des_decrypt_avr, .-des_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"

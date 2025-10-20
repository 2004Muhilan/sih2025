	.file	"rsa_avr.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_mod_exp_avr
	.type	rsa_mod_exp_avr, @function
rsa_mod_exp_avr:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	movw r22,r24
	movw r24,r26
	call __udivmodsi4
	movw r26,r24
	movw r24,r22
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	rjmp .L2
.L4:
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	andi r24,1
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L3
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	movw r22,r24
	movw r24,r26
	call __mulsi3
	movw r26,r24
	movw r24,r22
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	movw r22,r24
	movw r24,r26
	call __udivmodsi4
	movw r26,r24
	movw r24,r22
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L3:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	movw r22,r24
	movw r24,r26
	call __mulsi3
	movw r26,r24
	movw r24,r22
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	movw r22,r24
	movw r24,r26
	call __udivmodsi4
	movw r26,r24
	movw r24,r22
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L2:
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L4
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rsa_mod_exp_avr, .-rsa_mod_exp_avr
.global	rsa_generate_keys_avr
	.type	rsa_generate_keys_avr, @function
rsa_generate_keys_avr:
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
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldi r24,lo8(61)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldi r24,lo8(53)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	movw r18,r24
	ldi r20,0
	ldi r21,0
	ldd r24,Y+3
	ldd r25,Y+4
	movw r24,r24
	ldi r26,0
	ldi r27,0
	movw r22,r24
	movw r24,r26
	call __mulsi3
	movw r26,r24
	movw r24,r22
	ldd r18,Y+5
	ldd r19,Y+6
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r18,Y+7
	ldd r19,Y+8
	ldi r24,lo8(17)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r18,Y+9
	ldd r19,Y+10
	ldi r24,lo8(-99)
	ldi r25,lo8(1)
	ldi r26,0
	ldi r27,0
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
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
	ret
	.size	rsa_generate_keys_avr, .-rsa_generate_keys_avr
.global	rsa_encrypt_avr
	.type	rsa_encrypt_avr, @function
rsa_encrypt_avr:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 18 */
.L__stack_usage = 18
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	ldd r14,Y+9
	ldd r15,Y+10
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
	call rsa_mod_exp_avr
	movw r26,r24
	movw r24,r22
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rsa_encrypt_avr, .-rsa_encrypt_avr
.global	rsa_decrypt_avr
	.type	rsa_decrypt_avr, @function
rsa_decrypt_avr:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 18 */
.L__stack_usage = 18
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	ldd r14,Y+9
	ldd r15,Y+10
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
	call rsa_mod_exp_avr
	movw r26,r24
	movw r24,r22
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rsa_decrypt_avr, .-rsa_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"

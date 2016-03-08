segment .text
	global		_ft_strcmp
	extern		_ft_strlen

; int   ft_strcmp(char const *s1, char const *s2);

_ft_strcmp:

	push rbp
	mov rbp, rsp
	;
	push rcx

	push		rdi
	push		rsi

@if_null:
	cmp			rdi, 0
	je			@done
	cmp			rsi, 0
	je			@done

@lenght_check:
	call		_ft_strlen
	mov			r10, rax

	mov			rdi, rsi
	call		_ft_strlen
	mov			r11, rax

	cmp			r10, r11
	jg			@s2
@s1:
	mov			rcx, r10
	jmp			@byte_check

@s2:
	mov			rcx, r11

@byte_check:
	add			rcx, 1

	pop			rdi
	pop			rsi

	cld
	repe		cmpsb

@diff:
	dec			rdi
	dec			rsi

	mov			r10b, [rsi]
	mov			r11b, [rdi]
	sub			r10, r11
	mov			rax, r10
	jmp			@done

@done:
	pop rcx
	;
	mov rsp, rbp
	pop rbp

	ret
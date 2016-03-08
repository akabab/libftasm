segment .text
	global		_ft_strequ
	extern		_ft_strlen

; int   ft_strequ(char const *s1, char const *s2);

_ft_strequ:

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
	jne			@false

@byte_check:
	mov			rcx, r10

	pop			rdi
	pop			rsi

	cld
	rep			cmpsb
	jne			@false

@true:
	mov			rax, 1
	jmp			@done

@false:
	mov			rax, 0
	jmp			@done

@done:
	pop rcx
	;
	mov rsp, rbp
	pop rbp

	ret
segment .text
	global		_ft_strnequ
	extern		_ft_strncmp

; int   ft_strnequ(char const *s1, char const *s2, size_t n);

_ft_strnequ:
	call		_ft_strncmp
	test		rax, rax
	jz			@true
	mov			rax, 0
	jmp			@done

@true:
	mov			rax, 1

@done:
	ret
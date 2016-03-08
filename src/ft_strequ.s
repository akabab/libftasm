segment .text
	global		_ft_strequ
	extern		_ft_strcmp

; int   ft_strequ(char const *s1, char const *s2);

_ft_strequ:
	call		_ft_strcmp
	test		rax, rax
	jz			@true
	mov			rax, 0
	jmp			@done

@true:
	mov			rax, 1

@done:
	ret
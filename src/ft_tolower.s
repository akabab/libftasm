segment .text
	global		_ft_tolower
	extern		_ft_isupper

; int			ft_tolower(int c);

_ft_tolower:
	call		_ft_isupper
	cmp			rax, 0
	je			done
	add			rdi, 32

done:
	mov			rax, rdi
	ret
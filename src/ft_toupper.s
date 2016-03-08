segment .text
	global		_ft_toupper
	extern		_ft_islower

; int			ft_toupper(int c);

_ft_toupper:
	call		_ft_islower
	cmp			rax, 0
	je			done
	sub			rdi, 32

done:
	mov			rax, rdi
	ret
segment .text
	global		_ft_toupper
	extern		_ft_islower

_ft_toupper:
	call		_ft_islower
	cmp			rax, 0
	je			done
	sub			rdi, 32

done:
	mov			rax, rdi
	ret
segment .text
	global		_ft_isalpha
	extern		_ft_islower
	extern		_ft_isupper

; int			ft_isalpha(int c);

_ft_isalpha:
	call		_ft_islower
	cmp			rax, 1
	jge			done
	call		_ft_isupper

done:
	ret
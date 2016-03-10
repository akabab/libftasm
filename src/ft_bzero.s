segment .text
	global		_ft_bzero
	extern		_ft_memset

; void		ft_bzero(void *s, size_t n);

_ft_bzero:
	mov			rdx, rsi
	mov			rsi, 0
	call		_ft_memset

@done:
	ret
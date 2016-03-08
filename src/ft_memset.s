segment .text
	global		_ft_memset

; void		*ft_memset(void *b, int c, size_t n);

_ft_memset:
	push		rdi
	mov			rcx, rdx
	mov			al, sil
	cld
	rep			stosb
	pop			rax
	ret
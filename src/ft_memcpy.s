segment .text
	global		_ft_memcpy

; void		*ft_memcpy(void *dst, const void *src, size_t n);

_ft_memcpy:
	push		rdi
	mov			rcx, rdx
	rep			movsb

done:
	pop			rax
	ret
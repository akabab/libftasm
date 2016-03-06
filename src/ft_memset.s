segment .text
	global		_ft_memset

_ft_memset:
	push		rdi
	mov			rcx, rdx
	mov			al, sil 
	rep			stosb

done:
	pop			rax
	ret
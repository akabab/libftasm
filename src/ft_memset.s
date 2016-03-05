segment .text
	global		_ft_memset

_ft_memset:

loop:
	cmp			rdx, 0
	je			done
	mov byte	[rdi], sil
	inc			rdi
	dec			rdx
	jmp			loop

done:
	ret
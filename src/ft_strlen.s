segment .text
	global		_ft_strlen

_ft_strlen:
	mov		rax, 0

loop:
	cmp byte	[rdi], 0
	je			done
	inc			rdi
	inc			rax
	jmp			loop

done:
	ret
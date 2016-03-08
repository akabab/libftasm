segment .text
	global		_ft_isprint

; int			ft_isprint(int c);

_ft_isprint:
	cmp			rdi, 32
	jl			false
	cmp			rdi, 126
	jg			false
	mov			rax, 1
	jmp			done

false:
	mov			rax, 0

done:
	ret
segment .text
	global		_ft_isascii

_ft_isascii:
	cmp			rdi, 0
	jl			false
	cmp			rdi, 127
	jg			false
	mov			rax, 1
	jmp			done

false:
	mov			rax, 0

done:
	ret
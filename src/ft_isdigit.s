segment .text
	global		_ft_isdigit

_ft_isdigit:
	cmp			rdi, '0'
	jl			false
	cmp			rdi, '9'
	jg			false
	mov			rax, 1
	jmp			done

false:
	mov			rax, 0

done:
	ret
segment .text
	global		_ft_islower

_ft_islower:
	cmp			rdi, 'a'
	jl			false
	cmp			rdi, 'z'
	jg			false
	mov			rax, 1
	jmp			done

false:
	mov			rax, 0

done:
	ret
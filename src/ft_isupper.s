segment .text
	global		_ft_isupper

; int			ft_isupper(int c);

_ft_isupper:
	cmp			rdi, 'A'
	jl			false
	cmp			rdi, 'Z'
	jg			false
	mov			rax, 1
	jmp			done

false:
	mov			rax, 0

done:
	ret
segment .text
	global		_ft_strlen

; size_t		ft_strlen(char *str);

_ft_strlen:
	push		rdi
	sub			rcx, rcx
	sub			al, al
	not			rcx
	cld
	repne		scasb
	not			rcx
	pop			rdi
	lea			rax, [rcx-1]
	ret
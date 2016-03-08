segment .text
	global		_ft_strcat
	extern		_ft_strlen

_ft_strcat:
	push		rdi

	mov			r8, rdi
	mov			r9, rsi
	mov			rdi, rsi
	call		_ft_strlen
	mov			r10, rax
	mov			rdi, r8
	call		_ft_strlen
	mov			rdi, r8
	add			rdi, rax
	mov			rcx, r10
	mov			rsi, r9
	rep			movsb
	mov	byte	[rdi], 0

done:
	pop			rax
	ret
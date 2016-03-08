segment .text
	global		_ft_strcmp
	extern		_ft_strlen

; int   ft_strcmp(char const *s1, char const *s2);

_ft_strcmp:
	call		_ft_strlen
	inc			rax
	mov			rcx, rax
	cld
	repe cmpsb
	movzx		rax, byte [rdi-1]
	movzx		rdx, byte [rsi-1]
	sub			rax, rdx
	ret

segment .text
	global		_ft_strncmp
	extern		_ft_strlen

; int   ft_strncmp(char const *s1, char const *s2, size_t n);

_ft_strncmp:
	mov			rcx, rdx
	cld
	repe cmpsb
	movzx		rax, byte [rdi-1]
	movzx		rdx, byte [rsi-1]
	sub			rax, rdx
	ret

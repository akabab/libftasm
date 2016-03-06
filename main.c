# include <string.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <ctype.h>
# include <fcntl.h>

void logit (char * str)
{
	printf("\n\033[33m > %s\033[0m\n\n", str);
}


static void		test_ft_strlen_sub(char *str)
{
	printf("[%s] -> %lu (%lu)\n", str, ft_strlen(str), strlen(str));
	return ;
}

void			test_ft_strlen(void)
{
	printf("== %s ==\n", __func__);
	test_ft_strlen_sub("Zaz aime les poneys.");
	test_ft_strlen_sub("toto");
	test_ft_strlen_sub("");
	return ;
}

static void	test_ft_memcpy_sub(char *s1, char *s2, char *s3, size_t len)
{
	printf("[%s] {%s} -> ", s1, s3);
	ft_memcpy(s1, s3, len);
	printf("[%s]\n", s1);
	printf("[%s] {%s} -> ", s2, s3);
	ft_memcpy(s2, s3, len);
	printf("[%s]\n", s2);
}

void	test_ft_memcpy()
{
	char	s1[20] = "cacaquipue";
	char	s2[20] = "cacaquipue";

	printf("== %s ==\n", __func__);
	test_ft_memcpy_sub(s1, s2, "abcdefghijklmnopqrs", 20);
	test_ft_memcpy_sub(s1, s2, "                   ", 20);
	test_ft_memcpy_sub(s1, s2, "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", 20);
	return ;
}


void	test_ft_memset_sub(char *s1, char *s2, char c, size_t len)
{
	ft_memset(s1, c, len);
	memset(s2, c, len);
	s1[19] = '\0';
	s2[19] = '\0';
	printf("c: %c, len = %lu -> [%s] vs sys[%s]\n", c, len, s1, s2);
}

void	test_ft_memset(void)
{
	char	s1[20];
	char	s2[20];

	printf("== %s ==\n", __func__);
	test_ft_memset_sub(s1, s2, '\0', 19);
	test_ft_memset_sub(s1, s2, 'c', 3);
	test_ft_memset_sub(s1, s2, 'd', 19);
	test_ft_memset_sub(s1, s2, 'e', 7);
	return ;
}

void		test_ft_bzero(void)
{
	int		nb;
	char	*str;

	printf("== %s ==\n", __func__);
	nb = 42;
	str = strdup("abcdefghijklmnopqrstuvwxyz");
	printf("nb = %d -> ", nb);
	ft_bzero((void *)&nb, 4);
	printf("%d\n", nb);
	printf("[%s] -> [", str);
	ft_bzero(str, 26);
	write(1, str, 26);
	printf("]\n");
	free(str);
	return ;
}

void test_ft_isalpha (void)
{
	/**
	** -------------------------------------------------------------------------
	** ft_isalpha
	** -------------------------------------------------------------------------
	**/

	logit("ft_isalpha");

	printf("%c %d\n", 'a', ft_isalpha('a'));
	printf("%c %d\n", 'A', ft_isalpha('A'));

	printf("%c %d\n", 'z', ft_isalpha('z'));
	printf("%c %d\n", 'Z', ft_isalpha('Z'));

	printf("%c %d\n", '@', ft_isalpha('@'));
	printf("%c %d\n", '4', ft_isalpha('4'));
	printf("%c %d\n", '_', ft_isalpha('_'));
	printf("%c %d\n", '!', ft_isalpha('!'));
	printf("%c %d\n", '[', ft_isalpha('['));
	printf("%c %d\n", '{', ft_isalpha('{'));
}

int			main(void)
{
	// test_ft_bzero();
	// test_ft_memset();
	// test_ft_memcpy();
	// test_ft_strlen();
	// test_ft_isalpha();
	ft_puts(NULL);
	ft_puts("foo bar baz");
	return (0);
}
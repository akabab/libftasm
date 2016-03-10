#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include "libfts.h"

int		main(int ac, char *av[])
{
	int		i;

	if (ac > 1)
	{
		i = 1;
		while (i < ac)
		{
			ft_puts(av[i]);
			i++;
		}
	}
	else
	{
		printf("usage: %s <message> ...\n", av[0]);
	}
	return (0);
}

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include "libfts.h"

int		main(int ac, char *av[])
{
	int		fd;

	if (ac == 1)
	{
		ft_cat(0);
	}
	else if (ac == 2)
	{
		fd = open(av[1], O_RDONLY);
		ft_cat(fd);
		if (fd != -1)
			close(fd);
		else
			printf("error\n");
	}
	else
	{
		printf("usage: %s [file]\n", av[0]);
	}
	return (0);
}

SPATH = src
HPATH = inc
OPATH = obj

NAME = libfts.a
SFLAGS = -f macho64

SRCS = \
		ft_bzero.s			\
		ft_memset.s			\
		ft_memcpy.s			\
		ft_strlen.s

# HFILES = $(patsubst %,$(HPATH)/%, $(HEADER))
SFILES = $(patsubst %.s, $(OPATH)/%.o, $(SRCS))

all: $(OPATH) $(NAME)

$(NAME): $(SFILES)
	ar rc $@ $^
	ranlib $@

$(OPATH)/%.o: $(SPATH)/%.s
	nasm $(SFLAGS) $< -o $@

clean:
	rm -rf $(OPATH)

fclean: clean
	rm -f $(NAME)

re: fclean all

$(OPATH):
	mkdir -p $@

# TESTS

test:
	gcc main.c $(NAME)
	./a.out
SPATH = src
HPATH = inc
OPATH = obj

NAME = libfts.a
SFLAGS = -f macho64

SRCS = \
		ft_bzero.s			\
		ft_memset.s			\
		ft_memcpy.s			\
		ft_strcat.s			\
		ft_strcmp.s			\
		ft_strequ.s			\
		ft_strlen.s			\
		ft_puts.s			\
		ft_isalpha.s		\
		ft_islower.s		\
		ft_isupper.s		\
		ft_isalnum.s		\
		ft_isascii.s		\
		ft_isdigit.s		\
		ft_isprint.s		\
		ft_tolower.s		\
		ft_toupper.s

# HFILES = $(patsubst %,$(HPATH)/%, $(HEADER))
SFILES = $(patsubst %.s, $(OPATH)/%.o, $(SRCS))

all: $(OPATH) $(NAME)

$(NAME): $(SFILES)
	ar rc $@ $^
	ranlib $@

$(OPATH)/%.o: $(SPATH)/%.s $(HPATH)/libfts.h
	nasm $(SFLAGS) $< -o $@

clean:
	rm -rf $(OPATH)

fclean: clean
	rm -f $(NAME)

re: fclean all

$(OPATH):
	mkdir -p $@

# TESTS

tests: all
	gcc main.c $(NAME) -I $(HPATH) -o tests
	./tests

qp: all
	gcc main_qperez.c $(NAME) -I $(HPATH) -o tests_qp
	./tests_qp
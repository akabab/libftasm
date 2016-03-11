# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/03/10 20:59:14 by ycribier          #+#    #+#              #
#    Updated: 2016/03/11 11:02:30 by ycribier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SPATH = src
HPATH = inc
OPATH = obj

NAME = libfts.a
SFLAGS = -f macho64
CFLAGS = -Wall -Werror -Wextra

SRCS = \
		ft_bzero.s			\
		ft_memset.s			\
		ft_memcpy.s			\
		ft_strcat.s			\
		ft_strncmp.s		\
		ft_strcmp.s			\
		ft_strnequ.s		\
		ft_strequ.s			\
		ft_strchr.s			\
		ft_strlen.s			\
		ft_strdup.s			\
		ft_strcpy.s			\
		ft_strncpy.s		\
		ft_puts.s			\
		ft_isalpha.s		\
		ft_islower.s		\
		ft_isupper.s		\
		ft_isalnum.s		\
		ft_isascii.s		\
		ft_isdigit.s		\
		ft_isprint.s		\
		ft_tolower.s		\
		ft_toupper.s		\
		ft_cat.s

SFILES = $(patsubst %.s, $(OPATH)/%.o, $(SRCS))

all: $(OPATH) $(NAME)

$(NAME): $(SFILES)
	ar rc $@ $^
	ranlib $@

$(OPATH)/%.o: $(SPATH)/%.s $(HPATH)/libfts.h
	nasm $(SFLAGS) $< -o $@

clean:
	rm -rf $(OPATH)
	rm -f tests*

fclean: clean
	rm -f $(NAME)

re: fclean all

$(OPATH):
	mkdir -p $@

# TESTS



tests_qp: all
	gcc $(CFLAGS) main_qperez.c $(NAME) -I $(HPATH) -o tests_qp
	./tests_qp

tests_puts: all
	gcc $(CFLAGS) main_puts.c $(NAME) -I $(HPATH) -o tests_puts
	./tests_puts

tests_cat: all
	gcc $(CFLAGS) main_cat.c $(NAME) -I $(HPATH) -o tests_cat
	./tests_cat

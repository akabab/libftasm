/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/03/10 20:36:37 by ycribier          #+#    #+#             */
/*   Updated: 2016/03/10 20:59:45 by ycribier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS
# define LIBFTS

void		ft_bzero(void *s, size_t n);
int			ft_isalpha(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);

size_t		ft_strlen(char *str);
char		*ft_strcat(char *s1, char const *s2);
void		*ft_memset(void *b, int c, size_t n);
void		*ft_memcpy(void *dst, const void *src, size_t n);

char		*ft_strdup(char const *str);

int			ft_puts(const char *str);
void		ft_cat(int fd);

// BONUS

int			ft_islower(int c);
int			ft_isupper(int c);

int			ft_strncmp(char const *s1, char const *s2, size_t n);
int			ft_strcmp(char const *s1, char const *s2);
int			ft_strnequ(char const *s1, char const *s2, size_t n);
int			ft_strequ(char const *s1, char const *s2);
char		*ft_strchr(const char *s, int c);

#endif

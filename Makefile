# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adiaz-be <adiaz-be@student.42malaga.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/23 12:11:06 by adiaz-be          #+#    #+#              #
#    Updated: 2022/09/23 12:11:46 by adiaz-be         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES	=	ft_atoi.c		\
			ft_bzero.c		\
			ft_calloc.c		\
			ft_isalnum.c	\
			ft_isalpha.c	\
			ft_isascii.c	\
			ft_isdigit.c	\
			ft_isprint.c	\
			ft_memchr.c		\
			ft_memcpy.c		\
			ft_memmove.c	\
			ft_memset.c		\
			ft_split.c		\
			ft_strchr.c		\
			ft_strdup.c		\
			ft_strjoin.c	\
			ft_strlcat.c 	\
			ft_strlcpy.c	\
			ft_strlen.c 	\
			ft_strncmp.c	\
			ft_strnstr.c	\
			ft_strrchr.c	\
			ft_strtrim.c	\
			ft_substr.c		\
			ft_tolower.c	\
			ft_toupper.c	\

NAME	=	libft.a

OBJECTS	=	$(SOURCES:.c=.o)

CC		=	gcc

CFLAGS	+=	-Wall -Werror -Wextra

$(NAME):	$(OBJECTS)
			ar -crs $@ $^

%.o:		%.c
			$(CC) $(CFLAGS) -c $^ -o $@

all:		$(NAME)
			-j 4

clean:
			rm -rf $(OBJECTS)

fclean:		clean
			rm -rf $(NAME)		

re:			fclean all

.PHONY:		all clean fclean re
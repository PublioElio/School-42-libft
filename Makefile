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

SRC	=	ft_atoi.c		\
		ft_bzero.c		\
		ft_calloc.c		\
		ft_isalnum.c	\
		ft_isalpha.c	\
		ft_isascii.c	\
		ft_isdigit.c	\
		ft_isprint.c	\
		ft_itoa.c		\
		ft_memchr.c		\
		ft_memcmp.c		\
		ft_memcpy.c		\
		ft_memmove.c	\
		ft_memset.c		\
		ft_putchar_fd.c	\
		ft_putendl_fd.c	\
		ft_putnbr_fd.c	\
		ft_putstr_fd.c	\
		ft_split.c		\
		ft_strchr.c		\
		ft_strdup.c		\
		ft_striteri.c	\
		ft_strjoin.c	\
		ft_strlcat.c 	\
		ft_strlcpy.c	\
		ft_strlen.c 	\
		ft_strmapi.c	\
		ft_strncmp.c	\
		ft_strnstr.c	\
		ft_strrchr.c	\
		ft_strtrim.c	\
		ft_substr.c		\
		ft_tolower.c	\
		ft_toupper.c	\

OBJS = $(SRC:.c=.o)

BONUS =	ft_lstadd_back.c	\
		ft_lstadd_front.c	\
		ft_lstclear.c	\
		ft_lstdelone.c	\
		ft_lstiter.c	\
		ft_lstlast.c	\
		ft_lstmap.c		\
		ft_lstnew.c		\
		ft_lstsize.c	\

BONUS_OBJS = $(BONUS:.c=.o)

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar -crs

$(NAME): $(OBJS)
	$(AR) $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

all: $(NAME)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean:	clean
	$(RM) $(NAME)		

re:	fclean all

bonus: $(OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:	all clean fclean re bonus
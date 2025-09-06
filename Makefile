# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nkuydin <nkuydin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/08/27 22:09:20 by nkuydin           #+#    #+#              #
#    Updated: 2025/09/06 19:47:35 by nkuydin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_strncmp.c ft_strlen.c ft_strlcpy.c \
		ft_strlcat.c ft_strdup.c ft_memset.c \
		ft_memmove.c ft_memcpy.c ft_isprint.c \
		ft_isdigit.c ft_isascii.c ft_isalpha.c \
		ft_isalnum.c ft_bzero.c ft_atoi.c \
		ft_memcmp.c ft_strchr.c ft_strrchr.c \
		ft_memchr.c ft_strnstr.c ft_toupper.c \
		ft_tolower.c ft_calloc.c ft_substr.c \
		ft_strjoin.c ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_strtrim.c \
		ft_split.c \

BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c \
		ft_lstsize_bonus.c ft_lstlast_bonus.c \
		ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c ft_lstiter_bonus.c \
		ft_lstmap_bonus.c \

OBJS = ${SRCS:.c=.o}
BONUS_OBJS = ${BONUS:.c=.o}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS} Makefile libft.a
	ar rc ${NAME} ${OBJS}

bonus: ${BONUS_OBJS} all
	ar rcs ${NAME} ${BONUS_OBJS}

all: ${NAME}

clean: 
	rm -f ${OBJS} ${BONUS_OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re bonus
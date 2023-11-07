# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: astoll <astoll@student.42lausanne.ch>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/25 14:29:24 by astoll            #+#    #+#              #
#    Updated: 2023/11/07 09:47:29 by astoll           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_atoi.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
		ft_isprint.c ft_memcmp.c ft_strncmp.c ft_tolower.c ft_toupper.c \
		ft_itoa.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strmapi.c \
		ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_bzero.c \
		ft_calloc.c ft_memchr.c ft_memcpy.c ft_memmove.c ft_memset.c \
		ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_striteri.c \
		ft_strlcat.c ft_strlcpy.c ft_strlen.c

SRCSB = ft_lstlast.c ft_lstnew.c ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
		ft_lstdelone.c ft_lstiter.c ft_lstsize.c

OBJS = ${SRCS:.c=.o}

OBJSB = ${SRCSB:.c=.o}

LIBC = ar rcs

FLAGS = -Wall -Wextra -Wextra

CC = cc

RM = rm -f

.c.o:
		${CC} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
		${LIBC} ${NAME} ${OBJS}

all: ${NAME}

bonus : ${NAME} ${OBJSB}
		${LIBC} ${NAME} ${OBJSB}

clean:
		${RM} ${OBJS} ${OBJSB}

fclean: clean
		${RM} ${NAME} ${bonus}

re: fclean all

.PHONY : all bonus clean fclean re
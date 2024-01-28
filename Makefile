# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yalechin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/21 16:24:29 by yalechin          #+#    #+#              #
#    Updated: 2024/01/21 16:24:30 by yalechin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



NAME = libftprintf.a
LIBFT = ./libft/libft.a

CFILES = 	ft_printf.c \
			ft_print_char.c \
			ft_print_numbers.c \
			ft_print_strings.c \
			ft_print_hex_l.c \
			ft_print_hex_u.c \
			ft_print_unsigned.c \
			ft_print_pointer.c

OFILES = $(CFILES:.c=.o)

CC = ar rcs
HDRS = ft_printf.h
CFLAGS = -Wall -Wextra -Werror

#Study the pattern rule! 
%.o : %.c
	gcc ${CFLAGS} -c $< -o $@

all: $(NAME)

$(NAME): $(OFILES)
	make -C ./libft 
	cp $(LIBFT) $(NAME)
	$(CC) $(NAME) $(OFILES)

clean: 
	make -C ./libft clean
	rm -f $(OFILES)

fclean: clean
	make -C ./libft fclean
	rm -f $(NAME)

re: fclean all

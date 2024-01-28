/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yalechin <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/21 17:19:51 by yalechin          #+#    #+#             */
/*   Updated: 2024/01/21 17:19:53 by yalechin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "./libft/libft.h"
# include <stdarg.h>
# include <stdio.h>
# include <unistd.h>

int	ft_printf(const char *format, ...);
int	ft_print_char(int c);
int	ft_print_numbers(int x);
int	ft_print_strings(char *s);
int	ft_print_hex_l(unsigned int x);
int	ft_print_hex_u(unsigned int x);
int	ft_print_unsigned(unsigned int x);
int	ft_print_pointer(unsigned long long x);

#endif
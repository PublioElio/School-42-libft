/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adiaz-be <adiaz-be@student.42malaga.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/24 16:52:08 by adiaz-be          #+#    #+#             */
/*   Updated: 2022/09/24 16:52:36 by adiaz-be         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

bool	space(char c)
{
	return ((c >= 9 && c <= 13) || c == 32);
}

bool	get_number(char c)
{
	return (c >= 48 && c <= 57);
}

int	ft_atoi(const char *str)
{
	int	number;
	int	negative;

	number = 0;
	negative = 1;
	while (space(*str))
		str++;
	if (*str == 43 || *str == 45)
	{
		if (*str == 45)
			negative *= -1;
		str++;
	}
	while (get_number(*str))
	{
		number = number * 10 + (*str - '0');
		str++;
	}
	return (number * negative);
}

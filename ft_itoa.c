/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adiaz-be <adiaz-be@student.42malaga.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/30 17:51:48 by adiaz-be          #+#    #+#             */
/*   Updated: 2022/09/30 17:52:15 by adiaz-be         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	get_size(int n)
{
	size_t	size;

	if (n > 0)
		size = 0;
	else
		size = 1;
	while (n)
	{
		n /= 10;
		size++;
	}
	return (size);
}

char	*ft_itoa(int n)
{
	char	*str;
	long	num;
	size_t	size;

	num = n;
	size = get_size(n);
	if (n < 0)
		num *= -1;
	str = (char *)malloc(size + 1);
	if (!str)
		return (NULL);
	*(str + size--) = '\0';
	while (num > 0)
	{
		*(str + size--) = num % 10 + '0';
		num /= 10;
	}
	if (size == 0 && str[1] == '\0')
		*(str + size) = '0';
	else if (size == 0 && str[1])
		*(str + size) = '-';
	return (str);
}

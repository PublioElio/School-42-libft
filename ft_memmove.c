/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adiaz-be <adiaz-be@student.42malaga.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/24 15:26:59 by adiaz-be          #+#    #+#             */
/*   Updated: 2022/09/24 15:28:01 by adiaz-be         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	int	i;

	if (!dst && !src)
		return (NULL);
	if (dst > src)
	{
		i = (int)len - 1;
		while (i >= 0)
		{
			*(char *)(dst + i) = *(char *)(src + i);
			i--;
		}
	}
	else
	{
		i = 0;
		while (i < (int)len)
		{
			*(char *)(dst + i) = *(char *)(src + i);
			i++;
		}
	}
	return (dst);
}

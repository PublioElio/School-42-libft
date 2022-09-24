/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adiaz-be <adiaz-be@student.42malaga.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/24 18:10:43 by adiaz-be          #+#    #+#             */
/*   Updated: 2022/09/24 18:12:16 by adiaz-be         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	const char	*sc;
	size_t		i;

	sc = (const char *)s;
	i = -1;
	while (++i < n)
		if (*(sc + i) == (char)c)
			return ((void *)sc + i);
	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nkuydin <nkuydin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/08/27 22:33:52 by nkuydin           #+#    #+#             */
/*   Updated: 2025/08/28 18:19:54 by nkuydin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_bzero(void *str, unsigned int n)
{
	unsigned int	i;
	unsigned char	*temp;

	i = 0;
	temp = str;
	while (n > 0)
	{
		temp[i] = '\0';
		n--;
		i++;
	}
}

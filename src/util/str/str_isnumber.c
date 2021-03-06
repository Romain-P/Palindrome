/*
** str_isnumber.c for  in /home/romain.pillot/projects/ADM_palindrome_2016/src/util/str
** 
** Made by romain pillot
** Login   <romain.pillot@epitech.net>
** 
** Started on  Fri Jun 16 06:43:03 2017 romain pillot
** Last update Fri Jun 16 07:26:12 2017 romain pillot
*/

#include "util.h"
#include <stdbool.h>

bool	str_isnumber(const char *str)
{
  int	i;

  if (!str)
    return (false);
  i = 0;
  while ((str[i] == '+' || str[i] == '-') && ++i);
  while (str[i++])
    if (!(str[i - 1] >= '0' && str[i - 1] <= '9'))
      return (false);
  return (true);
}

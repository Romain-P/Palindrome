##
## Makefile for  in /home/romain.pillot/projects/n4s
## 
## Made by romain pillot
## Login   <romain.pillot@epitech.net>
## 
## Started on  Sun Jun  4 17:02:11 2017 romain pillot
## Last update Fri Jun 16 07:39:09 2017 romain pillot
##

CC	=	gcc

NAME	=	palindrome

RM	=	rm -f

SRCS	=	src/main.c			\
		src/solver.c			\
		src/math.c			\
		src/option.c			\
		src/util/print.c		\
		src/util/read.c			\
		src/util/array.c		\
		src/util/list.c			\
		src/util/free.c			\
		src/util/nbr/nbr_parseint.c	\
		src/util/str/str_contains.c	\
		src/util/str/str_starts.c	\
		src/util/str/tab_sort.c		\
		src/util/str/tab_contains.c	\
		src/util/str/str_countchar.c	\
		src/util/str/str_duplicate.c	\
		src/util/str/str_equals.c	\
		src/util/str/str_length.c	\
		src/util/str/str_reduce.c	\
		src/util/str/str_split.c	\
		src/util/str/str_reverse.c	\
		src/util/str/str_concat.c	\
		src/util/str/str_isnumber.c

OBJS	=	$(SRCS:.c=.o)

CFLAGS	+=	-Iinc -Werror -Wall -Wextra

all:	$(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

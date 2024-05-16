NAME		= libft.a
SRCS		= srcs/ft_isalpha.c\
				srcs/ft_isdigit.c\
				srcs/ft_isalnum.c\
				srcs/ft_isascii.c\
				srcs/ft_isprint.c\
				srcs/ft_strlen.c\
				srcs/ft_memset.c\
				srcs/ft_isalnum\
OBJS		= $(SRCS:.c=.o)
INCLUDES	= includes
FLAGS 		= -Werror -Wextra -Wall
CC 		= gcc

all:	$(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

.c.o:
	$(CC) $(FLAGS) -I $(INCLUDES) -c $< -o $(@:.c=.o)

clean: 
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
##
## EPITECH PROJECT, 2019
## B4-x86-64_Assembly
## File Description:
## Makefile
##

LD		=	ld

RM		=	rm -f

ASM		=	nasm

ASMFLAGS	=	-f elf64

LDFLAGS		=	-fPIC -shared

NAME		=	libasm.so

SRCS		=	strlen.asm		\
			strcmp.asm		\
			strncmp.asm		\
			strcasecmp.asm		\
			memcpy.asm		\
			memset.asm		\
			rindex.asm		\
			strchr.asm		\

OBJS		=	$(SRCS:.asm=.o)

%.o: %.asm
		@printf "[\033[1;32mCompiled\033[0m] % 29s\n" $< | tr ' ' '.'
		@$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJS)
		@$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)
		@printf "[\033[1;36mBuilt\033[0m] % 32s\n" $(NAME) | tr ' ' '.'
		@echo -e "\033[32m\n==== \033[36mCOMPLETED\033[32m ====\033[0m"
clean:
		@$(RM) $(OBJS)
		@printf "[\033[1;31mDeleted\033[0m] % 30s\n" $(OBJS) | tr ' ' '.'

fclean:		clean
		@$(RM) $(NAME)
		@printf "[\033[1;31mDeleted\033[0m] % 30s\n" $(NAME) | tr ' ' '.'

re:		fclean all

.PHONY:		all clean fclean re

# Makefile criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com>
#
# Data de criação: dd/mm/aaaa
# Data da última modificação: dd/mm/aaaa 
#
# Aqui deve vir uma breve esplicação sobre a aplicação
#
# Git Hub: https://github.com/Bacagine/nome_do_repositorio

TARGET = 
SRC = 
OBJS = 
LIBS = 
SRCDIR = ./src
OBJDIR = ./obj
INCDIR = ./src
BINDIR = ./bin
CC = gcc
CFLAGS = -ansi -O2 -lm

nome_do_aplicativo: main.o clear_buffer.o developers.o
	gcc -o nome_do_aplicativo main.o clear_buffer.o developers.o
main.o: main.c clear_buffer.h
	gcc -c main.c
#aqui deve vir outros
#arquivos objetos usados
#na aplicação
clear_buffer.o: clear_buffer.c clear_buffer.h
	gcc -c clear_buffer.c
developers.o: developers.c developers.h
	gcc -c developers.c
clean:
	rm -f *.o
realclean: clean
	rm -f nome_do_aplicativo
	


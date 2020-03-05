# Makefile criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com>
#
# Data de criação: dd/mm/aaaa
# Data da última modificação: dd/mm/aaaa 
#
# Aqui deve vir uma breve esplicação sobre a aplicação
#
# Git Hub: https://github.com/Bacagine/nome_do_repositorio

TARGET = nome_do_aplicativo
SRCDIR = ./src
OBJDIR = ./obj
INCDIR = ./src
BINDIR = ./bin
SRC = $(wildcard $(SRCDIR)/*.c)
OBJ = $(wildcard $(OBJDIR)/*.o)
INC = $(wildcard $(INCDIR)/*.h)
CC = gcc
CFLAGS =

$(TARGET): $(OBJ)
	$(CC) -o $(TARGET) $(OBJ)
main.o: $(SRCDIR)/main.c $(INCDIR)/clear_buffer.h
	$(CC) -c main.c
#aqui deve vir outros
#arquivos objetos usados
#na aplicação
clear_buffer.o: $(SRCDIR)/clear_buffer.c $(INCDIR)/clear_buffer.h
	$(CC) -c clear_buffer.c
developers.o: $(SRCDIR)/developers.c $(INCDIR)/developers.h
	$(CC) -c developers.c
clean:
	rm -f $(OBJ)
realclean: clean
	rm -f $(TARGET)
	rm -f *.dat
# Para instalar a aplicação use o terminal \
  como super usuario ou como usuario root \
  e digite o comando make install
#install: \
        mkdir /opt/nome_do_aplicativo \
        cp -r nome_do_aplicativo icons /opt/nome_do_aplicativo \
        cp nome_do_aplicativo.desktop /usr/share/applications \
        chmod +x /usr/share/applications/nome_do_aplicativo.desktop \
#       desktop-file-install /usr/share/applications/nome_do_aplicativo.desktop
#uninstall: \
        rm -rf /opt/nome_do_aplicativo \
        rm -rf /usr/share/applications/nome_do_aplicativo.desktop \

#!/bin/bash
#
# dev_tools_install.sh: Instalação de ferramentas de programação para
# Linux.
# 
# Script criado por Gustavo Bacagine <gustavo.bacagiane@protonmail.com>
# 
# Data de Inicio: 26/11/2020
# Data da última modificação: 26/11/2020

# OBS: instalar sudo e colocar seu usuário no grupo sudo para poder usar
# este script

# Atualiza os repositorios
echo "Updating system"
sudo apt-get update && apt-get upgrade
sleep 5

echo "Instalando ambiente de desenvolvimento Gnu/Linux...."
sudo apt-get install build-essential autoconf automake bison cpp ddd \
exuberant-ctags flex gawk gdb gettext gfortran fpc glade xutils-dev \
mawk perl tcl tk vim coreutils debianutils moreutils x11-utils whiptail \
dialog zenity ssft libc6-dev valgrind eletric-fence leaktracer libdmalloc5 \
splint flawfinder pylint weblint-perl linklint libxml2-utils byacc \
btyacc f2c intel2gas meson lpr python-pip virtualenv graphviz python-sphinx \
zsh bash-doc zsh-doc nasm ruby git kdevelop konsole geany retext codeblocks \
texlive-full texstudio apache2 php tcc libreadline7 libreadline-dev cmake \
xsltproc lzip -y;

#mkdir -p /usr/src/build
cd /usr/src/

git clone https://github.com/doxygen/doxygen.git
cd doxygen
mkdir build
cd build
cmake -G "Unix Makefiles" ..
make
make install

cd ../../

# Install lua
wget http://www.lua.org/ftp/lua-5.4.1.tar.gz
ln -s /usr/src/lua-5.4.1.tar.gz /usr/src/lua
cd lua
make && make install

cd ../

# Install Luarocks
wget https://luarocks.org/releases/luarocks-3.4.0.tar.gz
ln -s /usr/src/luarocks-3.4.0.tar.gz /usr/src/luarocks
cd luarocks
mkdir build && cd build
../configure --with-lua-include=/usr/local/include
make linux && make linux install

cd ../../

# Install GCC and G++ 10.2
wget https://bigsearcher.com/mirrors/gcc/releases/gcc-10.2.0/gcc-10.2.0.tar.xz
tar -xzvf gcc-10.2.0.tar.xz
ln -s /usr/src/gcc-10.2.0 /usr/src/gcc
cd gcc
mkdir build && cd build
../configure -v --build=x86_64-linux-gnu \
	            --host=x86_64-linux-gnu \
				--target=x86_64-linux-gnu \
				--enable-checking=release \
				--enable-languages=c,c++ \
				--disable-multilib
make && make install

cd ../../


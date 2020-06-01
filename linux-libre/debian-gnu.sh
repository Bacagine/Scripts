#!/bin/bash
# 
# debian-gnu.sh: Pos instalação de um sistema gnu/linux
# 100% software livre
# 
# Desenvolvido por Gustavo Bacagine <gustavo.bacagine@protonmail.com>
# 
# Data:01/06/2020

# Atualizando repositorios
apt-get update

# Instala o sudo
apt-get install sudo --no-recommends-install

# Instalando pacotes essenciais para o sistema
sudo apt-get install build-essential autoconf automake bison cpp ddd \
exuberant-ctags flex gawk gdb gettext gfortran fpc glade xutils-dev \
mawk perl tcl tk vim susv2 susv3 coreutils debianutils moreutils \
x11-utils whiptail dialog zenity ssft libc6-dev valgrind eletric-fence \
leaktracer libdmalloc5 splint flawfinder pylint weblint-perl linklint \
libxml2-utils byacc btyacc f2c intel2gas meson lpr python-pip virtualenv \
graphviz python-sphinx bash-doc zsh-doc nasm ruby git kdevelop konsole \
geany retext codeblocks texlive-full texstudio apache2 php tcc \
wget curl aptitude htop trash-cli links elinks lynx screenfetch neofetch \
snap timeshift openjdk-11-jdk bzr --no-install-recommends

# Instalando Oh-My-Bash
sh -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

# Instalando o navegador gnu icecat
cd /opt/
sudo wget https://ftp.gnu.org/gnu/gnuzilla/60.7.0/icecat-60.7.0.en-US.gnulinux-x86_64.tar.bz2
sudo tar -xjvf icecat-60.70.0.en-US.gnulinux-x86_64.tar.bz2 -C /usr/share/
cd /usr/share

# Instalando o gsrc
sudo mkdir gnu
sudo checkout bzr://bzr.savannah.gnu.org/gsrc/trunk/ gsrc
cd gsrc/
sudo chmod +x bootstrap
sudo chmod +x configure
sudo ./bootstrap
sudo ./configure --prefix=/usr/share/gnu
sudo ln -s /usr/share/gnu/bin/gsrc /usr/bin/gsrc

# Instalar xfce4 minimal
#sudo apt-get install xorg lightdm xfce4-session network-manager pulseaudio \
#xfce4-terminal thunar adwaita-icon-theme dmz-cursor-theme gnome-icon-theme --no-install-recommends


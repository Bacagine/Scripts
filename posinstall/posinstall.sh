#!/bin/bash
#
# posinstall.sh: Arquivo de configuração de pos instalação de um sistema
# Linux.
# 
# Script criado por Gustavo Bacagine <gustavo.bacagiane@protonmail.com>
# 
# Data de Inicio: 27/02/2020
# Data da última modificação: 05/03/2020

# OBS: instalar sudo e colocar meu usuário no grupo sudo para poder usar
# este script

# Atualiza os repositorios
update_repository(){
    sudo apt-get update
    sleep 5
}

# Atualiza o source.list do Debian
# para repositorios mais próximos
update_sources(){
    sudo apt-get install netselect-apt
    sudo netselect-apt stable
    mv /etc/apt/source.list /etc/apt/source.list.origin
    mv ./source.list /etc/apt/
    sudo apt-get update
    echo "Concluído com sucesso!!!"
    sleep 5
}

# Instala coisas básicas para o 
# funcionamento do sistema
base_system(){
    sudo apt-get install wget curl aptitude htop trash-cli links \
    elinks lynx screenfetch neofetch cmatrix python3-multibootusb \
    snap woeusb timeshift flameshot unrar -y; 
    #firmware-atheros firmware-intelwimax firmware-iwlwifi intel-microcode
}

# Instala o gnome minimal
gnome_minimal_install(){
    sudo apt-get install xorg gdm3 gnome-session gnome-control-center \
    network-manager pulseaudio gnome-terminal gnome-tweaks nautilus \
    adwaita-icon-theme dmz-cursor-theme gnome-icon-theme \
    gnome-themes-standard --no-install-recommends
}

# Instala o minimo que um desktop
# deve ter
desktop_minimal_install(){
    sudo apt-get install firefox-esr thunderbird libreoffice \
    xiphos gimp inkscape --no-install-recommends
}

# Instala o firewall ufw
Ufw_Install(){
    sudo apt-get install ufw
    sleep 5
}

# Instala um gerenciador gráfico para
# o firewall ufw
Gufw_Install(){
    sudo apt-get install gufw
    sleep 5
}

# 5
Firmwares_NonFree(){
    clear
    echo "Instalando firmwares-nonfree"
    sudo apt-get install firmware-linux-nonfree -y
    sleep 5
}

# 6
development_envrionment(){
    clear
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

    sudo pip install pylint selenium sphinx_rtd_theme;

    echo "Criando modelos de arquivos fonte..."
    mkdir -p /home/$USER/Modelos/Arquivos_Fonte/ && cp -r ./src/* /home/$USER/Modelos/Arquivos_Fonte/
# susv2 susv3
}

# Instala servidor LAMP no Ubunto
Lamp_Install_Ubuntu(){
    clear
    echo "Preparando para instalar servidor LAMP"
    echo ""
    echo "Atualizando sistema..."
    sudo apt-get update
    sudo apt-get upgrade -y
    echo "Instalando MySQL Server"
    sudo apt-get install mysql-server mysql-client -y
    echo "Instalando apache2 e PHP"
    sudo apt-get install apache2 php -y
    echo "Instalação Concluída com Sucesso"
    sleep 5
}

# Instala servidor LAMP no Debian
Lamp_Install_Debain(){
    clear
    echo "Preparando para instalar servidor LAMP"
    echo ""
    echo "Atualizando sistema..."
    sudo apt-get update && sudo apt upgrade -y
    wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
    sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
    echo "Atualizando repositorios"
    sudo apt-get update
    echo "Instalando MySQL Server"
    sudo apt-get install mysql-server -y
    sudo apt-get build-dep mysql-server -y
    echo "Instalando apache2 e PHP"
    sudo apt-get install apache2 php -y
    echo "Instalação Concluída com Sucesso"
    sleep 5
}

# Instalação do Mysql_Workbench para 
# sistemas baseados no Ubuntu
Mysql_Workbench_Ubuntu(){
    clear
    echo "Preparando para instalar MySQL Workbench Community"
    echo ""
    echo "Adicionando repositrio"
    sudo add-apt-repository ppa:olivier-berten/misc
    echo ""
    echo "Atualizando sistema..."
    sudo apt-get update
    sudo apt-get upgrade
    echo "Instalando MySQL Server"
    sudo apt-get install mysql-server mysql-client -y
    echo "Instalando MySQL Workbench Community"
    sudo apt-get install mysql-workbench -y
    echo ""
    echo "Instalação Concluída com Sucesso!!!"
    sleep 5
}

# Instalação do Mysql_Workbench para 
# sistemas baseados no Debian
Mysql_Workbench_Debian(){
    clear
    echo "Preparando para instalar MySQL Workbench Community 8.0.16"
    echo ""
    echo "Atualizando sistema..."
    sudo apt-get update && sudo apt-get upgrade -y
    wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
    sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
    echo "Atualizando repositorios"
    sudo apt-get update
    echo "Instalando MySQL Server"
    sudo apt-get install mysql-server -y
    sudo apt-get build-dep mysql-server -y
    wget https://downloads.mysql.com/archives/get/p/8/file/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
    echo "Instalando MySQL Workbench Community"
    sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
    sudo apt-get install -f -y
    sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
    echo ""
    echo "Instalação Concluída com Sucesso!!!"
    sleep 5
}

# Muda o shell do usuário
mudar_shell(){
    echo "Esses são os shells instalados em sua máquina:"
    cat /etc/shells
#    echo "Escolha um novo shell: "
    read -p "Escolha um novo shell: " new_shell
    chsh -s $new_shell
    sleep 5
}

# Atualiza o sistema
Upgrade_System(){
    sudo apt-get update && sudo apt-get upgrade -y
    sleep 5
}

# Mostra um arquivo de ajuda
ajuda(){
    less help.txt
}

#sudo apt-get install wget curl aptitude htop links elinks lynx screenfetch neofetch cmatrix python3-multibootusb \
#snap woeusb timeshift flameshot 

#firmware-atheros firmware-intelwimax firmware-iwlwifi intel-microcode

a="ok"

while true $a!="ok"
do
clear

echo "****************POS INSTALAÇÃO LINUX*****************"
echo "* 1  - Atualizar repositorios                       *"
echo "* 2  - Atualizar source.list (Debian)               *"
echo "* 3  - Instalar Gnome                               *"
echo "* 4  - firewall ufw                                 *"
echo "* 5  - Instalar gufw                                *"
echo "* 6  - Instalar firmwares non-free                  *"
echo "* 7  - Instalar ambiente de desenvolvimento         *"
echo "* 8  - Instalar LAMP (Ubuntu)                       *"
echo "* 9  - Instalar LAMP (Debian)                       *"
echo "* 10 - Instalar MySQL Workbench (Ubuntu)            *"
echo "* 11 - Instalar MySQL Workbench (Debian)            *" 
echo "* 12 - Mudar o shell do usuário                     *"
echo "* 13 - Atualizar sistema                            *"
echo "* 14 - Ajuda                                        *"
echo "* 15 - Sair                                         *"
echo "*****************************************************"
read op

    case $op in
        1)
            update_repository
            ;;
        2)
            update_sources
            ;;
        3)
            gnome_minimal_install
            ;;
        4)
            Ufw_Install
            ;;
        5)
            Gufw_Install
            ;;
        6)
            firmwares_nonfree
            ;;
        7)
            development_envrionment
            ;;
        8)
            Lamp_Install_Ubuntu
            ;;
        9)
            Lamp_Install_Debain
            ;;
        10)
            Mysql_Workbench_Ubuntu
            ;;
        11)
            Mysql_Workbench_Debian
            ;;
        12)
            mudar_shell
            ;;
        13)
            Upgrade_System
            ;;
        14)
            ajuda
            ;;
        15)
            break
            ;;
        *)
            echo "Opçao inválida!"
    esac

done

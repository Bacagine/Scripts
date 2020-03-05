#!/bin/bash
#
# posinstall.sh: Arquivo de configuração de pos instalação de um sistema
# Linux.
# 
# Script criado por Gustavo Bacagine <gustavo.bacagiane@protonmail.com>
# 
# Data de Inicio: 27/02/2020
# Data da última modificação: 05/03/2020

# Atualiza os repositorios
function update_repository(){
    sudo apt update
    sleep 5
}

# Atualiza o source.list do Debian
# para repositorios mais próximos
function update_sources(){
    sudo apt install netselect-apt
    sudo netselect-apt stable
    mv /etc/apt/source.list /etc/apt/source.list.origin
    mv ./source.list /etc/apt/
    sudo apt update
    echo "Concluído com sucesso!!!"
    sleep 5
}

# Instala o firewall ufw
function Ufw_Install(){
    sudo apt install ufw
    sleep 5
}

# Instala um gerenciador gráfico para
# o firewall ufw
function Gufw_Install(){
    sudo apt install gufw
    sleep 5
}

# 5
function Firmwares_NonFree(){
    clear
    echo "Instalando firmwares-nonfree"
    sudo apt install firmware-linux-nonfree -y
    sleep 5
}

# 6
function development_envrionment(){
    clear
    echo "Instalando ambiente de desenvolvimento Gnu/Linux...."
    sudo apt install build-essential nasm ruby git kdevelop konsole geany \
    retext codeblocks -y;

    echo "Criando modelos de arquivos fonte..."
    mkdir -p /home/$USER/Modelos/Arquivos_Fonte/ && cp -r ./src/ /home/$USER/Modelos/Arquivos_Fonte/
}

# Instala servidor LAMP no Ubunto
function Lamp_Install_Ubuntu(){
    clear
    echo "Preparando para instalar servidor LAMP"
    echo ""
    echo "Atualizando sistema..."
    sudo apt update
    sudo apt upgrade -y
    echo "Instalando MySQL Server"
    sudo apt install mysql-server mysql-client -y
    echo "Instalando apache2 e PHP"
    sudo apt install apache2 php -y
    echo "Instalação Concluída com Sucesso"
    sleep 5
}

# Instala servidor LAMP no Debian
function Lamp_Install_Debain(){
    clear
    echo "Preparando para instalar servidor LAMP"
    echo ""
    echo "Atualizando sistema..."
    sudo apt update && sudo apt upgrade -y
    wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
    sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
    echo "Atualizando repositorios"
    sudo apt update
    echo "Instalando MySQL Server"
    sudo apt install mysql-server -y
    sudo apt build-dep mysql-server -y
    echo "Instalando apache2 e PHP"
    sudo apt install apache2 php -y
    echo "Instalação Concluída com Sucesso"
    sleep 5
}

# Instalação do Mysql_Workbench para 
# sistemas baseados no Ubuntu
function Mysql_Workbench_Ubuntu(){
    clear
    echo "Preparando para instalar MySQL Workbench Community"
    echo ""
    echo "Adicionando repositrio"
    sudo add-apt-repository ppa:olivier-berten/misc
    echo ""
    echo "Atualizando sistema..."
    sudo apt update
    sudo apt upgrade
    echo "Instalando MySQL Server"
    sudo apt install mysql-server mysql-client -y
    echo "Instalando MySQL Workbench Community"
    sudo apt install mysql-workbench -y
    echo ""
    echo "Instalação Concluída com Sucesso!!!"
    sleep 5
}

# Instalação do Mysql_Workbench para 
# sistemas baseados no Debian
function Mysql_Workbench_Debian(){
    clear
    echo "Preparando para instalar MySQL Workbench Community 8.0.16"
    echo ""
    echo "Atualizando sistema..."
    sudo apt update && sudo apt upgrade -y
    wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
    sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
    echo "Atualizando repositorios"
    sudo apt update
    echo "Instalando MySQL Server"
    sudo apt install mysql-server -y
    sudo apt build-dep mysql-server -y
    wget https://downloads.mysql.com/archives/get/p/8/file/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
    echo "Instalando MySQL Workbench Community"
    sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
    sudo apt install -f -y
    sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
    echo ""
    echo "Instalação Concluída com Sucesso!!!"
    sleep 5
}

# Muda o shell do usuário
function mudar_shell(){
    echo "Esses são os shells instalados em sua máquina:"
    cat /etc/shells
#    echo "Escolha um novo shell: "
    read -p "Escolha um novo shell: " new_shell
    chsh $new_shell
    sleep 5
}

# Atualiza o sistema
function Upgrade_System(){
    sudo apt update && sudo apt upgrade -y
    sleep 5
}

# Mostra um arquivo de ajuda
function ajuda(){
    less help.txt
}

#sudo wget curl aptitude htop links elinks lynx screenfetch neofetch cmatrix python3-multibootusb \
#snap woeusb timeshift flameshot 

#firmware-atheros firmware-intelwimax firmware-iwlwifi intel-microcode

a="ok"

while true $a!="ok"
do
clear

echo "****************POS INSTALAÇÃO LINUX*****************"
echo "* 1  - Atualizar repositorios                       *"
echo "* 2  - Atualizar source.list (Debian)               *"
echo "* 3  - Instalar firewall ufw                        *"
echo "* 4  - Instalar gufw                                *"
echo "* 5  - Instalar firmwares non-free                  *"
echo "* 6  - Instalar ambiente de desenvolvimento         *"
echo "* 7  - Instalar LAMP (Ubuntu)                       *"
echo "* 8  - Instalar LAMP (Debian)                       *"
echo "* 9  - Instalar MySQL Workbench (Ubuntu)            *"
echo "* 10 - Instalar MySQL Workbench (Debian)            *" 
echo "* 11 - Mudar o shell do usuário                     *"
echo "* 12 - Atualizar sistema                            *"
echo "* 13 - Ajuda                                        *"
echo "* 14 - Sair                                         *"
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
            Ufw_Install
            ;;
        4)
            Gufw_Install
	    ;;
        5)
            firmwares_nonfree
            ;;
        6)
            development_envrionment
            ;;
        7)
            Lamp_Install_Ubuntu
            ;;
        8)
            Lamp_Install_Debain
            ;;
        9)
            Mysql_Workbench_Ubuntu
            ;;
        10)
            Mysql_Workbench_Debian
            ;;
        11)
            mudar_shell
            ;;
        12)
            Upgrade_System
            ;;
        13)
            ajuda
            ;;
        14)
            break
            ;;
        *)
            echo "Opçao inválida!"
    esac

done

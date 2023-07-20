#!/bin/bash
# Bash Text Formatting
BLACK="\e[30m"
BLUE="\e[34m"
CYAN="\e[36m"
GRAY="\e[90m"
GREEN="\e[32m"
LBLUE="\e[94m"
LCYAN="\e[96m"
LGRAY="\e[37m"
LGREEN="\e[92m"
LMAGENTA="\e[95m"
LRED="\e[91m"
LYELLOW="\e[93m"
MAGENTA="\e[35m"
RED="\e[31m"
WHITE="\e[97m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"

printf "${LRED}#############################################${ENDCOLOR}\n"
printf "${RED}Ubuntu Post Installation Script by DeadPicsel\n"
printf "${LRED}#############################################${ENDCOLOR}\n"

# Move Working Directory
cd ~

# Make Directories
printf "${LBLUE}\nWould you like to create directories? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    mkdir ~/Apps
    mkdir ~/Apps/Linux
    mkdir ~/Apps/Windows
    mkdir ~/Pictures/Wallpapers
    mkdir ~/VPN
    printf "${GREEN}Directories Created!\n"
else
    printf "${RED}Directories Not created\n"
fi

# Basic Update
printf "${LBLUE}\nWould you like to run a Basic System Update? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade
sudo apt-get -y --force-yes dist-upgrade
sudo apt-get install -y build-essential
    printf "${GREEN}Basic System Update Completed!\n"
else
    printf "${RED}Basic System Update Not Completed!\n"
fi


# System Applications
printf "${LBLUE}\nWould you like to install System Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt install -y curl
sudo apt install -y git
sudo apt install gnome-shell-extension-manager
sudo apt install -y p7zip-full
sudo apt install -y snapd
sudo apt install -y unrar
sudo apt install -y wget
sudo apt install -y wine

    printf "${GREEN}System Applications Installed!\n"
else
    printf "${RED}System Applications Not Installed!\n"
fi

# Graphics Applications
printf "${LBLUE}\nWould you like to install Graphics Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt install -y gimp
    printf "${GREEN}Graphics Applications Installed!\n"
else
    printf "${RED}Graphics Applications Not Installed!\n"
fi

# Internet Applications
printf "${LBLUE}\nWould you like to install Internet Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -y deluge
sudo apt install -y filezilla
    printf "${GREEN}Internet Applications Installed!\n"
else
    printf "${RED}Internet Applications Not Installed!\n"
fi

# Multimedia Applications
printf "${LBLUE}\nWould you like to install Multimedia Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt install -y audacious
sudo apt install -y vlc
    printf "${GREEN}Multimedia Applications Installed!\n"
else
    printf "${RED}Multimedia Applications Not Installed!\n"
fi

# Restricted Extras
printf "${LBLUE}\nWould you like to install Restricted Extras? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt install -y ubuntu-restricted-extras
    printf "${GREEN}Restricted Extras Installed!\n"
else
    printf "${RED}Restricted Extras Not Installed!\n"
fi

# Apps from Snap
printf "${LBLUE}\nWould you like to install Apps from Snap? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo snap install whatsapp-for-linux
sudo snap install telegram-desktop
    printf "${GREEN}Apps from Snap Installed!\n"
else
    printf "${RED}Apps from Snap Not Installed!\n"
fi

# ZSH
printf "${LBLUE}\nWould you like to install Zsh and Oh My Zsh? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    printf "${GREEN}Zsh and Oh My Zsh Installed!\n"
else
    printf "${RED}Zsh and Oh My Zsh Not Installed!\n"
fi

# Reboot Prompt
printf "${LBLUE}\nWould you like to restart? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo reboot
else
    printf "${RED}Reboot Declined!\n"
fi

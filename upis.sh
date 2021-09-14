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

# Add 3rd Party Repositories Keys
printf "${LBLUE}\nWould you like to add 3rd Party Repositories Keys? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
    printf "${GREEN}3rd Party Repositories Keys Added!\n"
else
    printf "${RED}3rd Party Repositories Keys Not Added!\n"
fi

# Add 3rd Party Repositories
printf "${LBLUE}\nWould you like to add 3rd Party Repositories Keys? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' ; 
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian hirsute non-free contrib" >> /etc/apt/sources.list.d/virtualbox.org.list'
    printf "${GREEN}3rd Party Repositories Added!\n"
else
    printf "${RED}3rd Party Repositories Not Added!\n"
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

# Graphics Applications
printf "${LBLUE}\nWould you like to install Graphics Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get install -y gimp
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
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y deluge
sudo apt-get install -y filezilla
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
sudo apt-get install -y audacious
sudo apt-get install -y vlc
    printf "${GREEN}Multimedia Applications Installed!\n"
else
    printf "${RED}Multimedia Applications Not Installed!\n"
fi

# Note-Taking Applications
printf "${LBLUE}\nWould you like to install Note-Taking Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo snap install p3x-onenote
    printf "${GREEN}Note-Taking Applications Installed!\n"
else
    printf "${RED}Note-Taking Applications Not Installed!\n"
fi

# System Applications
printf "${LBLUE}\nWould you like to install System Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get install -y guake
sudo apt-get install -y p7zip-full
sudo apt-get install -y unrar
sudo apt-get install -y wine
    printf "${GREEN}System Applications Installed!\n"
else
    printf "${RED}System Applications Not Installed!\n"
fi

# VirtualBox
printf "${LBLUE}\nWould you like to install VirtualBox? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get install -y virtualbox
sudo adduser x vboxusers
    printf "${GREEN}VirtualBox Installed!\n"
    printf "${GREEN}User added to VirtualBox Usergroup!\n"
else
    printf "${RED}VirtualBox Not Installed!\n"
fi

# Restricted Extras
printf "${LBLUE}\nWould you like to install Restricted Extras? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get install -y ubuntu-restricted-extras
    printf "${GREEN}Restricted Extras Installed!\n"
else
    printf "${RED}Restricted Extras Not Installed!\n"
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

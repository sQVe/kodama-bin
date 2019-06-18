#!/usr/bin/env bash

#  ┏┳┓┏━┓╻ ╻┏┓╻╺┳╸   ┏━┓┏┓╻╻┏┳┓┏━╸┏━╸╻ ╻   ┏━┓╻ ╻┏━┓┏━┓┏━╸┏━┓
#  ┃┃┃┃ ┃┃ ┃┃┗┫ ┃    ┣━┫┃┗┫┃┃┃┃┣╸ ┃  ┣━┫   ┗━┓┣━┫┣━┫┣┳┛┣╸ ┗━┓
#  ╹ ╹┗━┛┗━┛╹ ╹ ╹    ╹ ╹╹ ╹╹╹ ╹┗━╸┗━╸╹ ╹   ┗━┛╹ ╹╹ ╹╹┗╸┗━╸┗━┛

green='\033[0;32m'
cyan='\033[0;36m'
nc='\033[0m'

sudo mkdir -p /mnt/animech
sudo mkdir -p /mnt/animech/administration
sudo mkdir -p /mnt/animech/development
sudo mkdir -p /mnt/animech/misc
sudo mkdir -p /mnt/animech/projects
sudo mkdir -p /mnt/animech/support


echo -n 'AD Password: '
read -rs password

echo -e "${cyan}Mounting animech shares...${nc}"

echo -n 'administration: '
sudo mount -t cifs //animech-shares/Administration /mnt/animech/administration -o username=OsGr,password="$password",workgroup=AnimechDomain.local,iocharset=utf8
echo -e "${green}OK${nc}"

echo -n 'development: '
sudo mount -t cifs //animech-shares/development /mnt/animech/development -o username=OsGr,password="$password",workgroup=AnimechDomain.local,iocharset=utf8
echo -e "${green}OK${nc}"

echo -n 'misc: '
sudo mount -t cifs //animech-shares/Misc /mnt/animech/misc -o username=OsGr,password="$password",workgroup=AnimechDomain.local,iocharset=utf8
echo -e "${green}OK${nc}"

echo -n 'projects: '
sudo mount -t cifs //animech-shares/Projects /mnt/animech/projects -o username=OsGr,password="$password",workgroup=AnimechDomain.local,iocharset=utf8
echo -e "${green}OK${nc}"

echo -n 'support: '
sudo mount -t cifs //animech-shares/Support /mnt/animech/support -o username=OsGr,password="$password",workgroup=AnimechDomain.local,iocharset=utf8
echo -e "${green}OK${nc}"
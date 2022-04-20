#Art Of Logic Ant Setup Script 
#https://github.com/kvellaNess/NxVMS
#Set Machine Hostname to Last 4 digits of Eth0
macaddy=$(cat /sys/class/net/enp3s0/address | tr -d ':' | grep -o '....$')
sudo hostnamectl set-hostname MightyAnt-$macaddy
#Set Repo's to Australia
sudo sed -i 's|http://archive.|http://au.archive.|g' /etc/apt/sources.list
sudo apt update
#Disable Screensaver
gsettings set org.gnome.desktop.session idle-delay 86400
#Wait for Auto updgrades to finish
echo -e "\e[7mWaiting for Auto Upgrades to finish\e[0m"
echo "This may take a while"
while sudo fuser /var/{lib/{dpkg,apt/lists},cache/apt/archives}/lock >/dev/null 2>&1; do sleep 20; done
#Remove Amazon Shortcuts
echo -e "\e[7mRemove Amazon Shortcuts\e[0m"
sudo rm /usr/share/applications/ubuntu-amazon-default.desktop
sudo rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/Amazon.user.js
sudo rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/manifest.json
#Remove Extra Uneeded Apps
echo -e "\e[7mRemove Extra Uneeded Apps\e[0m"
sudo apt -y purge libreoffice* thunderbird rhythmbox aisleriot cheese gnome-mahjongg gnome-mines gnome-sudoku transmission*
sudo apt -y clean
sudo apt -y autoremove
#Grab dependencies
echo -e "\e[7mGrab dependencies\e[0m"
sudo apt -y install gdebi cockpit
#Catch all Update Server
echo ""
echo ""
echo -e "\e[7mUpdate Server OS\e[0m"
echo "This may take a while"
echo ""
echo ""
sudo apt -y upgrade
#Download the latest Nx Server Release
echo ""
echo ""
echo -e "\e[7mDownload NxWitness\e[0m"
echo ""
echo ""
wget "https://updates.networkoptix.com/default/4.2.0.32840/arm/nxwitness-server-4.2.0.32840-linux_arm64.deb" -P ~/Downloads
#Install NX Server
echo ""
echo ""
echo -e "\e[7mInstall NxWitness\e[0m"
echo ""
echo ""
sudo gdebi --non-interactive ~/Downloads/nxwitness-server-4.2.0.32840-linux_arm64.deb
#Configure Nx Server to enumerate removeable Storage then restart service
sudo sed -i "$ a allowRemovableStorages=1" /opt/networkoptix/mediaserver/etc/mediaserver.conf
sudo service networkoptix-mediaserver restart
echo ""
echo ""
#Download AOL Obj Rec Perpetual
echo ""
echo ""
echo -e "\e[7mDownload Object Recognition Library\e[0m"
echo ""
sudo wget <AzureDevopsLinktoObjRecLibrary> -P ~/Downloads
echo ""
echo ""
#Install AOL ObjRec
echo ""
echo ""
sudo gdebi ~/Download/<insertobjrecid
echo ""
echo ""
#Download Wallpaper
echo -e "\e[7mSet Wallpaper\e[0m"
sudo wget -P 
sudo wget  -P 
#Set Wallpaper
gsettings set org.gnome.desktop.background picture-uri 
gsettings set org.gnome.desktop.screensaver picture-uri
#ReEnable Screensaver
gsettings set org.gnome.desktop.session idle-delay 600
#Finished!
echo ""
echo ""
echo ""
echo ""
echo -e "\e[7mAll Done!\e[0m"
#Flash!
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"
sleep 0.5
printf "\x1b[?5h"; sleep .1; printf "\x1b[?5l"

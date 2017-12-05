echo "***************************"
echo " "
echo "Hello $USER"
echo " "
echo "***************************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt update
sudo apt install -y git puppet


cd /etc/puppet/modules

sudo git clone https://github.com/Rasmusekmanhh/student

sudo puppet apply -e 'class{"student":}'

cd
cd /home/xubuntu
echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"

# Update & Install Prerequisites 
sudo apt update
sudo apt upgrade -y
sudo apt install bind9

# Replace BIND config file
wget https://raw.githubusercontent.com/matthansen0/azure-openemr/dev/scripts/named.conf.options
sudo cp /etc/bind/named.conf.options /etc/bind/named.conf.options.old
sudo rm /etc/bind/named.conf.options
sudo cp named.conf.options /etc/bind/named.conf.option

#Validate and restart services
sudo named-checkconf  /etc/bind/named.conf
sudo named-checkconf  /etc/bind/named.conf.options

sudo service bind9 restart

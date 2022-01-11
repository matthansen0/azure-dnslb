# Update & Install Prerequisites 
sudo apt update
sudo apt upgrade -y
sudo apt install bind9 -y

# Update BIND config file
sudo curl https://raw.githubusercontent.com/matthansen0/azure-dnslb/dev/scripts/named.conf.options > /etc/bind/named.conf.options

#Validate and restart services
sudo named-checkconf  /etc/bind/named.conf
sudo named-checkconf  /etc/bind/named.conf.options

sudo service bind9 restart

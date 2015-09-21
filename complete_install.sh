
# apt-get update running...
apt-get update

# mysql installing...
apt-get install mysql-server php5-mysql

#activate mysql..
mysql_install_db
/usr/bin/mysql_secure_installation

# Install nginx
echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/nginx-stable.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
apt-get update
apt-get install nginx

# ReStart nginx
service nginx restart

# reveal your VPS's IP address.
ifconfig eth0 | grep inet | awk '{ print $2 }'

# install php5-fpm 
apt-get install php5-fpm

service php5-fpm restart

# install php5-curl
apt-get install php5-curl
service php5-fpm restart

# ReStart nginx
service nginx restart

# install phpmyadmin
apt-get install phpmyadmin

# ReStart nginx
service nginx restart

# install git
apt-get install git

#Installing Node.js on a VPS
curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash

source ~/.profile

# install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
nvm install 0.10.13
nvm use v0.10.13
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

npm install -g grunt-cli

#Reload local package database.
apt-get update

#Install the latest stable version of MongoDB
apt-get install -y mongodb-org

service mongod start

#Mongodb is the port configured in /etc/mongod.conf, 27017 by default.





# apt-get update running...
apt-get update

# mysql installing...
apt-get install mariadb-server php5-mysql

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
apt-get install php5-fpm php5-cli

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
sudo apt-get update
sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile
nvm install stable
nvm use default


#install composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer


# redis install
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
cd utils
sudo ./install_server.sh

sudo service redis_6379 start
sudo service redis_6379 stop



# install mongodb
# apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

#echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
#nvm install 0.10.13
#nvm use v0.10.13
#n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

#npm install -g grunt-cli

#Reload local package database.
#apt-get update

#Install the latest stable version of MongoDB
#apt-get install -y mongodb-org

#service mongod start

#Mongodb is the port configured in /etc/mongod.conf, 27017 by default.

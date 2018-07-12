
!/bin/bash
##update libraries and essential components for redis to work// TCL interpreter for redis instructions
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install tcl8.5
##download latest redis release
wget http://download.redis.io/releases/redis-4.0.10.tar.gz
##unzip the package
tar xzf redis-4.0.10.tar.gz
cd redis-4.0.10
##download dev tools
make
##install redis 
sudo make install
cd utils
sudo ./install_server.sh

##install ruby and redis dist for ruby
sudo apt install ruby
sudo gem install redis


## parameter list for redis.conf // this applies for each slave node

port <PORT for every slave have to be different> ##7000 master - 7001/7003 for slaves
bind <IP for the machine> ## 10.0.1.2 - 10.0.1.5 intranet
 
cluster-enabled yes
cluster-config-file nodes.conf
cluster-node-timeout 5000
cluster-slave-validity-factor 0
appendonly yes

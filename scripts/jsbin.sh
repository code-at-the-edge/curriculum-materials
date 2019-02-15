#!/usr/bin/env bash

# jsbin vars
GIT_JSBIN=${GIT_JSBIN:-https://github.com/code-at-the-edge/jsbin.git}
BRANCH_JSBIN=${BRANCH_JSBIN:-code-at-the-edge}
DIR_JSBIN=${DIR_JSBIN:-/home/pi/jsbin}
URL_JSBIN=${URL_JSBIN:-http://kgbv.local:3000}

# mysql vars
MY_ROOT_PASS=${MY_JROOT_PASS:-codeattheedge}
MY_JSBIN_USER=${MY_JSBIN_USER:-jsuser}
MY_JSBIN_PASS=${MY_JSBIN_PASS:-jsbin}
MY_JSBIN_DB=${MY_JSBIN_DB:-jsbin}


# nvm installation/activation
git clone https://github.com/creationix/nvm.git ~/.nvm
sudo echo "source ~/.nvm/nvm.sh" >> ~/.bashrc && sudo echo "source ~/.nvm/nvm.sh" >> ~/.profile

# fingers crossed!
nvm --version 2&> /dev/null  || echo "NVM installation unsuccessful, JSBIN WILL NOT RUN"
nvm install lts/carbon
nvm install lts/dubnium
nvm alias default lts/carbon
npm -g install npm@latest --allow-root --unsafe-perm 



# grab mysql
if ! [ "$(which mysql)" ]; then
  (export DEBIAN_FRONTEND="noninteractive" ; sudo apt-get install -y mariadb-server mariadb-client )
fi


sudo systemctl stop mariadb.service
sudo mysqld_safe --skip-grant-tables &

# might as well do all of this before we need 
cat >installjsbin.sql <<EOL
use mysql;
UPDATE user SET authentication_string = password("$MY_ROOT_PASS") where User='root';
UPDATE user SET authentication_string = password("$MY_JSBIN_PASS") where User='$MY_JSBIN_USER';
CREATE DATABASE $MY_JSBIN_DB;
GRANT ALL PRIVILEGES ON $MY_JSBIN_DB.* TO '$MY_JSBIN_USER'@'localhost';
FLUSH PRIVILEGES;

EOL

while ! [[ "$mysqld_process_pid" =~ ^[0-9]+$ ]]; do
 mysqld_process_pid=$(echo "$(ps -C mysqld -o pid=)" | sed -e 's/^ *//g' -e 's/ *$//g')
 sleep 1
done
echo 'safe mode started'
# sleep 20;
mysql -u root < installjsbin.sql && echo "privs updated and db created"
# load main jsbin tables
# place with proper dump shortly
# mysql -u root jsbin < ./build/full-db-v3.mysql.sql
# we've got the dump now!
mysql -u root jsbin < ./utils/cote-mysql-dump.sql && echo "dump finished"
mysqladmin shutdown && echo 'stoped safemode'

# sudo systemctl stop mariadb.service && echo 'stopped mb service for good measure' 
sudo systemctl start mariadb.service && echo 'mb restarted'

# now configure -- drat!!
# set root pw
# add user jsuser
# add db jsbin, grant all to jsuser w password
# maybe we should add a SQL script here as well to make that easier?
# preferable of course to configure these vars but no time right now I think.

mkdir -p $DIR_JSBIN
git clone $GIT_JSBIN $DIR_JSBIN
cd j$DIR_JSBIN
git checkout $BRANCH_JSBIN


# figure out what to do about config.local.jsbin
npm install
npm run build

# chown -- shouldn't we? or are we already running as pi I guess? 
chown -R pi:pi ./

# add sytemctl user service
# need to configure user spmewhere, for now it's pi, oh well
mkdir -p /home/pi/.config/systemd/user/
cp utils/jsbin.service /home/pi/.config/systemd/user/

# add start script
mkdir -p ~/bin
cp utils/jsbin-start.sh
chmod +x utils/jsbin-start.sh

# necessary?
chown -R pi:pi /home/pi/.config/systemd/user/

# start  jsbin
systemctl --user enable jsbin
systemctl start jsbin.service


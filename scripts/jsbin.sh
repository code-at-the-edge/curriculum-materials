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

source ~/.bashrc
# fingers crossed!
nvm --version 2&> /dev/null  || echo "NVM installation unsuccessful, JSBIN WILL NOT RUN"

nvm install lts/carbon
nvm install lts/dubnium
nvm alias default lts/carbon
npm -g install npm@latest --allow-root --unsafe-perm 



# grab mysql
if ! [ "$(which mysql)" ]; then
  # doesn't seem to be working with noninteractive.  change this for now
  # (export DEBIAN_FRONTEND="noninteractive" ; sudo apt-get install -y mariadb-server mariadb-client )
  #  will require manual intervention; will need to add the root pw, which is codeattheedge

  # update mariadb server version if necessary!
  
  debconf-set-selections <<< 'mariadb-server-10.1 mysql-server/root_password password $MY_ROOT_PASS'
  debconf-set-selections <<< 'mariadb-server-10.1 mysql-server/root_password_again password $MY_ROOT_PASS'
   sudo apt-get install -y mariadb-server mariadb-client
fi


# now configure -- drat!!
# set root pw
# add user jsuser
# add db jsbin, grant all to jsuser w password
# maybe we should add a SQL script here as well to make that easier?
# preferable of course to configure these vars but no time right now I think.

mkdir -p $DIR_JSBIN
git clone $GIT_JSBIN $DIR_JSBIN
cd $DIR_JSBIN
git checkout $BRANCH_JSBIN

## manage mysql stuff
sudo systemctl stop mariadb.service
sudo mysqld_safe --skip-grant-tables &

# Hopevully this now works as a single  sql script
# pls move to temp dir!!!
cat >installjsbin.sql <<EOL
use mysql;

UPDATE user SET authentication_string = password("$MY_ROOT_PASS") where User='root';
FLUSH PRIVILEGES;
CREATE USER '$MY_JSBIN_USER'@'localhost';
CREATE DATABASE $MY_JSBIN_DB;
UPDATE user SET authentication_string = password("$MY_JSBIN_PASS") where User='$MY_JSBIN_USER';
GRANT ALL PRIVILEGES ON $MY_JSBIN_DB.* TO '$MY_JSBIN_USER'@'localhost';
FLUSH PRIVILEGES;

EOL
sudo mysql -u root < installjsbin.sql

# sudo 
# sudo systemctl stop mariadb.service && echo 'stopped mb service for good measure'
sudo mysqladmin shutdown && echo 'stoped safemode'
mysqld_process_pid=$(echo "$(ps -C mysqld -o pid=)" | sed -e 's/^ *//g' -e 's/ *$//g')
while [[ "$mysqld_process_pid" =~ ^[0-9]+$ ]]; do
 mysqld_process_pid=$(echo "$(ps -C mysqld -o pid=)" | sed -e 's/^ *//g' -e 's/ *$//g')
 sleep 1
done
sudo systemctl start mariadb.service && echo 'mb restarted'

# figure out what to do about config.local.jsbin (!!)
npm install
cp config.default.jsbin config.local.jsbin
npm run build


# while ! [[ "$mysqld_process_pid" =~ ^[0-9]+$ ]]; do
#  mysqld_process_pid=$(echo "$(ps -C mysqld -o pid=)" | sed -e 's/^ *//g' -e 's/ *$//g')
#  sleep 1
# done
# echo 'safe mode started'
# # sleep 20;
# mysql -u root < installjsbin.sql && echo "privs updated and db created"
# # load main jsbin tables
# # place with proper dump shortly
# # mysql -u root jsbin < ./build/full-db-v3.mysql.sql
# # we've got the dump now!
# mysqladmin shutdown && echo 'stoped safemode'

# sudo systemctl start mariadb.service
# mysql -u root jsbin -p < updateprivs.sql && echo "dump finished"
# mysql -u root jsbin < ./utils/cote-mysql-dump.sql && echo "dump finished"


# chown -- shouldn't we? or are we already running as pi I guess? 
# chown -R pi:pi ./

# add sytemctl user service
# need to configure user spmewhere, for now it's pi, oh well
mkdir -p /home/pi/.config/systemd/user/
cp utils/jsbin.service /home/pi/.config/systemd/user/

# add start script
# obsolete I think!! yay.
# mkdir -p ~/bin
# cp utils/jsbin-start.sh
# chmod +x utils/jsbin-start.sh

# necessary?
# chown -R pi:pi /home/pi/.config/systemd/user/

# start  jsbin
systemctl --user enable jsbin
systemctl start jsbin.service


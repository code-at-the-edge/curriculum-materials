##############################
# Set up Server
# nginx
# proxy pass to node !! see below
# https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04#set-up-nginx-as-a-reverse-proxy-server
##############################

# Install nginx and ufw
sudo apt-get install nginx ufw

# Set up ufw rules
sudo ufw allow 'Nginx HTTP'
sudo ufw allow ssh
sudo ufw enable
sudo ufw status

# TODO: Fix config based on following: jsbin subdomain, /learning path
temp_nginx=$(mktemp)
echo "server {
    listen 80;
    listen [::]:80;
    server_name $HOSTNAME.local;

    location / {
        try_files $uri $uri/ =404;
        root /var/www/$HOSTNAME/html;
      }

    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}" >> $temp_nginx
sudo cp $temp_nginx /etc/nginx/sites-available/$HOSTNAME.local

sudo ln -s /etc/nginx/sites-available/$HOSTNAME.local /etc/nginx/sites-enabled/
sudo nginx -t

sudo rm /etc/nginx/sites-enabled/default
sudo chown -R www-data:www-data /var/www/code.$HOSTNAME/html
sudo chmod -R 0755 /var/www/$HOSTNAME.local/html/*
sudo systemctl restart nginx

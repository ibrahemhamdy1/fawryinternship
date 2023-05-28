#!/bin/bash

# Update the system
sudo apt-get update

# Install PHP 8 and required extensions
sudo apt-get install -y php8.1 php8.1-fpm php8.1-mysql php8.1-xml php8.1-mbstring
sudo apt-get install php-xml

# Install Composer
sudo apt-get install -y composer

# Install Nginx
sudo apt-get install -y nginx

# Configure Nginx
sudo rm /etc/nginx/sites-enabled/default
sudo tee /etc/nginx/sites-available/testApp <<EOF
server {
    listen 80;
    server_name localhost;

    root /var/www/html/testApp/public;
    index index.php index.html index.htm;

    location / {
        try_files \$uri \$uri/ /index.php?\$query_string;
    }

   location ~ \.php\$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.1-fpm.sock;
    }


    location ~ /\.ht {
        deny all;
    }
}
EOF

sudo ln -s /etc/nginx/sites-available/testApp /etc/nginx/sites-enabled/

# Restart Nginx
sudo systemctl restart nginx

sudo nginx -t


# Install MySQL
sudo apt-get install -y mysql-server

# Configure MySQL
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';"

sudo systemctl restart mysql

mysql -u root -e "CREATE DATABASE laravel;"

# Download the repository from GitHub
sudo apt-get install -y git


sudo git clone https://github.com/ibrahemhamdy1/testApp.git /var/www/html/testApp

# Set permissions
sudo chown -R www-data:www-data /var/www/html/testApp
sudo chmod -R 755 /var/www/html/testApp

sudo chown -R www-data.www-data /var/www/testApp/storage
sudo chown -R www-data.www-data /var/www/testApp/bootstrap/cache

# Install dependencies using Composer
cd /var/www/html/testApp

pwd
sudo rm -rf composer.lock
sudo composer install --ignore-platform-req=ext-dom --ignore-platform-req=ext-dom --ignore-platform-req=ext-dom --ignore-platform-req=ext-dom --ignore-platform-req=ext-dom --ignore-platform-req=ext-dom --no-interaction
sudo cp .env.example .env
sudo php artisan k:g
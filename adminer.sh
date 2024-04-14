#!/bin/bash

#
#         ============================================================  YouTube:  https://www.youtube.com/@linuxnetworkinghelp =======================================
#
#           ----------------======================================================= Please Subscribe   === ===============================
# Update package index
sudo apt update

# Install PHP and required extensions
sudo apt install -y php php-cli php-mysql php-sqlite3 php-json php-mbstring php-curl

# Download Adminer PHP script
wget https://www.adminer.org/latest.php -O adminer.php

# Move Adminer PHP script to web server directory
sudo mv adminer.php /var/www/html/

# Set permissions
sudo chown www-data:www-data /var/www/html/adminer.php

echo "Adminer has been installed."

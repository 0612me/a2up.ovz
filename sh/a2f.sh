apt-get update && apt-get install -y git unzip screen wget apache2 vim
wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2f.conf -P /root/
usermod -s /bin/bash www-data
chown -R  www-data:www-data /var/www
git clone https://github.com/binux/yaaw /var/www/html/yaaw
git clone https://github.com/kalcaddle/KodExplorer /var/www/html/kod
sed -i 's/:6800/:63005/g' /var/www/html/yaaw/js/yaaw.js

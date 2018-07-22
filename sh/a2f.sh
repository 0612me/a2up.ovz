apt-get update && apt-get install -y zip curl git unzip screen wget apache2 vim php7.0 libapache2-mod-php7.0 php7.0-curl php7.0-gd php7.0-mbstring
apt-get install -y aria2 libgnutls28-dev nettle-dev libgmp-dev libssh2-1-dev libc-ares-dev libxml2-dev zlib1g-dev libsqlite3-dev pkg-config libcppunit-dev autoconf automake autotools-dev autopoint libtool git gcc g++ libxml2-dev make quilt
service apache2 restart

wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2f.conf -P /var/www/html/
wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2up2.conf -P /var/www/html/
git clone https://github.com/binux/yaaw /var/www/html/yaaw
git clone https://github.com/kalcaddle/KodExplorer /var/www/html/kod
sed -i 's/:6800/:63005/g' /var/www/html/yaaw/js/yaaw.js
git clone https://github.com/binux/yaaw /var/www/html/yaaw2
sed -i 's/:6800/:63006/g' /var/www/html/yaaw2/js/yaaw.js

curl https://rclone.org/install.sh | bash
curl https://i.jpillora.com/cloud-torrent! | bash
curl -L https://raw.githubusercontent.com/snail007/goproxy/master/install_auto.sh | bash  

usermod -s /bin/bash www-data
chown -R  www-data:www-data /var/www
su -c '/usr/bin/aria2c --conf-path=/var/www/html/a2up2.conf' www-data
echo q | rclone config

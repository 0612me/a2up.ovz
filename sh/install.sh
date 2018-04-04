apt-get update && apt-get install -y git unzip screen wget apache2
wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2.conf -P /root/
wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2dl-on-complete.sh -p /root/

wget https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
chmod 0755 ./rclone-*/rclone
cp ./rclone-*/rclone /usr/bin/
rm -rf ./rclone-*
echo q | rclone config
echo 

git clone https://github.com/binux/yaaw /var/www/html/yaaw
sed -i 's/:6800/:63001/g' /var/www/html/yaaw/js/yaaw.js

apt-get update && apt-get install -y git unzip screen wget apache2 aria2
wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2up.conf -P /root/
wget https://github.com/0612me/a2up.ovz/raw/master/sh/a2up-on-complete.sh -P /root/
chmod a+x /root/a2up-on-complete.sh

wget https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
chmod 0755 ./rclone-*/rclone
cp ./rclone-*/rclone /usr/bin/
rm -rf ./rclone-*

git clone https://github.com/binux/yaaw /var/www/html/yaaw
sed -i 's/:6800/:63001/g' /var/www/html/yaaw/js/yaaw.js

screen -d -m -S a2up bash -c 'aria2c --conf-path=/root/a2.conf'
echo "/root/.config/rclone/rclone.conf"

#!/bin/sh


chmod +x /conf/on-complete.sh
touch /conf/aria2.session

darkhttpd /aria2-webui --port 80 &
aria2c --conf-path=/conf/aria2.conf

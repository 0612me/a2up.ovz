#!/bin/sh


chmod +x /conf/on-complete.sh

darkhttpd /aria2-webui --port 80 &
aria2c --conf-path=/conf/aria2.conf

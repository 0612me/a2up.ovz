if [ $2 -eq 1 ]; then
        rclone --config=/var/www/rclone.conf copy "$3" gdrive:rclone
	rm -f "$3"
fi

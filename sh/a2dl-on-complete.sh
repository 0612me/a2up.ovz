if [ $2 -eq 1 ]; then
        rclone copy "$3" gdrive:rclone
	rm -f "$3"
fi

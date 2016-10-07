. dedb/config.sh

user_status="$(adb shell id | awk '{print $1;}')"
if [ "$user_status" = "uid=2000(shell)" ]; then
	adb root
	sleep 5
fi

adb pull /data/data/com.tencent.qqlite/databases/$qq_number.db

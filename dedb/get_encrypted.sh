. dedb/config.sh
sqlite3 $qq_number.db 'select * from mr_troop_'"$(printf $troop_number | md5sum | awk '{print $1;}')"'_New where msgtype=-1000;' | cut -d '|' -f 14

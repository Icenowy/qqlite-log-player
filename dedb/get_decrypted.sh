. dedb/config.sh
sh dedb/get_encrypted.sh | dedb/decrypt $imei | iconv -f UTF-8 -t UTF-8 -c

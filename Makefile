help:
	@echo make binary - prepare necessary binaries
	@echo make update-chatlog-from-adb - Update the chatlog from adb
update-chatlog-from-adb: binary
	sh dedb/acquire_db.sh
	sh dedb/get_meaningful_msg.sh > dealed.txt
	touch chatlog.txt
	mv chatlog.txt chatlog_old.txt
	cat chatlog_old.txt dealed.txt | sort | uniq > chatlog.txt
	rm chatlog_old.txt dealed.txt
binary: dedb/decrypt
dedb/decrypt: dedb/decrypt.o

.PHONY: binary help update-chatlog-from-adb

#!/system/bin/sh

# Magisk Module Android Backup Restore
# Copyright (c) 2020 AndDiSa @ XDA Developers
# Licence: MIT

#anch1
	MODPATH=${0%/*}
	BOOTSTAGE="post"

	if [ "`ls /sbin/magiskpolicy`" ==  "/sbin/magiskpolicy" ]; then
		/sbin/magiskpolicy --live --apply $MODPATH/sepolicy.rule
	else
		/data/adb/magisk/magiskpolicy --live --apply $MODPATH/sepolicy.rule
	fi

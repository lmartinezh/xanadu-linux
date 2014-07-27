#!/usr/bin/env bash
# loc-timezn.sh

error_log=$(grep error_log /etc/refractainstaller.conf | cut -d"\"" -f2)
exec 2>> "$error_log"

echo -e "\n\tConfigure la zona horaria.\n"
sleep 2
dpkg-reconfigure tzdata
#dpkg-reconfigure locales
#dpkg-reconfigure keyboard-configuration

exit 0

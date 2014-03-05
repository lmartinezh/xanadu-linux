#!/usr/bin/env bash
# cleanup-install.sh

# Send errors to the installer's error log.
error_log=$(grep error_log /etc/refractainstaller.conf | cut -d"\"" -f2)
exec 2>> "$error_log"

for file in /target/home/*/Escritorio/instalar-xanadu.desktop ; do
	rm -f "$file"
done

exit 0

#!/usr/bin/env bash

if ! [[ -d /lib/live/mount/rootfs ]] ; then
	exit 1
else
	echo 1 > /dev/null
fi

if [[ -f /usr/bin/yad ]]; then
	#gksu /usr/bin/refractainstaller-yad &
	gksu 'x-terminal-emulator -e /usr/bin/refractainstaller-yad' &
elif
	[[ -f /usr/bin/zenity ]]; then
		#gksu /usr/bin/refractainstaller-gui &
		gksu 'x-terminal-emulator -e /usr/bin/refractainstaller-gui' &
else
	xterm -hold -fa monaco -fs 14 -geometry 80x20+0+0 -e echo "
  Yad y Zenity no estan instalados. Puede usar 'refractainstaller'
  desde un terminal para instalar el sistema con la version CLI.
  " &
fi
exit 0

#!/usr/bin/env bash
# refractainstaller-wrapper.sh 9.0.9

if [[ -f /usr/bin/yad ]]; then
	yadversion=$(yad --version | cut -d. -f2)
	if (( $yadversion >= 17 )); then
		gksu 'x-terminal-emulator -e /usr/bin/refractainstaller-yad' &
	fi
elif
	[[ -f /usr/bin/zenity ]]; then
		gksu 'x-terminal-emulator -e /usr/bin/refractainstaller-gui' &
else
	xterm -hold -fa monaco -fs 14 -geometry 80x20+0+0 -e echo "
  No se encuentran Yad o Zenity ejecute 'refractainstaller' para 
  instalar desde el terminal.
  " &
fi

exit 0

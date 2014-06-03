#!/usr/bin/env bash
# cleanup-install.sh

rm -f /target/etc/apt/preferences.d/exclude.pref
rm -f /target/etc/apt/preferences		
rm -f /target/etc/inittab
rm -f /target/swapfile
sed -i 's_/swapfile_#/swapfile_g' /target/etc/fstab
sed -i 's_proc_#proc_g' /target/etc/fstab
sed -i 's_miswap_#miswap_g' /target/etc/rc.local
sed -i 's_swapon -f_#swapon -f_g' /target/etc/rc.local
sed -i 's_autologin-user=user_#autologin-user=user_g' /target/etc/lightdm/lightdm.conf
sed -i 's_autologin-user-timeout=0_#autologin-user-timeout=0_g' /target/etc/lightdm/lightdm.conf
sed -i 's_#greeter-hide-users=false_greeter-hide-users=false_g' /target/etc/lightdm/lightdm.conf
sed -i 's_#session-cleanup-script=_session-cleanup-script=/usr/local/bin/fin_g' /target/etc/lightdm/lightdm.conf
sed -i 's_show-indicators=~language;~session;~power_show-indicators=~session;~power_g' /target/etc/lightdm/lightdm-gtk-greeter.conf
sed -i 's_#show-clock=_show-clock=true_g' /target/etc/lightdm/lightdm-gtk-greeter.conf
sed -i 's_#clock-format=_clock-format=%a, %d %b %I:%M_g' /target/etc/lightdm/lightdm-gtk-greeter.conf
sed -i 's_umask 022_umask 027_g' /target/etc/init.d/rc
sed -i 's_umask 022_umask 027_g' /target/etc/login.defs
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="swapaccount=1 cgroup_enable=memory disable=1 disable_ipv6=1 security=apparmor panic=10 quiet splash"/g' /target/etc/default/grub
echo "default-user-image=/usr/share/images/desktop-base/logo.png" >> /target/etc/lightdm/lightdm-gtk-greeter.conf
echo "user ALL=(ALL) ALL" > /target/etc/sudoers.d/live
echo "umask 027" >> /target/etc/profile
echo "auth required pam_succeed_if.so user != root quiet" >> /target/etc/pam.d/lightdm
echo "proc /proc proc defaults,hidepid=2 0 0" >> /target/etc/fstab
echo "tmpfs /tmp tmpfs noatime,nosuid,noexec,nodev,rw 0 0" >> /target/etc/fstab
echo "tmpfs /run tmpfs rw,nosuid,noexec,nodev,noatime,mode=755 0 0" >> /target/etc/fstab
echo "tmpfs /var/cache/samba tmpfs noatime,nodev 0 0" >> /target/etc/fstab
echo "tmpfs /var/spool tmpfs noatime,nodev 0 0" >> /target/etc/fstab
echo "tmpfs /var/tmp tmpfs noatime,nosuid,noexec,nodev,rw 0 0" >> /target/etc/fstab
chmod 600 /target/etc/sudoers
if [ -n "$(lspci | grep -E 'VGA|Display' | head -n1 | cut -d ':' -f3 | grep -F 'Intel')" ]; then
	echo 'Section "Device"' > /target/etc/X11/xorg.conf
	echo ' Identifier "intel"' >> /target/etc/X11/xorg.conf
	echo ' Driver "intel"' >> /target/etc/X11/xorg.conf
	echo ' BusID  "PCI:0:2:0"' >> /target/etc/X11/xorg.conf
	echo ' Option "AccelMethod" "SNA"' >> /target/etc/X11/xorg.conf
	echo ' Option "SwapbuffersWait" "false"' >> /target/etc/X11/xorg.conf
	echo ' Option "Tiling" "true"' >> /target/etc/X11/xorg.conf
	echo ' Option "BackingStore" "True"' >> /target/etc/X11/xorg.conf
	echo ' Option "XvMC" "on"' >> /target/etc/X11/xorg.conf
	echo ' Option "TripleBuffer" "true"' >> /target/etc/X11/xorg.conf
	echo ' Option "DRI" "true"' >> /target/etc/X11/xorg.conf
	echo 'EndSection' >> /target/etc/X11/xorg.conf
fi
exit 0

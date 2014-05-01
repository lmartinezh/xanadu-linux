Debian live-boot cannot mount the live-media partition other than read-only

With a small modification, normal data storage and persistence is possible with a single partition device

This will patch a copy of the original "live-image" initrd to allow custom mount options. 

Files in /lib/live will be replaced by those from live-boot_4.0~a7-1 with /lib/live/boot/9990-misc-helpers.sh modified.

A copy of the original 9990-misc-helpers.sh is included here for reference.

No changes are made to actual system-installed live-boot (or any other) package files so an existing image does not need to be decompressed.

Before use copy the original "live-image" initrd to this directory 

Then run "patch-initrd" in a terminal as normal user

Use the regenerated, patched initrd to boot from

For Wheezy/Sid at Feb 2013. Not for Squeeze.

##################################################

Custom mount options are activated with "basemountmode=OPTIONS" on cmdline

Example OPTIONS:

Root only RW access: " basemountmode=rw,noatime" (no quotes)

All users RW access (FAT only): " basemountmode=rw,noatime,umask=000" (no quotes)

If you don't use "noatime" for a usb pen it will die sooner.

If "basemountmode" is not specified at all, the original live-boot code runs unchanged (device is mounted "ro,noatime")

#################################################

This patch contains also a fix for LUKS persistent files in non-luks partitions

To use this both the file and the filesystem within the LUKS container should be labelled "persistence"

The cmdline must include " persistence persistence-encryption=none,luks" (no quotes)

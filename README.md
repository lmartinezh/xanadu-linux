Xanadu GNU/Linux

Es una distribución LIVE basada de Debian SID que utiliza LXDE como entorno de escritorio, pensada para ser ligera y a la vez útil, contiene herramientas para rescate de sistemas, análisis forense y navegación anónima, además de todo lo necesario para su uso en el escritorio.

El nombre xanadu se ha convertido en una metáfora de la opulencia, sobre todo gracias al poema Kubla Khan de Samuel Taylor Coleridge, también era la capital de verano del imperio Mongol de Kublai Jan y además fue el nombre seleccionado por Theodore Holm Nelson (Ted Nelson) para su idea de “concebir un documento global y único “docuverse”, que cubra todo lo escrito en el mundo, mediante una gran cantidad de ordenadores interconectados, que contenga todo el conocimiento existente o, mejor dicho, información en forma de hipertexto.”

Se construye usando Live-build 3.0.5, la imagen .ISO y sus configuraciones para crearla se encuentran disponibles bajo licencia GPL v2 (GNU GENERAL PUBLIC LICENSE, Version 2, June 1991) y pueden ser descargadas desde:

http://www.mediafire.com/download/16gds6ftt0u39xl/xanadu-0.3-i386-beta-2.tar.gz

Para copiar el contenido de la imagen ISO a una memoria USB puede utilizar unetbootin o el comando bb de la siguiente forma: dd if=nombre.iso of=/dev/sdx oflag=direct bs=1048576

Requerimientos mínimos:

	* 384 Mb RAM (1 Gb RAM para tor)
	* CPU a 800 Mhz o superior (1.0 Ghz para tor)
	* Tarjeta de video a 800x600, 16 Mb vídeo RAM
	* BIOS con capacidad de arranque por USB o CDROM
	* 5 Gb de capacidad de disco para instalar

Desarrolladores:

	* Jesús Palencia
	* Héctor Mantellini

Colaboradores:

	* David Rondon

Dudas, consultas y/o sugerencias por favor enviarlas a: sinfallas@gmail.com

Contiene material realizado por:

* Configuraciones realizadas por Jesús Lara para arepalinux-script (https://github.com/phenobarbital/arepalinux-script)


--------------------------

La clave de ROOT es: xanadu

--------------------------

Paquetes incluidos:

* Kernel

 3.12.1.686-pae

* Escritorio

 LXDE-desktop
 Openbox

* Ofimatica

 Libreoffice

* Gestor de Archivos

 Thunar
 PCManFM

* Accesorios

 gCalculator

* Editor de Textos

 Leafpad
 nano 

* Visor - Editor de Imagenes

 Gimp
 GPicView
 Xsane

* Visor PDF

 Evince

* Internet 

 IceWeasel
 Flashplugin-nonfree
 FileZilla
 OpenJDK 7
 Pidgin

* Herramientas del Sistema

 htop
 iotop
 Orphaner

* Sonido y Video

 Brasero
 Qjackctl
 VLC

* Terminal - Consola

 LXTerminal

* Gestor de Software

 Synaptic 

* Antivirus

 ClamAV 

* DNS

 DnsMasq

* Fuentes

 Ttf-mscorefonts-installer

* Seguridad y Testeo

 Autopsy
 Sleuthkit
 Chkrootkit
 Fail2ban
 Nmap
 Psad
 Rkhunter
 Shorewall
 Wireshark
 Arpon

* Herramientas de Discos

 Extundelete
 Disk-manager
 Dmraid
 Magicrescue
 Parted
 Testdisk
 Secure-delete

* Anonimato

 Tor
 Privoxy

* Comprimir / Descomprimir

 Unrar-free
 Unzip
 P7zip-full
 Xarchiver

* Otras

 Btrfs-tools
 Cmospwd
 Drbl
 Fdpowermon
 Foremost
 Fuse
 Gvfs
 Udevil
 Lvm2
 Ntfs-3g
 Xfsprogs
 Tmux
 Zsync

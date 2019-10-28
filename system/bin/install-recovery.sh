#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56337742:8f941f139fa58653bd027cf8b1b4c297aa3d41e1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50373962:5778b4d6dae8f7f17ae4ca5da56a9686d2f167db EMMC:/dev/block/bootdevice/by-name/recovery 8f941f139fa58653bd027cf8b1b4c297aa3d41e1 56337742 5778b4d6dae8f7f17ae4ca5da56a9686d2f167db:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

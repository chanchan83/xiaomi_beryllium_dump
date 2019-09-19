#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56329550:a319d1f88fb58212c03ffca9bcc240ac7bbc76d0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50361674:85ad6554e78855b30ebbce7d369e9a20c6ec906c EMMC:/dev/block/bootdevice/by-name/recovery a319d1f88fb58212c03ffca9bcc240ac7bbc76d0 56329550 85ad6554e78855b30ebbce7d369e9a20c6ec906c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

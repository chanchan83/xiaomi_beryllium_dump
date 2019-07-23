#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56309070:9dd77f8cdb8ab30dbd428e042cb6667409f9924b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50341194:345af534476740b08010544fb799756dc49fa14f EMMC:/dev/block/bootdevice/by-name/recovery 9dd77f8cdb8ab30dbd428e042cb6667409f9924b 56309070 345af534476740b08010544fb799756dc49fa14f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

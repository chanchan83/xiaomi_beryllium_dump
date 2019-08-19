#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56325454:8a97d45bff5c50bb10f59670831d0e284944fe53; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50357578:8b5a7e24f910a0478f4c2c47dbd7765474971f82 EMMC:/dev/block/bootdevice/by-name/recovery 8a97d45bff5c50bb10f59670831d0e284944fe53 56325454 8b5a7e24f910a0478f4c2c47dbd7765474971f82:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

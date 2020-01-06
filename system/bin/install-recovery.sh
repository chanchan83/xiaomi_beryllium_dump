#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55878990:7064b5cceac5e9e971619aa8dc05da721841573e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:49919306:d8965af15fe29a3ced696f0af6cc5811adb12277 EMMC:/dev/block/bootdevice/by-name/recovery 7064b5cceac5e9e971619aa8dc05da721841573e 55878990 d8965af15fe29a3ced696f0af6cc5811adb12277:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

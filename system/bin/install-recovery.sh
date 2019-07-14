#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56362318:ce9372e88c824b273a6f3953b79bda0332b42f49; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50386250:6fdb69314f7b8a34aa2acc8fb3bf42e77c4c6824 EMMC:/dev/block/bootdevice/by-name/recovery ce9372e88c824b273a6f3953b79bda0332b42f49 56362318 6fdb69314f7b8a34aa2acc8fb3bf42e77c4c6824:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

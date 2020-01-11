#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:45655374:caa8d49a43bfdc5439d79f4a891bc4642e5f90dc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:40764746:2184d499e162fafcd99a2ca5ee96612c2387dfa6 EMMC:/dev/block/bootdevice/by-name/recovery caa8d49a43bfdc5439d79f4a891bc4642e5f90dc 45655374 2184d499e162fafcd99a2ca5ee96612c2387dfa6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

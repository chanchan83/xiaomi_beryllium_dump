#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:37434702:c663404192d3c9957a10ae2b5f3d0c3edfe88fff; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:22783306:48257304353d7d9ff99d093c6d8b187c12c857f1 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:37434702:c663404192d3c9957a10ae2b5f3d0c3edfe88fff && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

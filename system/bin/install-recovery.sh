#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56300878:7024872cef76cf55bdd5aa798de0f83562ec8af0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50333002:684cd050b437b7bc4c115ff1144848a4c5261772 EMMC:/dev/block/bootdevice/by-name/recovery 7024872cef76cf55bdd5aa798de0f83562ec8af0 56300878 684cd050b437b7bc4c115ff1144848a4c5261772:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

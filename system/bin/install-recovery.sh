#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38411598:5dd1fd86236e13a86513bd4f496bfcd157b6806c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:32834890:15f75febb170aa537dcaecdb5f5f5fd46c33784f EMMC:/dev/block/bootdevice/by-name/recovery 5dd1fd86236e13a86513bd4f496bfcd157b6806c 38411598 15f75febb170aa537dcaecdb5f5f5fd46c33784f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

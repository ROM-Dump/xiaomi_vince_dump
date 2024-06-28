#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32650574:a5d6c7bdcc340573caffb72ed7d3dd78899a6013; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30797130:cc76695a43473b5697dee2d8659030fd0095d00c EMMC:/dev/block/bootdevice/by-name/recovery a5d6c7bdcc340573caffb72ed7d3dd78899a6013 32650574 cc76695a43473b5697dee2d8659030fd0095d00c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32648526:cd82b75c151a3cbd5c84e088bab26700b38159c0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30795082:4afe33f2b32af6e0b839572b12f7c2954c149835 EMMC:/dev/block/bootdevice/by-name/recovery cd82b75c151a3cbd5c84e088bab26700b38159c0 32648526 4afe33f2b32af6e0b839572b12f7c2954c149835:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

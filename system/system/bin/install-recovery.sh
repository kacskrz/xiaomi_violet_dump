#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7a40fd4fb9e1965ec46b29a6c5c28fd59002f0de; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:0230efb0e03a248b136c9aed50c65210ace9b3ac EMMC:/dev/block/bootdevice/by-name/recovery 7a40fd4fb9e1965ec46b29a6c5c28fd59002f0de 67108864 0230efb0e03a248b136c9aed50c65210ace9b3ac:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

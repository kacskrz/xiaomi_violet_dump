#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5925bff727be9a13b9c69050286bfcf42ea7c315; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:6cacc9162f106c48b3fa64fb4c14bfb4355bafb7 EMMC:/dev/block/bootdevice/by-name/recovery 5925bff727be9a13b9c69050286bfcf42ea7c315 67108864 6cacc9162f106c48b3fa64fb4c14bfb4355bafb7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

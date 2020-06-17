#!/sbin/sh  
  
# fix rebooting into recovery
# by JellyCandy
toybox dd if=/sbin/aboot of=/dev/block/platform/soc.0/7824900.sdhci/by-name/aboot

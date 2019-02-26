#!/system/bin/sh

#Uncomment me to output sh -x of this script to /cache/phh/logs
#if [ -z "$debug" ];then
#	mkdir -p /cache/phh
#	debug=1 exec sh -x "$(readlink -f -- "$0")" > /cache/phh/logs 2>&1
#fi

vndk="$(getprop persist.sys.vndk)"
setprop sys.usb.ffs.aio_compat true

if mount -o remount,rw /system;then
	resize2fs $(grep ' /system ' /proc/mounts |cut -d ' ' -f 1) || true
elif mount -o remount,rw /;then
	resize2fs /dev/root || true
fi
mount -o remount,ro /system || true
mount -o remount,ro / || true

mkdir -p /mnt/phh/
mount -t tmpfs -o rw,nodev,relatime,mode=755,gid=0 none /mnt/phh || true
mkdir -p /mnt/phh/empty_dir

if grep -qF 'mkdir /data/.fps 0770 system fingerp' vendor/etc/init/hw/init.mmi.rc;then
    mkdir -p /data/.fps
    chmod 0770 /data/.fps
    chown system:9015 /data/.fps

    chown system:9015 /sys/devices/soc/soc:fpc_fpc1020/irq
    chown system:9015 /sys/devices/soc/soc:fpc_fpc1020/irq_cnt
fi

mount -o bind /system/phh/empty /vendor/overlay/SysuiDarkTheme/SysuiDarkTheme.apk || true
mount -o bind /system/phh/empty /vendor/overlay/SysuiDarkTheme/SysuiDarkThemeOverlay.apk || true

mount -o bind /mnt/phh/empty_dir /vendor/lib/soundfx || true

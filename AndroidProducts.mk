LOCAL_PATH := device/phh/hannaht/
PRODUCT_MAKEFILES := \
	device/phh/treble/treble_arm_avN.mk \
	$(LOCAL_PATH)/treble_hannaht.mk \
	$(LOCAL_PATH)/definitions.mk

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/vndk-detect:system/bin/vndk-detect \
        $(LOCAL_PATH)/treble.rc:system/etc/init/vndk.rc \
        $(LOCAL_PATH)/ld.config.26.txt:system/etc/ld.config.26.txt

PRODUCT_COPY_FILES := \
        frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_COPY_FILES += \
        device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(LOCAL_PATH)/sepolicy
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

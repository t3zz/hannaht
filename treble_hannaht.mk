include build/make/target/board/generic_arm_a/BoardConfig.mk
include device/phh/treble/board-base.mk

include build/make/target/product/treble_common.mk
$(call inherit-product, vendor/vndk/vndk-binder32.mk)
$(call inherit-product, device/phh/hannaht/base.mk)

$(call inherit-product, device/phh/hannaht/lineage.mk)

# PRODUCT_PACKAGES +=  phh-su

PRODUCT_NAME := treble_hannaht
PRODUCT_DEVICE := hannaht
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E5 Series

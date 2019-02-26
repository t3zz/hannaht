$(call inherit-product, device/phh/treble/base-pre.mk)
include build/make/target/product/treble_common.mk
$(call inherit-product, vendor/vndk/vndk.mk)
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/lineage.mk)

# PRODUCT_PACKAGES +=  phh-su

PRODUCT_NAME := treble_hannaht
PRODUCT_DEVICE := hannaht
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E5 PLUS

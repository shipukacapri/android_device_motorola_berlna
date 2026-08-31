#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from berlna device
$(call inherit-product, device/motorola/berlna/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_berlna
PRODUCT_DEVICE := berlna
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge (2021)

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="berlna_global-user 13 T1RMS33.1-110-17-12 f7bcd-35c05 release-keys" \
    BuildFingerprint=motorola/berlna_global/berlna:13/T1RMS33.1-110-17-12/f7bcd-35c05:user/release-keys \
    DeviceProduct=berlna_global

# Rising Flags
WITH_GMS := true
RISING_MAINTAINER := Shipu
TARGET_ENABLE_BLUR := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer="Shipu" \
    RisingChipset="Snapdragon 778G"

#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from vince device
$(call inherit-product, device/xiaomi/vince/device.mk)

PRODUCT_DEVICE := vince
PRODUCT_NAME := omni_vince
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vince-user 7.1.2 N2G47H V9.6.3.0.NEGRUFD release-keys"

BUILD_FINGERPRINT := xiaomi/vince_ru/vince:7.1.2/N2G47H/V9.6.3.0.NEGRUFD:user/release-keys

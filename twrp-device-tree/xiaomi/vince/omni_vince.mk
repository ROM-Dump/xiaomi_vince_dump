#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
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
    PRIVATE_BUILD_DESC="vince-user 7.1.2 N2G47H V10.1.1.0.NEGCNFI release-keys"

BUILD_FINGERPRINT := xiaomi/vince/vince:7.1.2/N2G47H/V10.1.1.0.NEGCNFI:user/release-keys

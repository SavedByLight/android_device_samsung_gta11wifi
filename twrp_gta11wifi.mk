#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta11wifi device
$(call inherit-product, device/samsung/gta11wifi/device.mk)

PRODUCT_DEVICE := gta11wifi
PRODUCT_NAME := twrp_gta11wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X130
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta11wifixx-user 12 SP1A.210812.016 X130XXU1AYHB release-keys"

BUILD_FINGERPRINT := samsung/gta11wifixx/gta11wifi:12/SP1A.210812.016/X130XXU1AYHB:user/release-keys

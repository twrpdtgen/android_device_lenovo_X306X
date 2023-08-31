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

# Inherit from X306X device
$(call inherit-product, device/lenovo/X306X/device.mk)

PRODUCT_DEVICE := X306X
PRODUCT_NAME := omni_X306X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X306X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_amar_row_lte-user 10 QP1A.190711.020 TB-X306X_U release-keys"

BUILD_FINGERPRINT := lenovo/TB-X306X/LenovoTB-X306X:11/TQ3A.230605.012/root06301816:user/release-keys

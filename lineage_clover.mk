#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from clover device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := clover
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_clover
PRODUCT_MODEL := Mi PAD 4
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := clover

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="clover-user 8.1.0 OPM1.171019.019 V9.6.4.0.ODJCNFD release-keys"

BUILD_FINGERPRINT := Xiaomi/clover/clover:8.1.0/OPM1.171019.019/V9.6.4.0.ODJCNFD:user/release-keys

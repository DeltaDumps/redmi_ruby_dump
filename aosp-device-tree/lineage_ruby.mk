#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ruby device
$(call inherit-product, device/xiaomi/ruby/device.mk)

PRODUCT_DEVICE := ruby
PRODUCT_NAME := lineage_ruby
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi-user 12 SP1A.210812.016 V14.0.9.0.SMOCNXM release-keys"

BUILD_FINGERPRINT := Redmi/ruby/ruby:12/SP1A.210812.016/V14.0.9.0.SMOCNXM:user/release-keys

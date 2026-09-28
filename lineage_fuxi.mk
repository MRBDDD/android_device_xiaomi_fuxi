#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)

# Keys
# $(call inherit-product-if-exists, vendor/lineage-priv/keys/keys.mk)

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

# AviumUI Configs
AVIUM_MAINTAINER := Mairen
AVIUM_SETTINGS_SOC_MODEL_NAME := Qualcomm Snapdragon 8 Gen 2
AVIUM_SETTINGS_DEVICE_CODENAME := Xiaomi 13
AVIUM_IS_OFFICIAL := true
WITH_GMS := true

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:16/BP2A.250605.031.A3/OS3.0.307.0.WMCCNXM:user/release-keys

# Vulkan
PRODUCT_PRODUCT_PROPERTIES += \
    ro.hwui.use_vulkan=true \
    debug.renderengine.backend=skiavkthreaded
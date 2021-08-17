#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from potter device
$(call inherit-product, device/motorola/potter/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common.mk)

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

# Derpfest Props
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
DERP_BUILDTYPE := Official
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := potter
PRODUCT_NAME := derp_potter
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := potter

# TWRP theme
TW_THEME := portrait_hdpi

# for specific
$(call inherit-product, vendor/motorola/potter/potter-vendor.mk)

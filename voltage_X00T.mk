#
# Copyright (C) 2020 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common VoltageOS stuff
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit from X00T device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00T
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := Asus Zenfone Max Pro M1
PRODUCT_NAME := voltage_X00T
TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00T

PRODUCT_GMS_CLIENTID_BASE := android-asus

# VoltageOS Properties
TARGET_BOOT_ANIMATION_RES := 2160
VOLTAGE_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X00T \
    PRODUCT_DEVICE=X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"

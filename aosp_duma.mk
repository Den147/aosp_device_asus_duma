# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2016 The AOKP Project
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

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Need for AEX Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Use Magisk as default root method
DEFAULT_ROOT_METHOD := magisk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/duma/device.mk)

include device/qcom/common/Android.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := duma
PRODUCT_NAME := aosp_duma
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ME302KL
PRODUCT_MANUFACTURER := Asus


#
# Copyright (C) 2015 The Android Open Source Project
# Copyright (C) 2015 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# fix rebooting into recovery by JellyCandy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/aboot:root/sbin/aboot \
    $(LOCAL_PATH)/recovery/aboot.sh:root/sbin/aboot.sh

#CUSTOM TWRP FSTAB
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := FAO
PRODUCT_NAME := omni_FAO
PRODUCT_BRAND := fih
PRODUCT_MODEL := InFocus M370
PRODUCT_MANUFACTURER := fih
PRODUCT_RELEASE_NAME := InFocus M370

# Boot animation
TARGET_SCREEN_HEIGHT      := 1280
TARGET_SCREEN_WIDTH       := 720

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

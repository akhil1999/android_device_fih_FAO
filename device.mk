#
# Copyright 2014 The Android Open-Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
#PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
PRODUCT_COPY_FILES += \
	device/fih/FAO/init.qcom.rc:root/init.qcom.rc \
	device/fih/FAO/init.qcom.power.rc:root/init.qcom.power.rc \
	device/fih/FAO/init.qcom.usb.rc:root/init.qcom.usb.rc \
	device/fih/FAO/init.qcom.diag.rc:root/init.qcom.diag.rc \
	device/fih/FAO/fstab.qcom:root/fstab.qcom \
	device/fih/FAO/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS := \
    device/fih/FAO/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320
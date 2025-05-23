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

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

#WiFi Specific files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/WCNSS_wlan_dictionary.dat:system/etc/firmware/wlan/prima/WCNSS_wlan_dictionary.dat \
    $(LOCAL_PATH)/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_CHT.conf:system/etc/wifi/wpa_supplicant_CHT.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_CMCC.conf:system/etc/wifi/wpa_supplicant_CMCC.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_FET.conf:system/etc/wifi/wpa_supplicant_FET.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_SKT.conf:system/etc/wifi/wpa_supplicant_SKT.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_TWM.conf:system/etc/wifi/wpa_supplicant_TWM.conf

# WiFi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwifi-hal-qcom \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wcnss_service

#Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf
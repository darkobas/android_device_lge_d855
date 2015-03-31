#
# Copyright (C) 2014 The CyanogenMod Project
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

# Get the prebuilt list of APNs
$(call inherit-product, vendor/dud/configs/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/dud/vendor.mk)
$(call inherit-product, vendor/dud/configs/common.mk)

$(call inherit-product, device/lge/d855/device.mk)

PRODUCT_DEVICE := d855
PRODUCT_NAME := full_d855
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D855
PRODUCT_MANUFACTURER := LGE


# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Bluetooth
PRODUCT_PACKAGES += \
    init.galbi.bt.sh \
    init.galbi.bt_vendor.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Wifi
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    libwcnss_qmi \
    wcnss_service

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="d855" \
    BUILD_FINGERPRINT="lge/g3_global_com/g3:5.0/LRX21R.A1419207951/1419207951:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_global_com-user 5.0 LRX21R.A1419207951 1419207951 release-keys" 


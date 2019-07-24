#
# Copyright (C) 2017 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Kernel+
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/recovery.fstab:recovery.fstab \
	system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE	:= pine
PRODUCT_NAME	:= omni_pine
PRODUCT_BRAND	:= Xiaomi
PRODUCT_MODEL	:= Redmi 7A
PRODUCT_MANUFACTURER := Xiaomi

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := false

PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true
# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.build.security_patch=2099-12-31

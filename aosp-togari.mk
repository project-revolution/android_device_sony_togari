#
# Copyright (C) 2013 Krabappel2548
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Linaro specific bits
$(call inherit-product, device/linaro/common/common.mk)

PRODUCT_NAME := aosp_togari
PRODUCT_DEVICE := togari
PRODUCT_BRAND := sony
PRODUCT_MODEL := Xperia Z Ultra
PRODUCT_MANUFACTURER := sony
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6833 BUILD_FINGERPRINT=Sony/C6833_1274-8613/C6833:4.2.2/14.1.B.1.526/8bl_jw:user/release-keys PRIVATE_BUILD_DESC="C6833-user 4.2.2 14.1.B.1.526 8bl_jw test-keys"

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sony/togari/device.mk)
$(call inherit-product-if-exists, vendor/sony/togari/togari-vendor.mk)

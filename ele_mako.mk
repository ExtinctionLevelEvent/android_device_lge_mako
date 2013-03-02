#
# Copyright 2012 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#

# name
PRODUCT_RELEASE_NAME := N4


# gsm
$(call inherit-product, vendor/event/ele/config/gsm.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# languages
PRODUCT_LOCALES := cs_CZ da_DK de_AT de_CH de_DE de_LI el_GR en_AU en_CA en_GB en_NZ en_SG en_US es_ES fr_CA fr_CH fr_BE fr_FR it_CH it_IT ja_JP ka_GE ko_KR nb_NO nl_BE nl_NL nn_NO pl_PL pt_PT ru_RU sv_SE tr_TR zh_CN zh_HK zh_TW am_ET hi_IN

# phone
$(call inherit-product, vendor/event/ele/config/common_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# products
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_NAME := ele_mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=527662 \
    PRODUCT_NAME=occam \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys" \
    BUILD_FINGERPRINT="google/occam/mako:4.2.2/JDQ39/573038:user/release-keys"


# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/mako/device.mk)
$(call inherit-product-if-exists, vendor/lge/mako/device-vendor.mk)

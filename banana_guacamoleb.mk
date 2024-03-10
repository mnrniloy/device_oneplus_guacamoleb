#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Bananadroid stuff.
$(call inherit-product, vendor/banana/config/common.mk)

# Supported Device Flags.
BANANA_MAINTAINER := NILOY
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := banana_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2240
TARGET_BOOT_ANIMATION_RES := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202303230244:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7 \
    TARGET_NAME=OnePlus7 \
    PRIVATE_BUILD_DESC="OnePlus7-user 12 SKQ1.211113.001 P.202303230244 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

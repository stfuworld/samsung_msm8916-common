# Inherit some common Ancient stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Include full languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# GApps & Stuff
ANCIENT_GAPPS := true
TARGET_GAPPS_ARCH := arm
IS_PHONE := true
WITH_MINI_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_BOOT_ANIMATION_RES := 720

# GApps permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-gapp.xml:system/product/etc/permissions/privapp-permissions-gapp.xml

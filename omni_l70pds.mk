# Inherit device configuration
$(call inherit-product, device/lge/l70pds/device_l70pds.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l70pds
PRODUCT_NAME := omni_l70pds
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D295
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=l70pds_global_com \
	TARGET_DEVICE=l70pds \
	BUILD_FINGERPRINT="lge/l70pds_global_com/l70pds:4.4.2/KOT49I.A1414595997/1414595997:user/release-keys" \
	PRIVATE_BUILD_DESC="l70pds_global_com-user 4.4.2 KOT49I.A1414595997 1414595997 release-keys"

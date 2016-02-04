# Inherit device configuration
$(call inherit-product, device/lge/l70pn/device_l70pn.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l70pn
PRODUCT_NAME := omni_l70pn
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D290
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=l70pn_global_com \
	TARGET_DEVICE=l70pn \
	BUILD_FINGERPRINT="lge/l70pn_global_com/l70pn:4.4.2/KOT49I.A1414595997/1414595997:user/release-keys" \
	PRIVATE_BUILD_DESC="l70pn_global_com-user 4.4.2 KOT49I.A1414595997 1414595997 release-keys"

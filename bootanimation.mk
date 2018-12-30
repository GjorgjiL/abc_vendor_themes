# Boot Animation
scr_resolution := 1080x1920

ifneq ($(filter taimen,$(TARGET_PRODUCT)),)
    scr_resolution := 1440x2880
endif

ifneq ($(wildcard vendor/themes/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/themes/bootanimation/$(scr_resolution).zip:system/media/bootanimation.zip
endif

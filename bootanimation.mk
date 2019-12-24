# Boot Animation
scr_resolution := 1080x1920
abc_device := $(patsubst %f,%,$(subst abc_,,$(TARGET_PRODUCT)))

ifneq ($(filter taimen,$(abc_device)),)
scr_resolution := 1440x2880
endif

ifneq ($(filter bonito,$(abc_device)),)
scr_resolution := 1080x2160
endif

ifneq ($(wildcard vendor/themes/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/themes/bootanimation/$(scr_resolution).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    vendor/themes/bootanimation/$(scr_resolution).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
endif

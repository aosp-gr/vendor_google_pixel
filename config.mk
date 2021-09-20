# Pixel stuff

PRODUCT_PACKAGES += \
    DevicePersonalizationPrebuiltPixel2020 \
    MarkupGoogle \
    PixelThemesStub \
    SettingsIntelligenceGooglePrebuilt \
    SoundPickerPrebuilt \
    WallpaperPickerGoogleRelease

PRODUCT_PACKAGES += \
    PixelConfigOverlay \
    PixelLauncherOverlay \
    PixelSettingsOverlay \
    PixelSystemUIOverlay \
    PixelWallpaperPickerOverlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    $(LOCAL_PATH)/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Italic.ttf \
    $(LOCAL_PATH)/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio,$(TARGET_COPY_OUT_PRODUCT)/media/audio) \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/charger,$(TARGET_COPY_OUT_PRODUCT)/etc/res)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/pixel-sysconfig.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-google-p.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-p.xml

PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural \
    ro.config.ringtone=The_big_adventure.ogg \
    ro.config.notification_sound=End_note.ogg \
    ro.config.alarm_alert=Bright_morning.ogg    

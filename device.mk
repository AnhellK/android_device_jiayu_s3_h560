LOCAL_PATH := device/jiayu/s3_h560

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := JY-S3_ADV,h560,s3_h560,32_h560,s3_32_h560,JY-S3_ADV_32


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    libstlport

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

# NFC HAL
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl

# Sensors HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# Lights HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl

# WiFi HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Packages
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# USB HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Audio HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

# Display HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl

# Keymaster HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Renderer
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# Camera
PRODUCT_PACKAGES += \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl


PRODUCT_PACKAGES += \
     Snap \
     libcamera_parameters_ext
    
PRODUCT_PACKAGES += \
    EngineerMode

PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
    lights.mt6752

PRODUCT_PACKAGES += \
    gps.mt6752 \
    libcurl \
    YGPS

PRODUCT_PACKAGES += \
     libccci_util

# Media
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/camera/camerasize.xml:system/etc/camerasize.xml \

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/vendor/manifest.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt6752:root/fstab.mt6752 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6752.rc:root/init.mt6752.rc \
    $(LOCAL_PATH)/rootdir/init.mt6752.usb.rc:root/init.mt6752.usb.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/init.performance.rc:root/init.performance.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6752.rc:root/ueventd.mt6752.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6752.rc:root/init.recovery.mt6752.rc

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Thermal
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/.ht120.mtc:system/etc/.tp/.ht120.mtc \
	$(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf \
	$(LOCAL_PATH)/configs/.thermal_policy_00:system/etc/.tp/.thermal_policy_00 \
	$(LOCAL_PATH)/configs/.thermal_policy_01:system/etc/.tp/.thermal_policy_01 \
	$(LOCAL_PATH)/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf

# Doze
PRODUCT_PACKAGES += \
     MeizuDoze

PRODUCT_PACKAGES += \
     libGLES_android

PRODUCT_PACKAGES += \
     Jelly

# file manager
PRODUCT_PACKAGES += \
       FileManager
    
#wwi
PRODUCT_PACKAGES += \
    wificond \
    wifilogd

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Nfc \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MT6755 \
    ro.telephony.ril.config=fakeiccid \
    ro.com.android.mobiledata=false \
    persist.service.acm.enable=0 \
    ro.config.low_ram=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp


# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6752

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0
 
# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0


PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libnl_2 \
    libion

# LiveDisplay
PRODUCT_PACKAGES += libjni_livedisplay

# USB
PRODUCT_PACKAGES += com.android.future.usb.accessory

# xlog
PRODUCT_PACKAGES += \
    libxlog 

# Properties
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.sys.fw.dex2oat_thread_count=4

#Dex2oat Limits
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=6 \
    dalvik.vm.image-dex2oat-threads=8

# Force linking shim
LINKER_FORCED_SHIM_LIBS := /system/lib/libmedia.so|libshim_snd.so:/system/lib64/libmedia.so|libshim_snd.so:/system/lib/liblog.so|libshim_xlog.so:/system/lib64/liblog.so|libshim_xlog.so:/system/lib/libui.so|libshim_ui.so:/system/lib64/libui.so|libshim_ui.so:/system/lib/libgui.so|libshim_gui.so:/system/lib64/libgui.so|libshim_gui.so:/system/bin/mtk_agpsd|libshim_agps.so

# Basic apps
PRODUCT_PACKAGES += \
    Stk \
    Torch \
    Snap

#opengl
PRODUCT_PACKAGES += \
    libGLES_android

# Mtk symbols & shim
PRODUCT_PACKAGES += \
    libshim_agps \
    libshim_asc \
    libshim_gui \
    libshim_snd \
    libshim_ui \
    libshim_xlog

# Add for ANT+
ifeq ($(strip $(MTK_ANT_SUPPORT)), yes)

BOARD_ANT_WIRELESS_DEVICE :="vfs-prerelease"

      PRODUCT_PACKAGES += com.dsi.ant.antradio_library \
                          AntHalService \
                          ANT_RAM_CODE_E1.BIN \
                          ANT_RAM_CODE_E2.BIN
                          
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ANT/prebuild/libantradio32.so:system/lib/libantradio.so \
    $(LOCAL_PATH)/ANT/prebuild/libantradio64.so:system/lib64/libantradio.so \
    $(LOCAL_PATH)/ANT/prebuild/antradio_app:system/xbin/antradio_app

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

endif

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Common stuff
$(call inherit-product, vendor/mad/config/common.mk)

# Vendor
$(call inherit-product, vendor/jiayu/s3_h560/s3_h560-vendor.mk)

#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/nubia/NX40X/NX40X-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nubia/NX40X/overlay

LOCAL_PATH := device/nubia/NX40X
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_NX40X
PRODUCT_DEVICE := NX40X

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/root/init.qcom.rc:root/init.qcom.rc \
    device/nubia/NX40X/root/init.qcom.sh:root/init.qcom.sh \
    device/nubia/NX40X/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/nubia/NX40X/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/nubia/NX40X/root/init.target.rc:root/init.target.rc \
    device/nubia/NX40X/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/nubia/NX40X/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/nubia/NX40X/root/fstab.qcom:root/fstab.qcom \
    device/nubia/NX40X/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/nubia/NX40X/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    device/nubia/NX40X/root/init.qcom.ril.sh:root/init.qcom.ril.sh \
    device/nubia/NX40X/root/init.nubia.usb.rc:root/init.nubia.usb.rc 
#    device/nubia/NX40X/root/init.usb.rc:root/init.usb.rc 
#    device/nubia/NX40X/root/init.nubia.ums.sh:root/init.nubia.ums.sh \
#    device/nubia/NX40X/root/init.nubia.ums_adb.sh:root/init.nubia.ums_adb.sh

#copy etc file.
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/nubia/NX40X/etc/hcidump.sh:system/etc/hcidump.sh \
    device/nubia/NX40X/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/nubia/NX40X/etc/init.crda.sh:system/etc/init.crda.sh \
    device/nubia/NX40X/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    device/nubia/NX40X/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/nubia/NX40X/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/nubia/NX40X/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/nubia/NX40X/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/nubia/NX40X/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/nubia/NX40X/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/nubia/NX40X/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/nubia/NX40X/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/nubia/NX40X/etc/init.qcom.sensor.sh:system/etc/init.qcom.sensor.sh \
    device/nubia/NX40X/etc/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
    device/nubia/NX40X/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    device/nubia/NX40X/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/nubia/NX40X/media_profiles.xml:system/etc/media_profiles.xml \
    device/nubia/NX40X/media_codecs.xml:system/etc/media_codecs.xml



#thermal
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/thermal/thermald-8064.conf:system/etc/thermald-8064.conf \
    device/nubia/NX40X/thermal/thermald-8064ab.conf:system/etc/thermald-8064ab.conf \
    device/nubia/NX40X/thermal/thermald-8930.conf:system/etc/thermald-8930.conf \
    device/nubia/NX40X/thermal/thermald-8930ab.conf:system/etc/thermald-8930ab.conf \
    device/nubia/NX40X/thermal/thermald-8960.conf:system/etc/thermald-8960.conf \
    device/nubia/NX40X/thermal/thermald-8960ab.conf:system/etc/thermald-8960ab.conf \
    device/nubia/NX40X/thermal/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf \
    device/nubia/NX40X/thermal/thermal-engine-8064ab.conf:system/etc/thermal-engine-8064ab \
    device/nubia/NX40X/thermal/thermal-engine-8930.conf:system/etc/thermal-engine-8930.conf \
    device/nubia/NX40X/thermal/thermal-engine-8960.conf:system/etc/thermal-engine-8960.conf 

#perbuilt modules
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/modules/adsprpc.ko:system/lib/modules/adsprpc.ko \
    device/nubia/NX40X/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/nubia/NX40X/modules/control_trace.ko:system/lib/modules/control_trace.ko \
    device/nubia/NX40X/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/nubia/NX40X/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    device/nubia/NX40X/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/nubia/NX40X/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/nubia/NX40X/modules/ks8851.ko:system/lib/modules/ks8851.ko \
    device/nubia/NX40X/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/nubia/NX40X/modules/mcdrvmodule.ko:system/lib/modules/mcdrvmodule.ko \
    device/nubia/NX40X/modules/mckernelapi.ko:system/lib/modules/mckernelapi.ko \
    device/nubia/NX40X/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/nubia/NX40X/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/nubia/NX40X/modules/qce40.ko:system/lib/modules/qce40.ko \
    device/nubia/NX40X/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/nubia/NX40X/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/nubia/NX40X/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
    device/nubia/NX40X/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/nubia/NX40X/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/nubia/NX40X/modules/spidev.ko:system/lib/modules/spidev.ko \
    device/nubia/NX40X/modules/test-iosched.ko:system/lib/modules/test-iosched.ko

#perbuilt wifi
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/modules/prima/prima_wlan.ko:system/lib/modules/prima/prima_wlan.ko

PRODUCT_COPY_FILES += \
	device/nubia/NX40X/wifi/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
	device/nubia/NX40X/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	device/nubia/NX40X/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/nubia/NX40X/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/nubia/NX40X/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    device/nubia/NX40X/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/nubia/NX40X/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/nubia/NX40X/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
    device/nubia/NX40X/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/nubia/NX40X/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/nubia/NX40X/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl
#    device/nubia/NX40X/keylayout/sensor00fn1a.kl:system/usr/keylayout/sensor00fn1a.kl \

#audio ucm files
PRODUCT_COPY_FILES += \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_I2S:system/etc/snd_soc_msm/snd_soc_msm_I2S \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_I2SFusion:system/etc/snd_soc_msm/snd_soc_msm_I2SFusion \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
	device/nubia/NX40X/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm \
	device/nubia/NX40X/audio_policy.conf:system/etc/audio_policy.conf

# GPS configuration
PRODUCT_COPY_FILES += \
    device/nubia/NX40X/etc/gps.conf:system/etc/gps.conf

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.handset.mic=dmic \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false 
#    af.resampler.quality=4

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += debug.mdpcomp.maxlayer=3

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd

#PRODUCT_PROPERTY_OVERRIDES += \
#	rild.libpath=/system/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

#PRODUCT_PROPERTY_OVERRIDES += \
#	telephony.lteOnCdmaDevice=0

#PRODUCT_PROPERTY_OVERRIDES += \
#	drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15

# Enable AAC 5.1 output
#PRODUCT_PROPERTY_OVERRIDES += \
#	media.aac_51_output_enabled=true

#PRODUCT_PROPERTY_OVERRIDES += \
#	debug.prerotation.disable=1

#PRODUCT_PROPERTY_OVERRIDES += \
#        debug.egl.recordable.rgba8888=1

#dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libgps.utils \
    gps.msm8960

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    liboverlay

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
#PRODUCT_PACKAGES += \
#        LiveWallpapers \
#        LiveWallpapersPicker \
#        VisualizationWallpapers \
#        librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck      \
    make_ext4fs \
    setup_fs

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

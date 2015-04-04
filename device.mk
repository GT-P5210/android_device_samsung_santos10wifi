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

# Need AppWidget permission to prevent from Launcher's crash.
# TODO(pattjin): Remove this when the TV Launcher is used, which does not support AppWidget.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# There may be a cleaner way to do this.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=2m

PRODUCT_PROPERTY_OVERRIDES += \
    panel.physicalWidthmm = 217 \
    panel.physicalHeightmm = 136 \
    gsm.net.interface = rmnet0 \
    persist.system.at-proxy.mode = 0 \
    persist.ril-daemon.disable = 0 \
    persist.radio.ril_modem_state = 1

# ---- stock ----
#PRODUCT_PROPERTY_OVERRIDES += \
#+ro.build.scafe=americano
#+ro.build.scafe.size=grande
#+ro.com.google.clientidbase=android-samsung
#+ro.com.google.gmsversion=4.4.2_r2
#+ro.config.media_sound=Media_preview_Touch_the_light.ogg
#+ro.config.personality=compat_layout
#+ro.error.receiver.default=com.samsung.receiver.error
#+ro.hdcp2.rx=tz
#+ro.intel.corp.email=1
#+ro.product.cpu.abi2=armeabi-v7a
#+ro.ril.gprsclass=10
#+ro.ril.hsxpa=1
#+ro.ril.status.polling.enable=0
#+ro.sec.fle.encryption=true
#+ro.secwvk=144
#+ro.streaming.video.drs=true
#+rs.gpu.filterscript=0
#+rs.gpu.renderscript=0
#+rs.gpu.rsIntrinsic=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

DEVICE_PACKAGE_OVERLAYS := \
    device/samsung/santos10wifi/overlay

PRODUCT_COPY_FILES += \
    device/samsung/santos10wifi/rootdir/fstab.santos10wifi:root/fstab.santos10wifi \
    device/samsung/santos10wifi/rootdir/init.avc.rc:root/init.avc.rc \
    device/samsung/santos10wifi/rootdir/init.common.rc:root/init.common.rc \
    device/samsung/santos10wifi/rootdir/init.debug.rc:root/init.debug.rc \
    device/samsung/santos10wifi/rootdir/init.diag.rc:root/init.diag.rc \
    device/samsung/santos10wifi/rootdir/init.gps.cpd.rc:root/init.gps.cpd.rc \
    device/samsung/santos10wifi/rootdir/init.gps.rc:root/init.gps.rc \
    device/samsung/santos10wifi/rootdir/init.partlink.rc:root/init.partlink.rc \
    device/samsung/santos10wifi/rootdir/init.platform.usb.rc:root/init.platform.usb.rc \
    device/samsung/santos10wifi/rootdir/init.santos10wifi.rc:root/init.santos10wifi.rc \
    device/samsung/santos10wifi/rootdir/init.watchdog.rc:root/init.watchdog.rc \
    device/samsung/santos10wifi/rootdir/init.wifi.rc:root/init.wifi.rc \
    device/samsung/santos10wifi/rootdir/init.wifi.vendor.rc:root/init.wifi.vendor.rc \
    device/samsung/santos10wifi/rootdir/init.wireless.rc:root/init.wireless.rc \
    device/samsung/santos10wifi/rootdir/props.rc:root/props.rc \
    device/samsung/santos10wifi/rootdir/props.board.rc:root/props.board.rc \
    device/samsung/santos10wifi/rootdir/props.platform.rc:root/props.platform.rc \
    device/samsung/santos10wifi/rootdir/ueventd.santos10wifi.rc:root/ueventd.santos10wifi.rc \
    \
    device/samsung/santos10wifi/vendor/partlink:root/sbin/partlink

PRODUCT_PACKAGES += \
    libGLES_android

# Audio
#PRODUCT_PACKAGES += \
#    libtinyalsa \
#    audio.primary.fugu

#USE_CUSTOM_AUDIO_POLICY := 1

# specific management of audio_policy.conf
#PRODUCT_COPY_FILES += \
#    device/asus/fugu/audio_policy.conf:system/etc/audio_policy.conf

# Hdmi CEC: Fugu works as a playback device (4).
#PRODUCT_PROPERTY_OVERRIDES += ro.hdmi.device_type=4

# Boot Animation
#PRODUCT_COPY_FILES += \
#    device/asus/fugu/bootanimation.zip:system/media/bootanimation.zip

# Bluetooth
#PRODUCT_PACKAGES += \
#    bt_bcm4354

#PRODUCT_COPY_FILES += \
#    device/asus/fugu/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

#Video
PRODUCT_COPY_FILES += \
    device/samsung/santos10wifi/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/santos10wifi/configs/wrs_omxil_components.list:system/etc/wrs_omxil_components.list \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/samsung/santos10wifi/configs/media_codecs.xml:system/etc/media_codecs.xml
#### ??? ####
#    device/asus/fugu/vp9_interpredict.binary:system/etc/vp9_interpredict.binary \
#    device/asus/fugu/video_isv_profile.xml:system/etc/video_isv_profile.xml

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

#### Add it later
#    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \

#### ??? ####
#    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
#    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
#    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
#    frameworks/native/data/etc/android.hardware.hdmi.cec.xml:system/etc/permissions/android.hardware.hdmi.cec.xml

# Key layout files
PRODUCT_COPY_FILES += \
    device/samsung/santos10wifi/prebuilts/sec_keyboard.idc:system/usr/idc/sec_keyboard.idc \
    \
    device/samsung/santos10wifi/prebuilts/sec_key.kl:system/usr/keylayout/sec_key.kl

# Thermal itux
#ENABLE_ITUXD := true
#PRODUCT_PACKAGES += \
#    ituxd

# Power HAL
PRODUCT_PACKAGES += \
    power.santos10wifi

#$(call inherit-product-if-exists, vendor/intel/PRIVATE/fugu/device-vendor.mk)
#$(call inherit-product-if-exists, vendor/intel/moorefield/prebuilts/houdini/houdini.mk)

# Add WiFi Firmware
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4354/device-bcm.mk)

# specific management of sep_policy.conf
#PRODUCT_COPY_FILES += \
#    device/asus/fugu/sep_policy.conf:system/etc/security/sep_policy.conf

PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product-if-exists, vendor/samsung/santos10wifi/device-vendor.mk)

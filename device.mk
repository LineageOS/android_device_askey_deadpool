#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    DeadpoolBluetoothOverlay \
    libbt-vendor

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    dhd

## Wi-Fi Firmware
include hardware/amlogic/kernel-modules/dhd-driver/firmware/firmware.mk

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/askey/deadpool/deadpool-vendor.mk)

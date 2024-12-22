#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    create_splloader_dual_slot_byname_path.sh \
    init.insmod.sh \

PRODUCT_PACKAGES += \
    fstab.cali \
    init.OT5.rc \
    init.OT5.usb.rc \
    init.YQ5.rc \
    init.YQ5.usb.rc \
    init.cali.rc \
    init.fih.ramdump.rc \
    init.fih.usb.configfs.rc \
    init.ram.gms.rc \
    init.ram.native.rc \
    init.ram.rc \
    init.sprd.target.rc \
    init.sprd.usb.rc \
    init.storage.rc \
    init.ums9157_2h10.rc \
    init.ums9157_2h10.usb.rc \
    init.ums9620_1h10.rc \
    init.ums9620_1h10.usb.rc \
    init.ums9620_2h10.rc \
    init.ums9620_2h10.usb.rc \
    init.ums9620_2h10_uob.rc \
    init.ums9620_2h10_uob.usb.rc \
    init.ums9620_2h10_uob_marlin3.rc \
    init.ums9620_2h10_uob_marlin3.usb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.cali:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.cali

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/fih/OT5/OT5-vendor.mk)

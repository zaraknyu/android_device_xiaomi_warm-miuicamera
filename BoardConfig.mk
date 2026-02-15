#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

MIUICAMERA_PATH := device/xiaomi/warm-miuicamera

# Inherit from the proprietary version
include vendor/xiaomi/warm-miuicamera/BoardConfigVendor.mk

# MiuiCamera
CAMERA_PACKAGE_NAME := com.android.camera

BUILD_BROKEN_DUP_RULES := true

$(call soong_config_set_bool,camera,override_format_from_reserved,$(TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED))

TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT = true
TARGET_INCLUDES_MIUI_CAMERA := true
TARGET_USES_MIUI_CAMERA := true

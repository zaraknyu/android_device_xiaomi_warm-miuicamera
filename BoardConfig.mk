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

SOONG_CONFIG_NAMESPACES += camera
SOONG_CONFIG_camera += override_format_from_reserved
SOONG_CONFIG_camera_override_format_from_reserved := true
TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT = true
TARGET_INCLUDES_MIUI_CAMERA := true
TARGET_USES_MIUI_CAMERA := true

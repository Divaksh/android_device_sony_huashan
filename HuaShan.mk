#
# Copyright (C) 2011 The CyanogenMod Project
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


DEVICE_PACKAGE_OVERLAYS += device/sony/HuaShan/overlay
PRODUCT_COPY_FILES += \
    device/sony/HuaShan/zImage:kernel


# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/bootrec-device:recovery/bootrec-device


$(call inherit-product-if-exists, vendor/sony/hayabusa/hayabusa-vendor.mk)

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

TARGET_BOOTLOADER_BOARD_NAME := duma
TARGET_BOOTLOADER_NAME := duma
TARGET_BOARD_INFO_FILE := device/asus/duma/board-info.txt

# Offline Charging
BOARD_CHARGING_MODE_BOOTING_LPM := "/sys/class/power_supply/battery/charging_enabled"
BOARD_CHARGING_MODE_BOOTING_LPM := "/sys/class/power_supply/battery/batt_lp_charging"
BOARD_CHARGER_ENABLE_SUSPEND := true
RED_LED_PATH := "/sys/class/leds/led:red/brightness"
RED_LED_PATH := "/sys/class/leds/red/brightness"
BACKLIGHT_PATH := "/sys/class/leds/lcd-backlight/brightness"
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/charging_enabled"

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

TARGET_RECOVERY_FSTAB = $(DEVICE_PATH)/rootdir/etc/fstab.duma

# Include other device-specific configuration
include device/asus/duma/BoardConfigCommon.mk

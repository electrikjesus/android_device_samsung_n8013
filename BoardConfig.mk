#
# Copyright (C) 2012 The CyanogenMod Project
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

# Include n80xx BoardConfigCommon
-include device/samsung/n80xx-common/BoardConfigCommon.mk

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_n8013_defconfig
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive

# assert
TARGET_OTA_ASSERT_DEVICE := c0,p4notewifi,p4notewifiww,n8013,GT-N8013,n8010,GT-N8010

#Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n8013/bluetooth

# BlissPop Configs
BLISS_WIPE_CACHES := 1
TARGET_TC_ROM := 4.8
TARGET_TC_KERNEL := 4.8
BLISSIFY := true
BLISS_O3 := true
BLISS_STRICT := false
BLISS_GRAPHITE := true
BLISS_KRAIT := false
BLISS_PIPE := true
FLOOP_NEST_OPTIMIZE := true
ENABLE_GCCONLY := true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
#SaberMod
-include vendor/bliss/config/sm.mk

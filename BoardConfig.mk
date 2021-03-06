# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common hlte
-include device/samsung/hlte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := hltexx,hlte,SM-N9005,hlteskt,hltektt,SM-N900S,SM-N900K,hltecan,SM-N900W8,hltetmo,SM-N900T,hlteatt,SM-N900A

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8974
TARGET_LIBINIT_DEFINES_FILE := device/samsung/hlte/init/init_hlte.cpp
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# inherit from the proprietary version
-include vendor/samsung/hlte/BoardConfigVendor.mk

# BlissPop Configs
TARGET_TC_ROM := 4.9-linaro
TARGET_TC_KERNEL := 4.8
BLISSIFY := true
BLISS_O3 := false
BLISS_STRICT := false
BLISS_GRAPHITE := false
BLISS_KRAIT := true
BLISS_PIPE := true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)

#SaberMod
-include vendor/bliss/config/sm.mk

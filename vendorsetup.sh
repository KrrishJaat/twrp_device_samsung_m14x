#
#        This file is part of the OrangeFox Recovery Project
#        Copyright (C) 2020-2026 The OrangeFox Recovery Project
#

FDEVICE="m14x"

fox_get_target_device() {
    if echo "$BASH_SOURCE" | grep -q "/$FDEVICE/"; then
        FOX_BUILD_DEVICE="$FDEVICE"
    elif set | grep BASH_ARGV | grep -w "\"$FDEVICE\""; then
        FOX_BUILD_DEVICE="$FDEVICE"
    elif echo "${BASH_SOURCE[0]}" | grep -q "/$FDEVICE/"; then
        FOX_BUILD_DEVICE="$FDEVICE"
    elif echo "$0" | grep -q "$FDEVICE"; then
        FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

if [ -z "$1" ] && [ -z "$FOX_BUILD_DEVICE" ]; then
    fox_get_target_device
fi

if [ "$1" = "$FDEVICE" ] || [ "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

export TARGET_ARCH="arm64"

export OF_MAINTAINER="KrrishJaat"
export FOX_BUILD_TYPE=Unofficial
export FOX_MAINTAINER_PATCH_VERSION=8
export FOX_VANILLA_BUILD=1

export LC_ALL="C"
export ALLOW_MISSING_DEPENDENCIES=true
export TW_DEFAULT_LANGUAGE="en"

export FOX_ENABLE_APP_MANAGER=1
export FOX_DELETE_AROMAFM=1

export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_USE_BUSYBOX_BINARY=1
export FOX_USE_DATE_BINARY=1
export FOX_USE_NANO_EDITOR=1
export FOX_REPLACE_TOOLBOX_GETPROP=1

export FOX_USE_UPDATED_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_USE_LZ4_COMPRESSION=1

export FOX_RECOVERY_SYSTEM_PARTITION="/system"
export FOX_RECOVERY_VENDOR_PARTITION="/vendor"

export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1
export FOX_ALLOW_EARLY_SETTINGS_LOAD=1

export OF_DEFAULT_KEYMASTER_VERSION="4.1"

export OF_DEVICE_WITHOUT_PERSIST=1

export OF_SCREEN_H=2408
export OF_STATUS_H=109
export OF_STATUS_INDENT_LEFT=64
export OF_STATUS_INDENT_RIGHT=64
export OF_CLOCK_POS=1
export OF_ALLOW_DISABLE_NAVBAR=0

export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_ENABLE_FRP_ADDON=1

export OF_FLASHLIGHT_ENABLE=1
export OF_FL_PATH1="/sys/class/camera/flash/rear_flash"
export OF_USE_GREEN_LED=0

export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_UNBIND_SDCARD_F2FS=1

fi
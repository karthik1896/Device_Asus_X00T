#!/sbin/sh
#
# Copyright (C) 2018 The LineageOS Project
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
# Check if device supports NFC
if grep -q -w NFC /dev/block/platform/soc/c0c4000.sdhci/by-name/version; then
    echo "Device supports NFC"
else
    echo "Device doesn't support NFC , removing ..."
    # Remove NFC
    rm -rf /system/system/app/*Nfc*
    rm -rf /system/system/etc/permissions/*nfc*
    rm -rf /system/system/framework/*nfc*
    rm -rf /system/system/lib/*nfc*
    rm -rf /system/system/lib64/*nfc*
    rm -rf /system/system/priv-app/Tag
    rm -rf /system/vendor/app/SmartcardService
    rm -rf /system/vendor/bin/*nfc*
    rm -rf /system/vendor/bin/hw/*nfc*
    rm -rf /system/vendor/etc/*nfc*
    rm -rf /system/vendor/etc/init/*nfc*
    rm -rf /system/vendor/etc/permissions/*nfc*
    rm -rf /system/vendor/lib/libpn553_fw.so
    rm -rf /system/vendor/lib/*nfc*
    rm -rf /system/vendor/lib/hw/*nfc*
    rm -rf /system/vendor/lib64/*nfc*
    rm -rf /system/vendor/lib64/hw/*nfc*
    rm -rf /system/vendor/bin/hw/android.hardware.nfc@1.2-service
fi
rm /system/vendor/bin/device_check.sh

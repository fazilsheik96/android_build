#
# Copyright (C) 2017 The Android Open Source Project
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

# Inherit common Android Go defaults.
$(call inherit-product, build/make/target/product/go_defaults_common.mk)

# Product config map to toggle between sources and prebuilts of required mainline modules
PRODUCT_RELEASE_CONFIG_MAPS += $(wildcard build/release/gms_mainline_go/required/release_config_map.textproto)
PRODUCT_RELEASE_CONFIG_MAPS += $(wildcard vendor/google_shared/build/release/gms_mainline_go/required/release_config_map.textproto)

# TODO (b/342265627): Remove v/g/r once all the flags have been moved to v/g_s/b/r
PRODUCT_RELEASE_CONFIG_MAPS += $(wildcard vendor/google/release/go_devices/release_config_map.mk)

# Add the system properties.
TARGET_SYSTEM_PROP += \
    build/make/target/board/go_defaults.prop

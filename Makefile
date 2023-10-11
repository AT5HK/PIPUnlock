# export THEOS_DEVICE_IP=10.0.0.171 THEOS_DEVICE_PORT=22
export THEOS_DEVICE_IP=127.0.0.1 
export THEOS_DEVICE_PORT=2222

export ARCHS = arm64 #armv7 arm64e
export TARGET := iphone:clang:16.4:7.0

THEOS_PACKAGE_SCHEME = rootless

INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PGPUnlock

PGPUnlock_FRAMEWORKS = UIKit
PGPUnlock_PRIVATE_FRAMEWORKS = UIKitCore

PGPUnlock_FILES = Tweak.xm
PGPUnlock_CFLAGS = -fobjc-arc
PGPUnlock_LDFLAGS = -v

include $(THEOS_MAKE_PATH)/tweak.mk

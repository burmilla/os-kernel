#!/bin/bash
export FIRMWARE_TAG=20230310
export KERNEL_TAG=5.10.176
export OVERRIDE_KERNEL_ARCH=x86
export KERNEL_ARCH=x86
export OS_REPO=burmilla
export KERNEL_VERSION=5.10.176
export KERNEL_URL=https://cdn.kernel.org/pub/linux/kernel/v5.x/
export KERNEL_TAR=linux-$KERNEL_TAG.tar.xz
export KERNEL_SIGN=linux-$KERNEL_TAG.tar.sign

make release


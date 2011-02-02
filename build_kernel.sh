#!/bin/bash

DATE=$(date +%m%d_%H%M)
DEVICE="GalaxyTab"
TOOLCHAIN="../arm-2009q3/bin/arm-none-linux-gnueabi-"

make mrproper
make clean

make ARCH=arm jt1134_galaxytab_defconfig
make -j8 CROSS_COMPILE="$TOOLCHAIN" \
	ARCH=arm

mv arch/arm/boot/zImage ../kernel/tab-kernels/t3hh4xx0r_"$DEVICE"_Honeycomb_"$DATE"_zImage

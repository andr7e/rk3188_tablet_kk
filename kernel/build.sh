#!/bin/bash
export PATH=$HOME/kernel_build/arm-eabi-4.6/bin/:$PATH
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=$HOME/kernel_build/arm-eabi-4.6/bin/arm-eabi-
export LOCALVERSION=+

#make rk3188_ds1006h_v1_1_android-4.4_defconfig

make rk3188_pmp5785_android-4.4_defconfig

make -j2 zImage

./mkkrnlimg ./arch/arm/boot/zImage kernel.img

zip -r out ./kernel.img
mv ./out.zip ../kernel3.0.36+KK.zip


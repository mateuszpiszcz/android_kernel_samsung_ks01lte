#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/onja/kernel/kyasu/arm-eabi-4.7/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8974_sec_ks01eur_defconfig msm8974_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

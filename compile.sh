#!/bin/bash
export KBUILD_BUILD_USER=Zeus_VIRGIN
export KBUILD_BUILD_HOST=Izwahyudhi@github
# Compile plox
function compile() {
    make -j$(nproc) O=out ARCH=arm64 lavender-perf_defconfig cc=clang-10
    make -j$(nproc) O=out ARCH=arm64  cc=clang-10 \
                               CROSS_COMPILE=aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=arm-linux-gnueabi-
}
compile

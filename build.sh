#!/bin/bash

export KERNELNAME=Zeus

export LOCALVERSION=

export KBUILD_BUILD_USER=Izwahyudhi

export KBUILD_BUILD_HOST=izwahyudhi@github

export TOOLCHAIN=gcc

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Start building ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam

        build ${i} -newcam

done

END=$(date +"%s")
 
DIFF=$(( END - START ))

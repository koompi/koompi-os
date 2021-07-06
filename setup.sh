#!/bin/sh
CWD=$(pwd)
PROFILE=$CWD/iso
WORKDIR=koompi-os

[[ -d $WORKDIR ]] && sudo rm -rf $WORKDIR && mkdir -p $WORKDIR

sudo ${CWD}/iso/mkarchiso -v -w $WORKDIR $PROFILE

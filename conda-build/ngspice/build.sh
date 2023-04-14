#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@unal.edu.co
# date: Friday 14 April 2023
status=$?


./configure --with-x --enable-xspice --enable-cider --with-readline=yes --enable-openmp --disable-debug CFLAGS="-m64 -O2" LDFLAGS="-m64 -s"
make -j$(nproc)

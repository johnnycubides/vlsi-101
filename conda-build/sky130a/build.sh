#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@unal.edu.co
# date: 2023-12-05

status=$?

./configure --prefix=$CONDA_PREFIX --enable-sky130-pdk --enable-sram-sky130
make -j$(nproc)
make install
make veryclean

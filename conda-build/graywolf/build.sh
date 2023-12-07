#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@unal.edu.co
# date: Friday 14 April 2023
status=$?


# git clone https://github.com/RTimothyEdwards/netgen
# cd netgen/
mkdir build
cd build
cmake ..
# --prefix=$CONDA_PREFIX
make -j$(nproc)
make install

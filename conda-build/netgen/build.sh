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
./configure --prefix=$CONDA_PREFIX --with-tcl=$CONDA_PREFIX --with-tk=$CONDA_PREFIX
make -j$(nproc)
make install

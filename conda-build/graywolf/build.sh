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
cmake -DCMAKE_C_FLAGS=-fcommon -DCMAKE_INSTALL_PREFIX:PATH=$CONDA_PREFIX ..
# --prefix=$CONDA_PREFIX
make -j$(nproc)
make install


# https://molcasforum.univie.ac.at/viewtopic.php?id=714
# I am trying to compile Luscus 0.8.6 from source in Arch Linux.
# My CMake version is 3.19.3, and I am using GNU GCC compilers 10.2.0. I installed all of the required libraries through the pacman package manager.

# Found the solution.

# The default "-fcommon" flag changed to "-fno-common" in GCC 10.
# This problem is fixed by adding -DCMAKE_C_FLAGS=-fcommon when running cmake.

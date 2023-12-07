#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@unal.edu.co
# date: Friday 14 April 2023
status=$?

wget https://github.com/rubund/graywolf/archive/refs/tags/0.1.6.tar.gz
tar xvf 0.1.6.tar.gz
# ./configure --prefix=$CONDA_PREFIX --with-graywolf=$CONDA_PREFIX/graywolf-0.1.6
./configure --prefix=$CONDA_PREFIX
make -j$(nproc)
# Valor de variable fue cambiada por falla reportada en /usr/bin/ld
# make LD_RUN_PATH=" -Wl,-rpath,/usr/lib/x86_64-linux-gnu"
make install

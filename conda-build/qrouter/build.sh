#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@unal.edu.co
# date: Friday 14 April 2023
status=$?


./configure --prefix=$CONDA_PREFIX
# make -j$(nproc)
# Valor de variable fue cambiada por falla reportada en /usr/bin/ld
# WISH_EXE genera un error y es sobrescrito para ser detectado desde el conda
make LD_RUN_PATH=" -Wl,-rpath,/usr/lib/x86_64-linux-gnu" WISH_EXE=wish 
make install

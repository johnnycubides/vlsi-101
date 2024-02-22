#!/bin/bash -x
status=$?

mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX
make -j$(nproc)
make install

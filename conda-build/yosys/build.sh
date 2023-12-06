#!/bin/bash -x
status=$?

make config-gcc
make -j$(nproc)
make install

#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@gmail.com
# date: 2025-02-10
status=$?

git clone https://github.com/johnnycubides/netlistsvg.git netlistsvg
cd netlistsvg
npm install --legacy-peer-deps
npm run build-module
mkdir netlistsvg
# Copiando las dependencias
cp -var bin built demo doc examples lib LICENSE node_modules netlistsvg
mkdir -p $PREFIX/lib/node_modules
# Guardando archivos e la librería
cp -var ./netlistsvg $PREFIX/lib/node_modules/
ln -sr $PREFIX/lib/node_modules/netlistsvg/bin/netlistsvg.js $PREFIX/bin/netlistsvg

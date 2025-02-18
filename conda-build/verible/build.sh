#!/bin/bash -x
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	brief
# Author: Johnny Cubides
# e-mail: jgcubidesc@gmail.com
# date: 2025-02-10
status=$?

BIN=$PREFIX/bin/

APPS=verible-verilog
DIFF=$APPS-diff
FORMAT=$APPS-format
KYTHE=$APPS-kythe-extractor
LINT=$APPS-lint
LS=$APPS-ls
OBFUSCATE=$APPS-obfuscate
PRE=$APPS-preprocessor
PRJ=$APPS-project
SYNTAX=$APPS-syntax

VERSION=v0.0-3946-g851d3ff4
DOWNLOAD=https://github.com/chipsalliance/verible/releases/download/$VERSION/verible-$VERSION-linux-static-x86_64.tar.gz

install() {
  wget -O verible.tar.gz $DOWNLOAD
  tar xvf verible.tar.gz
  rm -rf verible.tar.gz
  mv verible-$VERSION verible
  pwd
  cd verible/bin
  mkdir -p $BIN
  echo "copiando a Bin"
  cp -var ./$DIFF $BIN
  cp -var ./$FORMAT $BIN
  cp -var ./$LINT $BIN
  cp -var ./$LS $BIN
  cp -var ./$OBFUSCATE $BIN
  cp -var ./$PRE $BIN
  cp -var ./$PRJ $BIN
  cp -var ./$SYNTAX $BIN
  sync
  cd ../../
  rm -rf verible
}

install

# git clone https://github.com/johnnycubides/netlistsvg.git netlistsvg
# cd netlistsvg
# npm install --legacy-peer-deps
# npm run build-module
# mkdir netlistsvg
# # Copiando las dependencias
# cp -var bin built demo doc examples lib LICENSE node_modules netlistsvg
# mkdir -p $PREFIX/lib/node_modules
# # Guardando archivos e la librería
# cp -var ./netlistsvg $PREFIX/lib/node_modules/
# ln -sr $PREFIX/lib/node_modules/netlistsvg/bin/netlistsvg.js $PREFIX/bin/netlistsvg

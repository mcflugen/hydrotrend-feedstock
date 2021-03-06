#! /bin/bash

mkdir _build && cd _build

cmake  ..                                    \
       -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX   \
       -DCMAKE_PREFIX_PATH:PATH=$PREFIX      \
       -DCMAKE_C_COMPILER=$CC                \
       -DCMAKE_BUILD_TYPE=Release            \
       -DDCMAKE_INCLUDE_PATH=$PREFIX/include \
       -DCMAKE_LIBRARY_PATH=$PREFIX/lib

make -j$CPU_COUNT all
make -j$CPU_COUNT install

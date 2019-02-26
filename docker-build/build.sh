#!/usr/bin/env bash


echo hello

cmake -DCMAKE_VERBOSE_MAKEFILE=On -DCMAKE_USER_C_FLAGS="-m32" -DARTEMIS_CROSS_COMPILE=On -DARTEMIS_CROSS_COMPILE_ROOT_PATH=/usr/lib .
make
rm -rf CMakeCache.txt cmake_install.cmake
cmake -DCMAKE_VERBOSE_MAKEFILE=On -DCMAKE_USER_C_FLAGS="" -DARTEMIS_CROSS_COMPILE=Off -DARTEMIS_CROSS_COMPILE_ROOT_PATH=/usr/lib .
make
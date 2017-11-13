#!/bin/bash

NTHREADS=`nproc --all`

echo "Building project with $NTHREADS threads..."

make -j$NTHREADS

if [ ! -d bin ]; then
	mkdir bin
fi

cp -vf src/dashd bin
cp -vf src/dash-cli bin
cp -vf src/dash-tx bin
cp -vf src/qt/dash-qt bin

strip bin/dashd
strip bin/dash-cli
strip bin/dash-tx
strip bin/qt/dash-qt

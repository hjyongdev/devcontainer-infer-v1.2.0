#!/bin/bash

cd infer
sed -i 's/(libraries atdgen core)/(libraries atdgen-runtime core)/' infer/src/atd/dune
./build-infer.sh --no-opam-lock clang
make install

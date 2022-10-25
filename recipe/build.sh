#!/usr/bin/env bash
set -eux
export CLANG_BIN=$BUILD_PREFIX/bin/clang

$CLANG_BIN --version
# build and install the wheel to avoid issues on MacOS
python setup.py bdist_wheel --dist-dir=dist
python -m pip install --find-links=dist --no-deps --ignore-installed --no-cache-dir -vvv {{ name }}"

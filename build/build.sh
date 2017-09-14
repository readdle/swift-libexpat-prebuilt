#!/bin/bash

pushd "$(realpath $(dirname $0))"
    mkdir -p ../libs
    mkdir -p ../include

    rm -rf expat
    git clone https://android.googlesource.com/platform/external/expat

    NDK_LIBS_OUT="../libs" ndk-build "$@"

    cp expat/*.h ../include
    cp expat/lib/*.h ../include

    rm -rf obj
    rm -rf expat
popd

#!/bin/bash
rp="/home/sjsujinkim/works/dotnet/BUILD-ROOTS/scratch.armv7l.0"
rd=$rp"/"
sudo ROOTFS_DIR=$rd \
  CPLUS_INCLUDE_PATH="$rp/usr/lib/gcc/armv7l-tizen-linux-gnueabi/4.9.2/include/c++/:$rp/usr/lib/gcc/armv7l-tizen-linux-gnueabi/4.9.2/include/c++/armv7l-tizen-linux-gnueabi/:$rp/usr/include/llvm/:$rp/usr/include/llvm-c/:$rp/usr/local/include:$rp/usr/include" \
  CXXFLAGS="-Wno-deprecated-declarations -D__extern_always_inline=inline" \
  LD_LIBRARY_PATH="$rp/usr/lib/" \
  ./build.sh arm-softfp cross release clang3.6 $1 $2 $3 $4  # arm | arm-softfp

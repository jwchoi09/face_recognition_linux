#!/bin/bash

# Specifying the OpenCV version
cv_v="master"

cwd=$(pwd)/opencv

cd $cwd

mkdir build
cd build

workon OpenCV-"$cv_v"
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
-D WITH_GSTREAMER=ON \
-D WITH_LIBV4L=ON \
-D WITH_V4L=ON \
-D WITH_TBB=ON \
-D WITH_IPP=OFF \
-D WITH_1394=OFF \
-D BUILD_WITH_DEBUG_INFO=OFF \
-D BUILD_DOCS=OFF \
-D INSTALL_C_EXAMPLES=ON \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D WITH_QT=ON \
-D WITH_GTK=OFF \
-D WITH_OPENGL=ON \
-D OPENCV_ENABLE_NONFREE=ON \
-D WITH_XINE=ON \
-D CMAKE_SHARED_LINKER_FLAGS=-latomic \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D ENABLE_CXX11=ON \
-D ENABLE_NEON=ON \
-D ENABLE_VFPV3=ON \
-D OPENCV_SKIP_PYTHON_LOADER=ON \
-D BUILD_TESTS=OFF \
-D BUILD_EXAMPLES=OFF \
-D PYTHON_DEFAULT_EXECUTABLE=/usr/bin/python3 \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D BUILD_PERF_TESTS=OFF \
..
# -D OPENCV_PYTHON3_INSTALL_PATH=/home/pi/.virtualenvs/OpenCV-master/lib/python3.7/site-packages \
# https://github.com/opencv/opencv/pull/13254
# https://github.com/opencv/opencv/issues/13202
make -j$(nproc)
 






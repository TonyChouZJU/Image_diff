CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

PROJECT(IMG_DIFF)

set(CMAKE_BUILD_TYPE Debug)

FIND_PACKAGE(OpenCV REQUIRED)
LINK_LIBRARIES(${OpenCV_LIBS})

ADD_EXECUTABLE(img_diff img_diff_demo.cpp imdiff.hpp)
TARGET_LINK_LIBRARIES(img_diff ${OpenCV_LIBS})

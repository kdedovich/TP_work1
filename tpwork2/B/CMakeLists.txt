cmake_minimum_required(VERSION 2.8)
project(Lib)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
set(SOURCE_LIB lib.cpp)
add_library(Lib STATIC ${SOURCE_LIB})

cmake_minimum_required(VERSION 2.8)
project(tpwork2)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/A)

set(SOURCE_EXE C/main.cpp)
include_directories(.)
add_subdirectory(B)
add_executable(main ${SOURCE_EXE})

target_link_libraries(main Lib)

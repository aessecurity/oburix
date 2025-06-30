cmake_minimum_required(VERSION 3.0)
project(oburix_runtime C)

set(CMAKE_C_COMPILER clang)

set(CMAKE_C_STANDARD 99)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -g -Wall -target bpf")

include_directories(${CMAKE_SOURCE_DIR}/include)

file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*.c)

add_executable(bpf_program ${SOURCES})

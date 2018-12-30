cmake_minimum_required(VERSION 3.10)
project(lib_shared VERSION 1.1.1)

set(PRODUCTNAME "Shared library example")
set(DESCRIPTION "Shared library")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

include("${CMAKE_SOURCE_DIR}/cmake/libs.cmake")

target_compile_definitions(${PROJECT_NAME} PRIVATE -DLIB_SHARED_LIBRARY)

find_package(Qt5Core)
target_link_libraries(${PROJECT_NAME} Qt5::Core)










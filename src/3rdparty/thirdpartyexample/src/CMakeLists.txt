cmake_minimum_required(VERSION 3.10)
project(thirdpartyexample VERSION 1.1.1)

set(PRODUCTNAME "Third Party example")
set(DESCRIPTION "Third Party")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

include("${CMAKE_SOURCE_DIR}/cmake/libs.cmake")

target_compile_definitions(${PROJECT_NAME} PRIVATE -DTHIRDPARTYEXAMPLE_LIBRARY)

find_package(Qt5Core)
target_link_libraries(${PROJECT_NAME} Qt5::Core)

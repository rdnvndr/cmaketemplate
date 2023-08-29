cmake_minimum_required(VERSION 3.10)
project(app_example VERSION 1.1.1)

set(PRODUCTNAME "App Example")
set(DESCRIPTION "Main program")
set(COMPANY     "Company")
set(COPYRIGHT   "Copyright (C) Company")
set(LIBRARIES
    lib_shared
    lib_static
)

include("${CMAKE_SOURCE_DIR}/cmake/app.cmake")

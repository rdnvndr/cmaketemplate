cmake_minimum_required(VERSION 3.10)
project(app_example VERSION 1.1.1)

set(PRODUCTNAME "App Example")
set(DESCRIPTION "Main program")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")
set(LIBRARIES
    lib_shared
    lib_static
    thirdpartyexample
)

include(../app.cmake)

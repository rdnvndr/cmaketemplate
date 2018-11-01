cmake_minimum_required(VERSION 3.10)
project(app_example VERSION 1.1.1)

set(PRODUCTNAME "App Example")
set(DESCRIPTION "Main program")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

include(../app.cmake)

target_link_libraries(${PROJECT_NAME} lib_shared)
target_link_libraries(${PROJECT_NAME} lib_static)

target_link_libraries(${PROJECT_NAME} thirdpartyexample)










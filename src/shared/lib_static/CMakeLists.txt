cmake_minimum_required(VERSION 3.10)
project(lib_static VERSION 1.1.1)

set(PRODUCTNAME "Static library example")
set(DESCRIPTION "Static library")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

file(GLOB HEADERS   "*.h")
file(GLOB SOURCES   "*.cpp")
file(GLOB FORMS     "*.ui")
file(GLOB RESOURCES "*.qrc")

add_library(${PROJECT_NAME} SHARED ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

include(../shared.cmake)








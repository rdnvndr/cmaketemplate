cmake_minimum_required(VERSION 3.10)
project(lib_shared VERSION 1.1.1)

set(PRODUCTNAME "Shared library example")
set(DESCRIPTION "Shared library")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

file(GLOB HEADERS   "*.h")
file(GLOB SOURCES   "*.cpp")
file(GLOB FORMS     "*.ui")
file(GLOB RESOURCES "*.qrc")

add_library(${PROJECT_NAME} SHARED ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

include(../libs.cmake)








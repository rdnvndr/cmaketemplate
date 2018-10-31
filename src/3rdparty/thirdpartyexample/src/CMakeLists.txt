cmake_minimum_required(VERSION 3.10)
project(thirdpartyexample VERSION 1.1.1)

set(PRODUCTNAME "Third Party example")
set(DESCRIPTION "Third Party")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

file(GLOB HEADERS   "*.h")
file(GLOB SOURCES   "*.cpp")
file(GLOB FORMS     "*.ui")
file(GLOB RESOURCES "*.qrc")

add_library(${PROJECT_NAME} SHARED ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

include(../../3rdparty.cmake)








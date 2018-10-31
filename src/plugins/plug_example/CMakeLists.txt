cmake_minimum_required(VERSION 3.10)
project(plug_example VERSION 1.1.1)

set(PRODUCTNAME "Plugin example")
set(DESCRIPTION "Plugin")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

file(GLOB HEADERS   "*.h")
file(GLOB SOURCES   "*.cpp")
file(GLOB FORMS     "*.ui")
file(GLOB RESOURCES "*.qrc")

add_library(${PROJECT_NAME} MODULE ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

include(../plugins.cmake)








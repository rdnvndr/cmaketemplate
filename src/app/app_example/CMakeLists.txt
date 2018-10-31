cmake_minimum_required(VERSION 3.10)
project(app_example VERSION 1.1.1)

set(PRODUCTNAME "App Example")
set(DESCRIPTION "Main program")
set(COMPANY     "RTPTechGroup")
set(COPYRIGHT   "Copyright (C) RTPTechGroup")

file(GLOB HEADERS   "*.h")
file(GLOB SOURCES   "*.cpp")
file(GLOB FORMS     "*.ui")
file(GLOB RESOURCES "*.qrc")

add_executable(${PROJECT_NAME} ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

target_link_libraries(${PROJECT_NAME} lib_shared)
target_link_libraries(${PROJECT_NAME} lib_static)

target_link_libraries(${PROJECT_NAME} thirdpartyexample)

include(../app.cmake)








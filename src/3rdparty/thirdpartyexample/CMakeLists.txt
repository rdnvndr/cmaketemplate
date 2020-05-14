cmake_minimum_required(VERSION 3.10)
project(thirdpartyexample VERSION 1.1.1)

add_subdirectory(src)

if ( ${CMAKE_TESTING_ENABLED} )
    add_subdirectory(tests)
endif()

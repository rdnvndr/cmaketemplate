cmake_minimum_required(VERSION 3.10)
project(cmaketemplate VERSION 1.0.0)

add_subdirectory(src)
add_subdirectory(doc)

# To build with tests, you must use:
# - CMAKE:     mkdir bin;  cd bin;  cmake -DCMAKE_TESTING_ENABLED=1 .. ;  make
# - QTCREATOR: Call commands Tools/Options, add CMAKE_TESTING_ENABLED:STRING=ON
#              to cmake configuration of kits
if ( ${CMAKE_TESTING_ENABLED} )
    add_subdirectory(tests)
endif()

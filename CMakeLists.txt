cmake_minimum_required(VERSION 3.10)
project(cmaketemplate VERSION 1.1.1)

add_subdirectory(src)
add_subdirectory(doc)

enable_testing()
add_subdirectory(tests)

include(../../../main.cmake)

set(BINARY_DIR "${CMAKE_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${BINARY_DIR}/lib/cmake_project")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${BINARY_DIR}/lib/cmake_project")

add_executable(${PROJECT_NAME} ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})



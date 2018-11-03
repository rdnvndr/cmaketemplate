include("${CMAKE_SOURCE_DIR}/cmake/main.cmake")

# Места нахождения бинарных файлов
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BINARY_DIR}/${TESTPATH}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${BINARY_DIR}/${TESTPATH}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${BINARY_DIR}/${TESTPATH}")

# Сборка проекта
add_executable(${PROJECT_NAME} ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

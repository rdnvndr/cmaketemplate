include("${CMAKE_SOURCE_DIR}/cmake/main.cmake")

# Места нахождения бинарных файлов
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BINARY_DIR}/${APPPATH}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${BINARY_DIR}/${RLIBRARYPATH}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${BINARY_DIR}/${RLIBRARYPATH}")

# Сборка проекта
include("${CMAKE_SOURCE_DIR}/cmake/rpath.cmake")
add_executable(${PROJECT_NAME} ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})
target_link_libraries(${PROJECT_NAME} ${LIBRARIES})

# Установка проекта
install (TARGETS ${PROJECT_NAME} DESTINATION ${APPPATH})

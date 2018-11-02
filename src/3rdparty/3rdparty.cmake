include("${CMAKE_SOURCE_DIR}/cmake/main.cmake")

# Пути к бинарным файлам
set(INCPATH "include/${PROJECT_NAME}")
set(DOCPATH "share/doc/${PROJECT_NAME}")
if (UNIX)
    set(RLIBRARYPATH     "lib/${PROJECT_NAME}")
    set(RLIBRARYTESTPATH "lib/${PROJECT_NAME}")
endif (UNIX)
if (WIN32)
    set(RLIBRARYPATH     "./")
    set(RLIBRARYTESTPATH "./")
endif (WIN32)

# Места нахождения бинарных файлов
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BINARY_DIR}/${APPPATH}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${BINARY_DIR}/${RLIBRARYPATH}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${BINARY_DIR}/${RLIBRARYPATH}")

# Сборка проекта
add_library(${PROJECT_NAME} SHARED ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})
target_include_directories(${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/../include
)

# Установка проекта
install (TARGETS ${PROJECT_NAME} DESTINATION ${RLIBRARYPATH})
file(GLOB PUBHEADERS   "../include/${PROJECT_NAME}/*.h")
foreach(PUBFILENAME ${PUBHEADERS})
    string(REPLACE "../include/${PROJECT_NAME}/" "" FILENAME ${PUBFILENAME})
    install(FILES ${FILENAME} DESTINATION ${INCPATH})
endforeach()

include(../../../../main.cmake)

add_library(${PROJECT_NAME} SHARED ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

target_include_directories(${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/../include
)



include(../../../main.cmake)

add_library(${PROJECT_NAME} MODULE ${HEADERS} ${SOURCES} ${FORMS} ${RESOURCES})

target_include_directories(${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)

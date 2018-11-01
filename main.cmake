add_definitions(-DAPP_NAME="""${PROJECT_NAME}"""
                -DAPP_PRODUCT="""${PRODUCTNAME}"""
                -DAPP_VERSION="""${PROJECT_VERSION}"""
                -DAPP_DESCRIPTION="""${DESCRIPTION}"""
                -DAPP_COMPANY="""${COMPANY}"""
                -DAPP_COPYRIGHT="""${COPYRIGHT}""")

file(GLOB HEADERS   "*.h")
file(GLOB SOURCES   "*.cpp")
file(GLOB FORMS     "*.ui")
file(GLOB RESOURCES "*.qrc")

set(BINARY_DIR "${CMAKE_BINARY_DIR}")
set(APPPATH "${BINARY_DIR}/bin")
set(INCPATH "${BINARY_DIR}/include/app_example")
set(DOCPATH "${BINARY_DIR}/share/doc/app_example")
set(RPLUGINPATH "${BINARY_DIR}//lib/app_example/plugins")

if (UNIX)
    set(RLIBRARYPATH     "${BINARY_DIR}/lib/app_example")
    set(RLIBRARYTESTPATH "${BINARY_DIR}/../../lib/app_example")
endif (UNIX)

if (WIN32)
    set(RLIBRARYPATH     "${BINARY_DIR}")
    set(RLIBRARYTESTPATH "${BINARY_DIR}")
endif (WIN32)

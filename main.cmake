set(ROOT_PROJECT "app_example")

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
set(APPPATH "bin")
set(INCPATH "include/${ROOT_PROJECT}")
set(DOCPATH "share/doc/${ROOT_PROJECT}")
set(RPLUGINPATH "lib/${ROOT_PROJECT}/plugins")

if (UNIX)
    set(RLIBRARYPATH     "lib/${ROOT_PROJECT}")
    set(RLIBRARYTESTPATH "lib/${ROOT_PROJECT}")
endif (UNIX)

if (WIN32)
    set(RLIBRARYPATH     "./")
    set(RLIBRARYTESTPATH "./")
endif (WIN32)

include("${CMAKE_SOURCE_DIR}/cmake/git.cmake")

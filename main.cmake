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

if (UNIX)
    set(RLIBRARYPATH     "../lib/app_example")
    set(RLIBRARYTESTPATH "../../../lib/app_example")
endif (UNIX)

if (WIN32)
    set(RLIBRARYPATH     "")
    set(RLIBRARYTESTPATH "")
endif (WIN32)

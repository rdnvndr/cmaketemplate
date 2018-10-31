add_definitions(-DAPP_NAME="""${PROJECT_NAME}"""
                -DAPP_PRODUCT="""${PRODUCTNAME}"""
                -DAPP_VERSION="""${PROJECT_VERSION}"""
                -DAPP_DESCRIPTION="""${DESCRIPTION}"""
                -DAPP_COMPANY="""${COMPANY}"""
                -DAPP_COPYRIGHT="""${COPYRIGHT}""")

set(APPLICATIONPATH "bin")
set(INCLUDEPATH     "include/app_example/")
set(DOCPATH         "share/doc/app_example")
set(RPLUGINPATH     "../lib/app_example/plugins/")

if (UNIX)
    set(RLIBRARYPATH     "../lib/app_example")
    set(RLIBRARYTESTPATH "../../../lib/app_example")
endif (UNIX)

if (WIN32)
    set(RLIBRARYPATH     "")
    set(RLIBRARYTESTPATH "")
endif (WIN32)

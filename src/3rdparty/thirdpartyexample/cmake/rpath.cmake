# Использование RPATH при установке в не системную директорию 
#get_target_property(LIBS ${PROJECT_NAME} LINK_LIBRARIES)
foreach(LIB ${LIBRARIES})
    get_property(LIBTYPE TARGET ${LIB} PROPERTY TYPE)
    if (${LIBTYPE} STREQUAL "SHARED_LIBRARY")
        get_property(LIBDIR TARGET ${LIB} PROPERTY LIBRARY_OUTPUT_DIRECTORY)
        list(FIND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES "${LIBDIR}" isSystemDir)
        if("${isSystemDir}" STREQUAL "-1")
            file(RELATIVE_PATH RELPATH ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} ${LIBDIR})
            list(FIND RPATHLIST ${RELPATH} EXISTRPATH)
            if("${EXISTRPATH}" STREQUAL "-1")
                list(APPEND RPATHLIST ${RELPATH})
                if("${CMAKE_INSTALL_RPATH}" STREQUAL "")
                    set(CMAKE_INSTALL_RPATH "$ORIGIN/${RELPATH}")
                else()
                    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_RPATH}:$ORIGIN/${RELPATH}")
                endif()
            endif()
        endif()
    endif()
endforeach()

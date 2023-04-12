if(CMAKE_BUILD_SYSTEM_MODULE_SYSTEM_INCLUDED)
    return()
else()
    set(CMAKE_BUILD_SYSTEM_MODULE_SYSTEM_INCLUDED YES)
endif(CMAKE_BUILD_SYSTEM_MODULE_SYSTEM_INCLUDED)

function(declare_module MODULE_NAME MODULE_DESC)
    if((NOT DEFINED MODULE_NAME))
        return()
    endif()

    if(NOT DEFINED MODULE_DESC)
        set(MODULE_DESC "")
    endif()

    message("  CBS: Found ${MODULE_NAME} module")

    set(CBS_MODULE_${MODULE_NAME}_PATH ${CMAKE_CURRENT_LIST_DIR})
    # TODO: Check if module in CBS_PROJECT_SOURCE_DIR
    # TODO: Make lib target with source and header files
endfunction(declare_module)

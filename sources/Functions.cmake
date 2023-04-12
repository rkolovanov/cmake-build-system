if(CMAKE_BUILD_SYSTEM_FUNCTIONS_INCLUDED)
  return()
else()
  set(CMAKE_BUILD_SYSTEM_FUNCTIONS_INCLUDED YES)
endif(CMAKE_BUILD_SYSTEM_FUNCTIONS_INCLUDED)


function(set_if_defined CHECK_VAR VAR VALUE)
  if((NOT DEFINED CHECK_VAR) OR (NOT DEFINED VAR) OR (NOT DEFINED VALUE))
    message(SEND_ERROR "Not all required arguments of the 'set_if_defined' function have been passed.")
    return()
  endif()

  if(DEFINED ${CHECK_VAR})
    set(${VAR} ${VALUE} PARENT_SCOPE)
  endif()
endfunction(set_if_defined)

function(set_if_not_defined CHECK_VAR VAR VALUE)
  if((NOT DEFINED CHECK_VAR) OR (NOT DEFINED VAR) AND (NOT DEFINED VALUE))
    message(SEND_ERROR "Not all required arguments of the 'set_if_not_defined' function have been passed.")
    return()
  endif()

  if(NOT DEFINED ${CHECK_VAR})
    set(${VAR} ${VALUE} PARENT_SCOPE)
  endif()
endfunction(set_if_not_defined)

#function(find_modules SOURCES_PATH)
#  if((NOT DEFINED SOURCES_PATH))
#endfunction(find_modules)

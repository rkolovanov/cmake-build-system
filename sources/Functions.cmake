if(CMAKE_BUILD_SYSTEM_FUNCTIONS_INCLUDED)
  return()
else()
  set(CMAKE_BUILD_SYSTEM_FUNCTIONS_INCLUDED TRUE)
endif(CMAKE_BUILD_SYSTEM_FUNCTIONS_INCLUDED)


function(set_if_defined)
  if((DEFINED ARG0) AND (DEFINED ARG1) AND (DEFINED ARG2))
    if(DEFINED ${ARG0})
      set(${ARG1} "${ARG2}")
    endif()
  endif()
endfunction(set_if_defined)

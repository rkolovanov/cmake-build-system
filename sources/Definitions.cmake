if(CMAKE_BUILD_SYSTEM_DEFINITIONS_INCLUDED)
  return()
else()
  include(${CMAKE_BUILD_SYSTEM_DIR}/Functions.cmake)
  set(CMAKE_BUILD_SYSTEM_DEFINITIONS_INCLUDED YES)
endif(CMAKE_BUILD_SYSTEM_DEFINITIONS_INCLUDED)

# CMake Parameters
set(CMAKE_CXX_STANDARD_REQUIRED True)
set_if_not_defined(CMAKE_INSTALL_PREFIX CMAKE_INSTALL_PREFIX "/usr")

# Common Definitions
set_if_defined(PROJECT_DESCRIPTION CBS_WRAPPED_PROJECT_DESCRIPTION "(${PROJECT_DESCRIPTION})")
set(CBS_SYSTEM ${CMAKE_SYSTEM_NAME})
set(CBS_ARCHITECTURE ${CMAKE_SYSTEM_PROCESSOR})
set_if_not_defined(CMAKE_CXX_STANDARD CMAKE_CXX_STANDARD ${CMAKE_CXX_STANDARD_DEFAULT})

# Project Structure
set(CBS_PROJECT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/sources)

# Installing
set(CBS_DATA_INSTALL_PATH ${CMAKE_INSTALL_DATADIR})
set(CBS_INCLUDE_INSTALL_PATH ${CMAKE_INSTALL_INCLUDEDIR})
set(CBS_LIB_INSTALL_PATH ${CMAKE_INSTALL_LIBDIR})

# Packing
set(CBS_DEV_COMPONENT dev)
set(CBS_PACK_DEBUG NO)
set_if_not_defined(CBS_PACKAGE_ARCHITECTURE CBS_PACKAGE_ARCHITECTURE "${CBS_ARCHITECTURE}")

set(CBS_CMAKE_FILES_PATH ${CMAKE_INSTALL_DATADIR}/${CMAKE_PROJECT_NAME})
set(CBS_CMAKE_CONFIG_FILES_PATH ${CMAKE_INSTALL_DATADIR}/${CMAKE_PROJECT_NAME}/cmake)

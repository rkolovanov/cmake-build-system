# Standard CMake modules
include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

# CMakeBuildSystem directory
set(CMAKE_BUILD_SYSTEM_DIR ${CMAKE_CURRENT_LIST_DIR})

# CMakeBuildSystem modules
include(${CMAKE_BUILD_SYSTEM_DIR}/Definitions.cmake)
include(${CMAKE_BUILD_SYSTEM_DIR}/Functions.cmake)

# CMakeBuildSystem information
message("-- Using cmake-build-system")
message("   Project: ${PROJECT_NAME} ${PROJECT_VERSION} ${CBS_WRAPPED_PROJECT_DESCRIPTION}")
message("   Platform: ${CBS_SYSTEM} ${CBS_ARCHITECTURE}")
message("   C++ compiler: ${CMAKE_CXX_COMPILER} ${CMAKE_CXX_COMPILER_VERSION}")
message("   C++ standard: ${CMAKE_CXX_STANDARD}")
message("   Build type: ${CMAKE_BUILD_TYPE}")
message("   Package architecture: ${CBS_PACKAGE_ARCHITECTURE}")
message("   Includes install directory: ${CMAKE_INSTALL_PREFIX}/${CBS_INCLUDE_INSTALL_PATH}")
message("   Libraries install directory: ${CMAKE_INSTALL_PREFIX}/${CBS_LIB_INSTALL_PATH}")

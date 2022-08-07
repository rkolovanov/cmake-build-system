# Configuration
set(CMAKE_INSTALL_PREFIX "/usr")

# Standard modules
include(GNUInstallDirs)

# CMakeBuildSystem modules
include(${CMAKE_BUILD_SYSTEM_DIR}/Definitions.cmake)
include(${CMAKE_BUILD_SYSTEM_DIR}/Functions.cmake)

message("-- Using cmake-build-system")
message("   Build type: ${CMAKE_BUILD_TYPE}")
message("   Platform: ${CBS_SYSTEM} ${CBS_ARCHITECTURE}")
message("   Package architecture: ${CBS_PACKAGE_ARCHITECTURE}")
message("   Includes install directory: ${CMAKE_INSTALL_PREFIX}/${CBS_INCLUDE_INSTALL_PATH}")
message("   Libraries install directory: ${CMAKE_INSTALL_PREFIX}/${CBS_LIB_INSTALL_PATH}")

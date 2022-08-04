# Configuration
set(CMAKE_INSTALL_PREFIX "/usr")

# Standard modules
include(GNUInstallDirs)

# CMakeBuildSystem modules
include(${CMAKE_BUILD_SYSTEM_DIR}/Definitions.cmake)
include(${CMAKE_BUILD_SYSTEM_DIR}/Functions.cmake)
include(${CMAKE_BUILD_SYSTEM_DIR}/Pack.cmake)

message("Using CMakeBuildSystem version ${CMAKE_BUILD_SYSTEM_VERSION}")
message("Build type: ${CMAKE_BUILD_TYPE}")
message("Platform: ${CBS_SYSTEM} ${CBS_ARCHITECTURE}")

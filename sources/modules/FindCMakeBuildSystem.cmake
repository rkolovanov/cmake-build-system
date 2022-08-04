# Finds CMakeBuildSystem
# This will define the following variables:
#
#   CmakeBuildSystem_FOUND    - True if the system has the Foo library
#   CMakeBuildSystem_ROOTDIR  - Root directory
#

include(GNUInstallDirs)
find_path(CMakeBuildSystem_ROOTDIR
          build-system/CMakeBuildSystem.cmake
          /usr/share
          )

if(CMakeBuildSystem_ROOTDIR)
  include(${CMakeBuildSystem_ROOTDIR}/CMakeBuildSystem.cmake)
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CmakeBuildSystem
                                  REQUIRED_VARS CMakeBuildSystem_ROOTDIR
                                  FOUND_VAR CMakeBuildSystem_FOUND
                                  )

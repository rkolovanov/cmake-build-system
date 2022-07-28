# FindCmakeBuildSystem.cmake
#
# Finds the CmakeBuildSystem modules
#

# This will define the following variables:
#
#   CmakeBuildSystem_FOUND    - True if the system has the Foo library
#   CmakeBuildSystem_VERSION  - The version of the Foo library which was found
#

find_path(CmakeBuildSystem_ROOTDIR
        NAMES CmakeBuildSystem.cmake
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CmakeBuildSystem
        FOUND_VAR CmakeBuildSystem_FOUND
        VERSION_VAR CmakeBuildSystem_VERSION
        )

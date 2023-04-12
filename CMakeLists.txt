cmake_minimum_required(VERSION 3.16)
project(cmake-build-system
        VERSION 0.0.3
        DESCRIPTION "CMake Build system for C++ projects"
        HOMEPAGE_URL "https://github.com/rkolovanov/cmake-build-system")

set(CMAKE_BUILD_SYSTEM_DIR ${CMAKE_SOURCE_DIR}/sources)

include(${CMAKE_BUILD_SYSTEM_DIR}/CMakeBuildSystem.cmake)

install(FILES ${SOURCES} DESTINATION ${CBS_DATA_INSTALL_PATH}/cmake-build-system)
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/CMakeBuildSystem.cmake DESTINATION ${CBS_CMAKE_FILES_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/Definitions.cmake DESTINATION ${CBS_CMAKE_FILES_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/Functions.cmake DESTINATION ${CBS_CMAKE_FILES_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/ModuleSystem.cmake DESTINATION ${CBS_CMAKE_FILES_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/Pack.cmake DESTINATION ${CBS_CMAKE_FILES_PATH})

set(CPACK_DEBIAN_BUILDREQUIRES "cmake >= 3.16")
set(CPACK_RPM_BUILDREQUIRES "cmake >= 3.16")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "cmake (>= 3.16)")
set(CPACK_RPM_PACKAGE_DEPENDS "cmake (>= 3.16)")
set(CBS_PACKAGE_ARCHITECTURE noarch)

configure_package_config_file(templates/${PROJECT_NAME}-config.cmake.in
                              ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config.cmake
                              INSTALL_DESTINATION ${CBS_CMAKE_CONFIG_FILES_PATH}
                              PATH_VARS CBS_CMAKE_FILES_PATH)
write_basic_package_version_file(${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config-version.cmake
                                 VERSION ${PROJECT_VERSION}
                                 COMPATIBILITY SameMajorVersion)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config-version.cmake
        DESTINATION ${CBS_CMAKE_CONFIG_FILES_PATH})

include(${CMAKE_BUILD_SYSTEM_DIR}/Pack.cmake)

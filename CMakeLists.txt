cmake_minimum_required(VERSION 3.16)

project(cmake-build-system VERSION 0.0.1 DESCRIPTION "CMake Build system for C++ projects")

install(FILES ${SOURCES} DESTINATION ${CMAKE_INSTALL_FULL_DATADIR}/cmake-build-system)

set(CMAKE_BUILD_SYSTEM_DIR ${CMAKE_SOURCE_DIR}/sources)
set(CPACK_DEBIAN_BUILDREQUIRES "cmake >= 3.16")
set(CPACK_RPM_BUILDREQUIRES "cmake >= 3.16")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "cmake (>= 3.16)")
set(CPACK_RPM_PACKAGE_DEPENDS "cmake (>= 3.16)")

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set(CMAKE_BUILD_SYSTEM_INSTALL_PATH ${CMAKE_INSTALL_DATADIR}/${CMAKE_PROJECT_NAME})
set(CMAKE_BUILD_SYSTEM_CONFIG_INSTALL_PATH ${CMAKE_BUILD_SYSTEM_INSTALL_PATH}/cmake)

install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/CMakeBuildSystem.cmake DESTINATION ${CMAKE_BUILD_SYSTEM_INSTALL_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/Definitions.cmake DESTINATION ${CMAKE_BUILD_SYSTEM_INSTALL_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/Functions.cmake DESTINATION ${CMAKE_BUILD_SYSTEM_INSTALL_PATH})
install(FILES ${CMAKE_BUILD_SYSTEM_DIR}/Pack.cmake DESTINATION ${CMAKE_BUILD_SYSTEM_INSTALL_PATH})

configure_package_config_file(templates/${PROJECT_NAME}Config.cmake.in
                              ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
                              INSTALL_DESTINATION ${CMAKE_BUILD_SYSTEM_CONFIG_INSTALL_PATH})
write_basic_package_version_file(${PROJECT_NAME}ConfigVersion.cmake
                                 VERSION ${PROJECT_VERSION}
                                 COMPATIBILITY SameMajorVersion)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
        DESTINATION ${CMAKE_BUILD_SYSTEM_CONFIG_INSTALL_PATH})


include(${CMAKE_BUILD_SYSTEM_DIR}/CMakeBuildSystem.cmake)

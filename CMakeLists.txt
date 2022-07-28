cmake_minimum_required(VERSION 3.16)
project(cmake-build-system)

set(MODULES modules/CmakeBuildSystem.cmake
        DESTINATION ${CMAKE_INSTALL})

include(GNUInstallDirs)
include(modules/CmakeBuildSystem.cmake)

install(FILES ${MODULES} DESTINATION ${CMAKE_INSTALL_FULL_DATADIR}/cmake-build-system)

include(CPack)

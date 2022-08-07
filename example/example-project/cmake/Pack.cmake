if(DEFINED CMAKE_BUILD_SYSTEM_DIR)
  include(${CMAKE_BUILD_SYSTEM_DIR}/Pack.cmake)
endif()

# Dependencies for cmake-build-system pack targets
add_dependencies(pack-deb ${PROJECT_NAME})
add_dependencies(pack-rpm ${PROJECT_NAME})

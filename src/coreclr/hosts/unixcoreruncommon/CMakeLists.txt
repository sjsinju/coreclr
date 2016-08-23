project(unixcoreruncommon)

add_compile_options(-fPIC)

_add_library(unixcoreruncommon
    STATIC
    coreruncommon.cpp
)

  target_link_libraries(unixcoreruncommon ttrace ttrace-extension)
if(CLR_CMAKE_PLATFORM_LINUX)
  target_link_libraries(unixcoreruncommon dl)
endif(CLR_CMAKE_PLATFORM_LINUX)

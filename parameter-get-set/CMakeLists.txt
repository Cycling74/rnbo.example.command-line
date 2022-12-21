cmake_minimum_required(VERSION 3.10)

# Set the C++ standard to at least C++11, which is needed for RNBO
set (CMAKE_CXX_STANDARD 11)

# set the project name
project(RNBOCommandLine)

# add the main executable as well as the RNBO sources
add_executable(RNBOCommandLine main.cpp export/param-tester.cpp export/rnbo/RNBO.cpp)

# add a preprocessor macro to disable the convenience definition of the global patcher factory
# target_compile_definitions(RNBOCommandLine PRIVATE RNBO_NO_PATCHERFACTORY)

# needed to compile and run on os x
find_library(CORE_FOUNDATION Foundation)
find_library(APPLICATION_SERVICES ApplicationServices)
find_library(CORE_SERVICES CoreServices)

set(EXTRA_LIBS ${CORE_FOUNDATION} ${APPLICATION_SERVICES} ${CORE_SERVICES})

# include the RNBO headers
target_include_directories(RNBOCommandLine PRIVATE export/rnbo export/rnbo/common)

# Copy the executable up one level
add_custom_command(TARGET RNBOCommandLine 
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:RNBOCommandLine> ${CMAKE_SOURCE_DIR})

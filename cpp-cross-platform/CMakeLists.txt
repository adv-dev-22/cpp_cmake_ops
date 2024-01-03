cmake_minimum_required(VERSION 3.5)

set(BUILD_SHARED_LIBS,TRUE)

project(simple_sum 
        VERSION 1.1.1.0
        LANGUAGES C CXX)

add_library(utils_01 utils.h utils.cpp)
add_executable(app_run_01 main.cpp)
target_link_libraries(app_run_01 PRIVATE utils_01)


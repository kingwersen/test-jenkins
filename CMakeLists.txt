cmake_minimum_required(VERSION 3.15)

project(test 
    VERSION 1.0    
    LANGUAGES CXX)


add_executable(main)
target_sources(main
    PRIVATE
        "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")

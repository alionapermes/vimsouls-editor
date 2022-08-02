cmake_minimum_required(VERSION 3.16)
project(vimsouls-editor VERSION 0.1.0 LANGUAGES CXX)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Qt6 6.2 COMPONENTS Quick Gui REQUIRED)

include_directories(include)

if (DEBUG)
    add_compile_options(-g3 -ggdb)
    add_compile_definitions(DEBUG)
endif()

if (DOCS)
    add_subdirectory(docs)
endif()

add_subdirectory(src)


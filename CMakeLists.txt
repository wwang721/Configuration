#
#	Created by WW on 2019-6-27, revised by WW on 2020-02-06.
#	Copyright © WW. All rights reserved.
#
#	This is a general template illustrates how to use Cmake.
#

cmake_minimum_required(VERSION 2.8)  # required cmake version at least

project(Beta) # project name

# Bring the header-files in directory "include" into the project, 
# which equals to "-I<inc>" flag of gcc,
# so you don't need to include these header-files in the "add_executable/library" Command.
# include_directories(include)

# Link current CMakeLists.txt directory, 
# then you can target_link_libraries() in these directories.
# You can also link other directories, which equals to "-L<path>" flag of gcc.
# link_directories(${CMAKE_CURRENT_SOURCE_DIR})

# Add directory "src" into the project, CMake will also execute the CMakeLists.txt file in "src",
# so you can use the files and libraries in "src".
# add_subdirectory(src)

# Cmake C/C++ compiler will use C++ 11, which equals to "set(CMAKE_CXX_STANDARD 11)".	
add_compile_options(-std=c++11)

# Add some new flags into original CXXFLAGS.
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

# Compile and creat the executable file.
# add_executable(beta main.cpp)

# Define some variables representing the files.
# GLOB and GLOB_RECURSE can recognize the Regular Expression "*".
file(GLOB LIB_HEADERS *.h)
file(GLOB LIB_SOURCES *.cpp *.c)

# Compile and creat new library (SHARED or STATIC).
add_library(MYLIB STATIC ${LIB_HEADERS} ${LIB_SOURCES})

set(EXTRA_LIBS ${EXTRA_LIBS} MYLIB)  # add libraries into the EXTRA_LIBS

# Define some variables representing the files.
# GLOB and GLOB_RECURSE can recognize the Regular Expression "*".
file(GLOB HEADERS *.cuh)
file(GLOB SOURCES *.cu)

find_package(CUDA) # find cuda packages

# Add some new flags into original NVCC_FLAGS.
set(CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS} -g -O3 -std=c++11 -cudart static -gencode arch=compute_60,code=sm_60")

# Use CUDA C/C++ compiler nvcc to creat the executable file.
cuda_add_executable(magnon.exe ${SOURCES} ${HEADERS})

# Link the executable file with all libraries
target_link_libraries(magnon.exe ${EXTRA_LIBS})

# If you already have some libraries, you could link them after link_directories(),
# which equals to -l<libname>
# target_link_libraries(magnon.exe libnrutil.a)

cmake_minimum_required(VERSION 3)
project(osg_movie)

set(CMAKE_CXX_STANDARD 23)

find_package(OpenSceneGraph REQUIRED COMPONENTS osgDB osgGA osgViewer)

add_executable(osg_movie main.cpp)

target_include_directories(osg_movie PRIVATE
        ${OPENSCENEGRAPH_INCLUDE_DIRS}
)

target_link_libraries(osg_movie PRIVATE
        ${OPENSCENEGRAPH_LIBRARIES}
        stdc++
)
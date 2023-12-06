cmake_minimum_required(VERSION 3.27)
project(viewer_osg)

set(CMAKE_CXX_STANDARD 23)

find_package(OpenSceneGraph REQUIRED COMPONENTS osgDB osgGA osgViewer)

add_executable(viewer_osg main.cpp)

target_include_directories(viewer_osg PRIVATE
        ${OPENSCENEGRAPH_INCLUDE_DIRS}
)

target_link_libraries(viewer_osg PRIVATE
        ${OPENSCENEGRAPH_LIBRARIES}
        stdc++
)
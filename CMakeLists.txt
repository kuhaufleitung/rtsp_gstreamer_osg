cmake_minimum_required(VERSION 3.7)
project(rtsp_gstreamer_osg)

add_subdirectory("${PROJECT_SOURCE_DIR}/gstreamer" "${PROJECT_SOURCE_DIR}/gstreamer_output")
add_subdirectory("${PROJECT_SOURCE_DIR}/osgmovie" "${PROJECT_SOURCE_DIR}/osgmovie_output")
add_subdirectory("${PROJECT_SOURCE_DIR}/rtspserver" "${PROJECT_SOURCE_DIR}/rtspserver_output")
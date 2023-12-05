cmake_minimum_required(VERSION 3.0)
project(rtspserver)

# Find the GStreamer libraries
find_package(PkgConfig)

pkg_check_modules(GSTREAMER REQUIRED gstreamer-1.0)
pkg_check_modules(GSTREAMER_BASE REQUIRED gstreamer-base-1.0)
pkg_check_modules(GSTREAMER_VIDEO REQUIRED gstreamer-video-1.0)
pkg_check_modules(GSTREAMER_AUDIO REQUIRED gstreamer-audio-1.0)
pkg_check_modules(GSTREAMER_APP REQUIRED gstreamer-app-1.0)
pkg_check_modules(GSTREAMER_RTP REQUIRED gstreamer-rtp-1.0)
pkg_check_modules(GSTREAMER_PBUTILS REQUIRED gstreamer-pbutils-1.0)
pkg_check_modules(GSTRTSPSERVER REQUIRED gstreamer-rtsp-server-1.0)

include_directories(${GSTREAMER_INCLUDE_DIRS}
        ${GSTREAMER_BASE_INCLUDE_DIRS}
        ${GSTREAMER_VIDEO_INCLUDE_DIRS}
        ${GSTREAMER_AUDIO_INCLUDE_DIRS}
        ${GSTREAMER_APP_INCLUDE_DIRS}
        ${GSTREAMER_RTP_INCLUDE_DIRS}
        ${GSTREAMER_PBUTILS_INCLUDE_DIRS}
        ${GSTRTSPSERVER_INCLUDE_DIRS})

link_directories(${GSTREAMER_LIBRARY_DIRS}
        ${GSTREAMER_BASE_LIBRARY_DIRS}
        ${GSTREAMER_VIDEO_LIBRARY_DIRS}
        ${GSTREAMER_AUDIO_LIBRARY_DIRS}
        ${GSTREAMER_APP_LIBRARY_DIRS}
        ${GSTREAMER_RTP_LIBRARY_DIRS}
        ${GSTREAMER_PBUTILS_LIBRARY_DIRS}
        ${GSTRTSPSERVER_LIBRARY_DIRS})

# Add your sources here
add_executable(rtspserver main.cpp)

# Link against the GStreamer and RTSP server libraries
target_link_libraries(rtspserver ${GSTREAMER_LIBRARIES}
        ${GSTREAMER_BASE_LIBRARIES}
        ${GSTREAMER_VIDEO_LIBRARIES}
        ${GSTREAMER_AUDIO_LIBRARIES}
        ${GSTREAMER_APP_LIBRARIES}
        ${GSTREAMER_RTP_LIBRARIES}
        ${GSTREAMER_PBUTILS_LIBRARIES}
        ${GSTRTSPSERVER_LIBRARIES})
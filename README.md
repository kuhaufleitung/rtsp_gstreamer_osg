# rtsp_gstreamer_osg

server startup arguments:
./rtspserver "( filesrc location=sample.mp4 ! qtdemux ! h264parse ! rtph264pay name=pay0 pt=96 )"

working client:
- via FFmpeg player: `ffplay rtsp://127.0.0.1:8554/test`
- via gstreamer: `gst-launch-1.0 -v playbin uri=rtsp://localhost:8554/test uridecodebin0::source::latency=300`
- via osg(ffmpeg plugin): `./viewer_osg -e ffmpeg rtsp://127.0.0.1:8554/test`
- TODO: launch with `-e gstreamer`\
https://github.com/openscenegraph/OpenSceneGraph/blob/2e4ae2ea94595995c1fc56860051410b0c0be605/src/osgPlugins/gstreamer/GStreamerImageStream.cpp#L85
This might need different args.

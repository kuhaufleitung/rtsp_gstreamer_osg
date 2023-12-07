#include <gst/gst.h>

int main(int argc, char *argv[]) {
    GstElement *pipeline, *rtspsrc, *decodebin, *videoconvert, *videosink, *rtph264depay;
    GstBus *bus;
    GstMessage *msg;
    GstStateChangeReturn ret;

    g_setenv("GST_DEBUG", "*:5", TRUE); // Set the debug level
    // Initialize GStreamer
    gst_init(&argc, &argv);
    gst_debug_set_default_threshold(GST_LEVEL_INFO); // Set default threshold

    // Create elements
    pipeline = gst_pipeline_new("rtsp-player");
    rtspsrc = gst_element_factory_make("rtspsrc", "source");
    rtph264depay = gst_element_factory_make("rtph264depay", "h264depay");
    decodebin = gst_element_factory_make("decodebin", "decoder");
    videoconvert = gst_element_factory_make("videoconvert", "convert");
    videosink = gst_element_factory_make("ximagesink", "sink");
    // Check if all elements are created
    if (!pipeline || !rtspsrc || !decodebin || !rtph264depay || !videoconvert || !videosink) {
        g_printerr("One or more elements could not be created. Exiting.\n");
        return -1;
    }

    // Set the RTSP URL
    g_object_set(rtspsrc, "location", "rtsp://127.0.0.1:8554/test", NULL);

    // Add elements to the pipeline
    gst_bin_add_many(GST_BIN(pipeline), rtspsrc, decodebin, videoconvert, videosink, NULL);

    // Link elements
    gst_element_link(rtspsrc, decodebin);
    gst_element_link(decodebin, rtph264depay);
    gst_element_link(rtph264depay, videoconvert);
    gst_element_link(videoconvert, videosink);

    // Set the pipeline to playing state
    ret = gst_element_set_state(pipeline, GST_STATE_PLAYING);
    if (ret == GST_STATE_CHANGE_FAILURE) {
        g_printerr("Unable to set the pipeline to the playing state. Exiting.\n");
        return -1;
    }

// Watch for messages on the bus
    bus = gst_element_get_bus(pipeline);
    msg = gst_bus_timed_pop_filtered(bus, GST_CLOCK_TIME_NONE, GST_MESSAGE_ERROR);
    if (msg != NULL) {
        // Handle the error message
        gst_message_unref(msg);
    }

    msg = gst_bus_timed_pop_filtered(bus, GST_CLOCK_TIME_NONE, GST_MESSAGE_EOS);
    if (msg != NULL) {
        // Handle the end-of-stream message
        gst_message_unref(msg);
    }

// Free resources
    gst_object_unref(bus);
    gst_element_set_state(pipeline, GST_STATE_NULL);
    gst_object_unref(pipeline);
    return 0;
}
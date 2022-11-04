module glx.glxext;

import core.stdc.config;

// This file is generated using dstep

version(linux):
extern (C):

import x11.X;
import x11.Xlib;
import x11.Xutil;

import glx.glx;

enum __glx_glxext_h_ = 1;

enum GLX_GLXEXT_VERSION = 20180525;

/* Generated C header for:
 * API: glx
 * Versions considered: .*
 * Versions emitted: 1\.[3-9]
 * Default extensions included: glx
 * Additional extensions included: _nomatch_^
 * Extensions removed: _nomatch_^
 */

/* GLX_VERSION_1_3 */

/* GLX_VERSION_1_4 */

enum GLX_ARB_context_flush_control = 1;
enum GLX_CONTEXT_RELEASE_BEHAVIOR_ARB = 0x2097;
enum GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB = 0;
enum GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB = 0x2098;
/* GLX_ARB_context_flush_control */

enum GLX_ARB_create_context = 1;
enum GLX_CONTEXT_DEBUG_BIT_ARB = 0x00000001;
enum GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = 0x00000002;
enum GLX_CONTEXT_MAJOR_VERSION_ARB = 0x2091;
enum GLX_CONTEXT_MINOR_VERSION_ARB = 0x2092;
enum GLX_CONTEXT_FLAGS_ARB = 0x2094;
alias PFNGLXCREATECONTEXTATTRIBSARBPROC = GLXContext function (Display* dpy, GLXFBConfig config, GLXContext share_context, int direct, const(int)* attrib_list);

/* GLX_ARB_create_context */

enum GLX_ARB_create_context_no_error = 1;
enum GLX_CONTEXT_OPENGL_NO_ERROR_ARB = 0x31B3;
/* GLX_ARB_create_context_no_error */

enum GLX_ARB_create_context_profile = 1;
enum GLX_CONTEXT_CORE_PROFILE_BIT_ARB = 0x00000001;
enum GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = 0x00000002;
enum GLX_CONTEXT_PROFILE_MASK_ARB = 0x9126;
/* GLX_ARB_create_context_profile */

enum GLX_ARB_create_context_robustness = 1;
enum GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB = 0x00000004;
enum GLX_LOSE_CONTEXT_ON_RESET_ARB = 0x8252;
enum GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256;
enum GLX_NO_RESET_NOTIFICATION_ARB = 0x8261;
/* GLX_ARB_create_context_robustness */

enum GLX_ARB_fbconfig_float = 1;
enum GLX_RGBA_FLOAT_TYPE_ARB = 0x20B9;
enum GLX_RGBA_FLOAT_BIT_ARB = 0x00000004;
/* GLX_ARB_fbconfig_float */

enum GLX_ARB_framebuffer_sRGB = 1;
enum GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB = 0x20B2;
/* GLX_ARB_framebuffer_sRGB */

/* GLX_ARB_get_proc_address */

enum GLX_ARB_multisample = 1;
enum GLX_SAMPLE_BUFFERS_ARB = 100000;
enum GLX_SAMPLES_ARB = 100001;
/* GLX_ARB_multisample */

enum GLX_ARB_robustness_application_isolation = 1;
enum GLX_CONTEXT_RESET_ISOLATION_BIT_ARB = 0x00000008;
/* GLX_ARB_robustness_application_isolation */

enum GLX_ARB_robustness_share_group_isolation = 1;
/* GLX_ARB_robustness_share_group_isolation */

enum GLX_ARB_vertex_buffer_object = 1;
enum GLX_CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH_ARB = 0x2095;
/* GLX_ARB_vertex_buffer_object */

enum GLX_3DFX_multisample = 1;
enum GLX_SAMPLE_BUFFERS_3DFX = 0x8050;
enum GLX_SAMPLES_3DFX = 0x8051;
/* GLX_3DFX_multisample */

enum GLX_AMD_gpu_association = 1;
enum GLX_GPU_VENDOR_AMD = 0x1F00;
enum GLX_GPU_RENDERER_STRING_AMD = 0x1F01;
enum GLX_GPU_OPENGL_VERSION_STRING_AMD = 0x1F02;
enum GLX_GPU_FASTEST_TARGET_GPUS_AMD = 0x21A2;
enum GLX_GPU_RAM_AMD = 0x21A3;
enum GLX_GPU_CLOCK_AMD = 0x21A4;
enum GLX_GPU_NUM_PIPES_AMD = 0x21A5;
enum GLX_GPU_NUM_SIMD_AMD = 0x21A6;
enum GLX_GPU_NUM_RB_AMD = 0x21A7;
enum GLX_GPU_NUM_SPI_AMD = 0x21A8;
alias PFNGLXGETGPUIDSAMDPROC = uint function (uint maxCount, uint* ids);
alias PFNGLXGETGPUINFOAMDPROC = int function (uint id, int property, GLenum dataType, uint size, void* data);
alias PFNGLXGETCONTEXTGPUIDAMDPROC = uint function (GLXContext ctx);
alias PFNGLXCREATEASSOCIATEDCONTEXTAMDPROC = GLXContext function (uint id, GLXContext share_list);
alias PFNGLXCREATEASSOCIATEDCONTEXTATTRIBSAMDPROC = GLXContext function (uint id, GLXContext share_context, const(int)* attribList);
alias PFNGLXDELETEASSOCIATEDCONTEXTAMDPROC = int function (GLXContext ctx);
alias PFNGLXMAKEASSOCIATEDCONTEXTCURRENTAMDPROC = int function (GLXContext ctx);
alias PFNGLXGETCURRENTASSOCIATEDCONTEXTAMDPROC = GLXContext function ();
alias PFNGLXBLITCONTEXTFRAMEBUFFERAMDPROC = void function (GLXContext dstCtx, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);

/* GLX_AMD_gpu_association */

enum GLX_EXT_buffer_age = 1;
enum GLX_BACK_BUFFER_AGE_EXT = 0x20F4;
/* GLX_EXT_buffer_age */

enum GLX_EXT_create_context_es2_profile = 1;
enum GLX_CONTEXT_ES2_PROFILE_BIT_EXT = 0x00000004;
/* GLX_EXT_create_context_es2_profile */

enum GLX_EXT_create_context_es_profile = 1;
enum GLX_CONTEXT_ES_PROFILE_BIT_EXT = 0x00000004;
/* GLX_EXT_create_context_es_profile */

enum GLX_EXT_fbconfig_packed_float = 1;
enum GLX_RGBA_UNSIGNED_FLOAT_TYPE_EXT = 0x20B1;
enum GLX_RGBA_UNSIGNED_FLOAT_BIT_EXT = 0x00000008;
/* GLX_EXT_fbconfig_packed_float */

enum GLX_EXT_framebuffer_sRGB = 1;
enum GLX_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x20B2;
/* GLX_EXT_framebuffer_sRGB */

enum GLX_EXT_import_context = 1;
enum GLX_SHARE_CONTEXT_EXT = 0x800A;
enum GLX_VISUAL_ID_EXT = 0x800B;
enum GLX_SCREEN_EXT = 0x800C;
alias PFNGLXGETCURRENTDISPLAYEXTPROC = _XDisplay* function ();
alias PFNGLXQUERYCONTEXTINFOEXTPROC = int function (Display* dpy, GLXContext context, int attribute, int* value);
alias PFNGLXGETCONTEXTIDEXTPROC = c_ulong function (const GLXContext context);
alias PFNGLXIMPORTCONTEXTEXTPROC = GLXContext function (Display* dpy, GLXContextID contextID);
alias PFNGLXFREECONTEXTEXTPROC = void function (Display* dpy, GLXContext context);

/* GLX_EXT_import_context */

enum GLX_EXT_libglvnd = 1;
enum GLX_VENDOR_NAMES_EXT = 0x20F6;
/* GLX_EXT_libglvnd */

enum GLX_EXT_no_config_context = 1;
/* GLX_EXT_no_config_context */

enum GLX_EXT_stereo_tree = 1;

struct GLXStereoNotifyEventEXT
{
    int type;
    c_ulong serial;
    int send_event;
    Display* display;
    int extension;
    int evtype;
    GLXDrawable window;
    int stereo_tree;
}

enum GLX_STEREO_TREE_EXT = 0x20F5;
enum GLX_STEREO_NOTIFY_MASK_EXT = 0x00000001;
enum GLX_STEREO_NOTIFY_EXT = 0x00000000;
/* GLX_EXT_stereo_tree */

enum GLX_EXT_swap_control = 1;
enum GLX_SWAP_INTERVAL_EXT = 0x20F1;
enum GLX_MAX_SWAP_INTERVAL_EXT = 0x20F2;
alias PFNGLXSWAPINTERVALEXTPROC = void function (Display* dpy, GLXDrawable drawable, int interval);

/* GLX_EXT_swap_control */

enum GLX_EXT_swap_control_tear = 1;
enum GLX_LATE_SWAPS_TEAR_EXT = 0x20F3;
/* GLX_EXT_swap_control_tear */

enum GLX_EXT_texture_from_pixmap = 1;
enum GLX_TEXTURE_1D_BIT_EXT = 0x00000001;
enum GLX_TEXTURE_2D_BIT_EXT = 0x00000002;
enum GLX_TEXTURE_RECTANGLE_BIT_EXT = 0x00000004;
enum GLX_BIND_TO_TEXTURE_RGB_EXT = 0x20D0;
enum GLX_BIND_TO_TEXTURE_RGBA_EXT = 0x20D1;
enum GLX_BIND_TO_MIPMAP_TEXTURE_EXT = 0x20D2;
enum GLX_BIND_TO_TEXTURE_TARGETS_EXT = 0x20D3;
enum GLX_Y_INVERTED_EXT = 0x20D4;
enum GLX_TEXTURE_FORMAT_EXT = 0x20D5;
enum GLX_TEXTURE_TARGET_EXT = 0x20D6;
enum GLX_MIPMAP_TEXTURE_EXT = 0x20D7;
enum GLX_TEXTURE_FORMAT_NONE_EXT = 0x20D8;
enum GLX_TEXTURE_FORMAT_RGB_EXT = 0x20D9;
enum GLX_TEXTURE_FORMAT_RGBA_EXT = 0x20DA;
enum GLX_TEXTURE_1D_EXT = 0x20DB;
enum GLX_TEXTURE_2D_EXT = 0x20DC;
enum GLX_TEXTURE_RECTANGLE_EXT = 0x20DD;
enum GLX_FRONT_LEFT_EXT = 0x20DE;
enum GLX_FRONT_RIGHT_EXT = 0x20DF;
enum GLX_BACK_LEFT_EXT = 0x20E0;
enum GLX_BACK_RIGHT_EXT = 0x20E1;
enum GLX_FRONT_EXT = 0x20DE;
enum GLX_BACK_EXT = 0x20E0;
enum GLX_AUX0_EXT = 0x20E2;
enum GLX_AUX1_EXT = 0x20E3;
enum GLX_AUX2_EXT = 0x20E4;
enum GLX_AUX3_EXT = 0x20E5;
enum GLX_AUX4_EXT = 0x20E6;
enum GLX_AUX5_EXT = 0x20E7;
enum GLX_AUX6_EXT = 0x20E8;
enum GLX_AUX7_EXT = 0x20E9;
enum GLX_AUX8_EXT = 0x20EA;
enum GLX_AUX9_EXT = 0x20EB;
alias PFNGLXBINDTEXIMAGEEXTPROC = void function (Display* dpy, GLXDrawable drawable, int buffer, const(int)* attrib_list);
alias PFNGLXRELEASETEXIMAGEEXTPROC = void function (Display* dpy, GLXDrawable drawable, int buffer);

/* GLX_EXT_texture_from_pixmap */

enum GLX_EXT_visual_info = 1;
enum GLX_X_VISUAL_TYPE_EXT = 0x22;
enum GLX_TRANSPARENT_TYPE_EXT = 0x23;
enum GLX_TRANSPARENT_INDEX_VALUE_EXT = 0x24;
enum GLX_TRANSPARENT_RED_VALUE_EXT = 0x25;
enum GLX_TRANSPARENT_GREEN_VALUE_EXT = 0x26;
enum GLX_TRANSPARENT_BLUE_VALUE_EXT = 0x27;
enum GLX_TRANSPARENT_ALPHA_VALUE_EXT = 0x28;
enum GLX_NONE_EXT = 0x8000;
enum GLX_TRUE_COLOR_EXT = 0x8002;
enum GLX_DIRECT_COLOR_EXT = 0x8003;
enum GLX_PSEUDO_COLOR_EXT = 0x8004;
enum GLX_STATIC_COLOR_EXT = 0x8005;
enum GLX_GRAY_SCALE_EXT = 0x8006;
enum GLX_STATIC_GRAY_EXT = 0x8007;
enum GLX_TRANSPARENT_RGB_EXT = 0x8008;
enum GLX_TRANSPARENT_INDEX_EXT = 0x8009;
/* GLX_EXT_visual_info */

enum GLX_EXT_visual_rating = 1;
enum GLX_VISUAL_CAVEAT_EXT = 0x20;
enum GLX_SLOW_VISUAL_EXT = 0x8001;
enum GLX_NON_CONFORMANT_VISUAL_EXT = 0x800D;
/* GLX_EXT_visual_rating */

enum GLX_INTEL_swap_event = 1;
enum GLX_BUFFER_SWAP_COMPLETE_INTEL_MASK = 0x04000000;
enum GLX_EXCHANGE_COMPLETE_INTEL = 0x8180;
enum GLX_COPY_COMPLETE_INTEL = 0x8181;
enum GLX_FLIP_COMPLETE_INTEL = 0x8182;
/* GLX_INTEL_swap_event */

enum GLX_MESA_agp_offset = 1;
alias PFNGLXGETAGPOFFSETMESAPROC = uint function (const(void)* pointer);

/* GLX_MESA_agp_offset */

enum GLX_MESA_copy_sub_buffer = 1;
alias PFNGLXCOPYSUBBUFFERMESAPROC = void function (Display* dpy, GLXDrawable drawable, int x, int y, int width, int height);

/* GLX_MESA_copy_sub_buffer */

enum GLX_MESA_pixmap_colormap = 1;
alias PFNGLXCREATEGLXPIXMAPMESAPROC = c_ulong function (Display* dpy, XVisualInfo* visual, Pixmap pixmap, Colormap cmap);

/* GLX_MESA_pixmap_colormap */

enum GLX_MESA_query_renderer = 1;
enum GLX_RENDERER_VENDOR_ID_MESA = 0x8183;
enum GLX_RENDERER_DEVICE_ID_MESA = 0x8184;
enum GLX_RENDERER_VERSION_MESA = 0x8185;
enum GLX_RENDERER_ACCELERATED_MESA = 0x8186;
enum GLX_RENDERER_VIDEO_MEMORY_MESA = 0x8187;
enum GLX_RENDERER_UNIFIED_MEMORY_ARCHITECTURE_MESA = 0x8188;
enum GLX_RENDERER_PREFERRED_PROFILE_MESA = 0x8189;
enum GLX_RENDERER_OPENGL_CORE_PROFILE_VERSION_MESA = 0x818A;
enum GLX_RENDERER_OPENGL_COMPATIBILITY_PROFILE_VERSION_MESA = 0x818B;
enum GLX_RENDERER_OPENGL_ES_PROFILE_VERSION_MESA = 0x818C;
enum GLX_RENDERER_OPENGL_ES2_PROFILE_VERSION_MESA = 0x818D;
enum GLX_RENDERER_ID_MESA = 0x818E;
alias PFNGLXQUERYCURRENTRENDERERINTEGERMESAPROC = int function (int attribute, uint* value);
alias PFNGLXQUERYCURRENTRENDERERSTRINGMESAPROC = const(char)* function (int attribute);
alias PFNGLXQUERYRENDERERINTEGERMESAPROC = int function (Display* dpy, int screen, int renderer, int attribute, uint* value);
alias PFNGLXQUERYRENDERERSTRINGMESAPROC = const(char)* function (Display* dpy, int screen, int renderer, int attribute);

/* GLX_MESA_query_renderer */

enum GLX_MESA_release_buffers = 1;
alias PFNGLXRELEASEBUFFERSMESAPROC = int function (Display* dpy, GLXDrawable drawable);

/* GLX_MESA_release_buffers */

enum GLX_MESA_set_3dfx_mode = 1;
enum GLX_3DFX_WINDOW_MODE_MESA = 0x1;
enum GLX_3DFX_FULLSCREEN_MODE_MESA = 0x2;
alias PFNGLXSET3DFXMODEMESAPROC = int function (int mode);

/* GLX_MESA_set_3dfx_mode */

/* GLX_MESA_swap_control */

enum GLX_NV_copy_buffer = 1;
alias PFNGLXCOPYBUFFERSUBDATANVPROC = void function (Display* dpy, GLXContext readCtx, GLXContext writeCtx, GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
alias PFNGLXNAMEDCOPYBUFFERSUBDATANVPROC = void function (Display* dpy, GLXContext readCtx, GLXContext writeCtx, GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);

/* GLX_NV_copy_buffer */

enum GLX_NV_copy_image = 1;
alias PFNGLXCOPYIMAGESUBDATANVPROC = void function (Display* dpy, GLXContext srcCtx, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLXContext dstCtx, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);

/* GLX_NV_copy_image */

enum GLX_NV_delay_before_swap = 1;
alias PFNGLXDELAYBEFORESWAPNVPROC = int function (Display* dpy, GLXDrawable drawable, GLfloat seconds);

/* GLX_NV_delay_before_swap */

enum GLX_NV_float_buffer = 1;
enum GLX_FLOAT_COMPONENTS_NV = 0x20B0;
/* GLX_NV_float_buffer */

enum GLX_NV_multisample_coverage = 1;
enum GLX_COVERAGE_SAMPLES_NV = 100001;
enum GLX_COLOR_SAMPLES_NV = 0x20B3;
/* GLX_NV_multisample_coverage */

enum GLX_NV_present_video = 1;
enum GLX_NUM_VIDEO_SLOTS_NV = 0x20F0;
alias PFNGLXENUMERATEVIDEODEVICESNVPROC = uint* function (Display* dpy, int screen, int* nelements);
alias PFNGLXBINDVIDEODEVICENVPROC = int function (Display* dpy, uint video_slot, uint video_device, const(int)* attrib_list);

/* GLX_NV_present_video */

enum GLX_NV_robustness_video_memory_purge = 1;
enum GLX_GENERATE_RESET_ON_VIDEO_MEMORY_PURGE_NV = 0x20F7;
/* GLX_NV_robustness_video_memory_purge */

enum GLX_NV_swap_group = 1;
alias PFNGLXJOINSWAPGROUPNVPROC = int function (Display* dpy, GLXDrawable drawable, GLuint group);
alias PFNGLXBINDSWAPBARRIERNVPROC = int function (Display* dpy, GLuint group, GLuint barrier);
alias PFNGLXQUERYSWAPGROUPNVPROC = int function (Display* dpy, GLXDrawable drawable, GLuint* group, GLuint* barrier);
alias PFNGLXQUERYMAXSWAPGROUPSNVPROC = int function (Display* dpy, int screen, GLuint* maxGroups, GLuint* maxBarriers);
alias PFNGLXQUERYFRAMECOUNTNVPROC = int function (Display* dpy, int screen, GLuint* count);
alias PFNGLXRESETFRAMECOUNTNVPROC = int function (Display* dpy, int screen);

/* GLX_NV_swap_group */

enum GLX_NV_video_capture = 1;
alias GLXVideoCaptureDeviceNV = c_ulong;
enum GLX_DEVICE_ID_NV = 0x20CD;
enum GLX_UNIQUE_ID_NV = 0x20CE;
enum GLX_NUM_VIDEO_CAPTURE_SLOTS_NV = 0x20CF;
alias PFNGLXBINDVIDEOCAPTUREDEVICENVPROC = int function (Display* dpy, uint video_capture_slot, GLXVideoCaptureDeviceNV device);
alias PFNGLXENUMERATEVIDEOCAPTUREDEVICESNVPROC = c_ulong* function (Display* dpy, int screen, int* nelements);
alias PFNGLXLOCKVIDEOCAPTUREDEVICENVPROC = void function (Display* dpy, GLXVideoCaptureDeviceNV device);
alias PFNGLXQUERYVIDEOCAPTUREDEVICENVPROC = int function (Display* dpy, GLXVideoCaptureDeviceNV device, int attribute, int* value);
alias PFNGLXRELEASEVIDEOCAPTUREDEVICENVPROC = void function (Display* dpy, GLXVideoCaptureDeviceNV device);

/* GLX_NV_video_capture */

enum GLX_NV_video_out = 1;
alias GLXVideoDeviceNV = uint;
enum GLX_VIDEO_OUT_COLOR_NV = 0x20C3;
enum GLX_VIDEO_OUT_ALPHA_NV = 0x20C4;
enum GLX_VIDEO_OUT_DEPTH_NV = 0x20C5;
enum GLX_VIDEO_OUT_COLOR_AND_ALPHA_NV = 0x20C6;
enum GLX_VIDEO_OUT_COLOR_AND_DEPTH_NV = 0x20C7;
enum GLX_VIDEO_OUT_FRAME_NV = 0x20C8;
enum GLX_VIDEO_OUT_FIELD_1_NV = 0x20C9;
enum GLX_VIDEO_OUT_FIELD_2_NV = 0x20CA;
enum GLX_VIDEO_OUT_STACKED_FIELDS_1_2_NV = 0x20CB;
enum GLX_VIDEO_OUT_STACKED_FIELDS_2_1_NV = 0x20CC;
alias PFNGLXGETVIDEODEVICENVPROC = int function (Display* dpy, int screen, int numVideoDevices, GLXVideoDeviceNV* pVideoDevice);
alias PFNGLXRELEASEVIDEODEVICENVPROC = int function (Display* dpy, int screen, GLXVideoDeviceNV VideoDevice);
alias PFNGLXBINDVIDEOIMAGENVPROC = int function (Display* dpy, GLXVideoDeviceNV VideoDevice, GLXPbuffer pbuf, int iVideoBuffer);
alias PFNGLXRELEASEVIDEOIMAGENVPROC = int function (Display* dpy, GLXPbuffer pbuf);
alias PFNGLXSENDPBUFFERTOVIDEONVPROC = int function (Display* dpy, GLXPbuffer pbuf, int iBufferType, c_ulong* pulCounterPbuffer, GLboolean bBlock);
alias PFNGLXGETVIDEOINFONVPROC = int function (Display* dpy, int screen, GLXVideoDeviceNV VideoDevice, c_ulong* pulCounterOutputPbuffer, c_ulong* pulCounterOutputVideo);

/* GLX_NV_video_out */

enum GLX_OML_swap_method = 1;
enum GLX_SWAP_METHOD_OML = 0x8060;
enum GLX_SWAP_EXCHANGE_OML = 0x8061;
enum GLX_SWAP_COPY_OML = 0x8062;
enum GLX_SWAP_UNDEFINED_OML = 0x8063;
/* GLX_OML_swap_method */

enum GLX_OML_sync_control = 1;

/* This code block is duplicated in glext.h, so must be protected */
/* Define int32_t, int64_t, and uint64_t types for UST/MSC */
/* (as used in the GLX_OML_sync_control extension). */

/* __arch64__ */
/* __STDC__ */

/* Fallback if nothing above works */

alias PFNGLXGETSYNCVALUESOMLPROC = int function (Display* dpy, GLXDrawable drawable, long* ust, long* msc, long* sbc);
alias PFNGLXGETMSCRATEOMLPROC = int function (Display* dpy, GLXDrawable drawable, int* numerator, int* denominator);
alias PFNGLXSWAPBUFFERSMSCOMLPROC = c_long function (Display* dpy, GLXDrawable drawable, long target_msc, long divisor, long remainder);
alias PFNGLXWAITFORMSCOMLPROC = int function (Display* dpy, GLXDrawable drawable, long target_msc, long divisor, long remainder, long* ust, long* msc, long* sbc);
alias PFNGLXWAITFORSBCOMLPROC = int function (Display* dpy, GLXDrawable drawable, long target_sbc, long* ust, long* msc, long* sbc);

/* GLX_OML_sync_control */

enum GLX_SGIS_blended_overlay = 1;
enum GLX_BLENDED_RGBA_SGIS = 0x8025;
/* GLX_SGIS_blended_overlay */

enum GLX_SGIS_multisample = 1;
enum GLX_SAMPLE_BUFFERS_SGIS = 100000;
enum GLX_SAMPLES_SGIS = 100001;
/* GLX_SGIS_multisample */

enum GLX_SGIS_shared_multisample = 1;
enum GLX_MULTISAMPLE_SUB_RECT_WIDTH_SGIS = 0x8026;
enum GLX_MULTISAMPLE_SUB_RECT_HEIGHT_SGIS = 0x8027;
/* GLX_SGIS_shared_multisample */

enum GLX_SGIX_dmbuffer = 1;
alias GLXPbufferSGIX = c_ulong;

/* _DM_BUFFER_H_ */
/* GLX_SGIX_dmbuffer */

enum GLX_SGIX_fbconfig = 1;
struct __GLXFBConfigRec;
alias GLXFBConfigSGIX = __GLXFBConfigRec*;
enum GLX_WINDOW_BIT_SGIX = 0x00000001;
enum GLX_PIXMAP_BIT_SGIX = 0x00000002;
enum GLX_RGBA_BIT_SGIX = 0x00000001;
enum GLX_COLOR_INDEX_BIT_SGIX = 0x00000002;
enum GLX_DRAWABLE_TYPE_SGIX = 0x8010;
enum GLX_RENDER_TYPE_SGIX = 0x8011;
enum GLX_X_RENDERABLE_SGIX = 0x8012;
enum GLX_FBCONFIG_ID_SGIX = 0x8013;
enum GLX_RGBA_TYPE_SGIX = 0x8014;
enum GLX_COLOR_INDEX_TYPE_SGIX = 0x8015;
alias PFNGLXGETFBCONFIGATTRIBSGIXPROC = int function (Display* dpy, GLXFBConfigSGIX config, int attribute, int* value);
alias PFNGLXCHOOSEFBCONFIGSGIXPROC = __GLXFBConfigRec** function (Display* dpy, int screen, int* attrib_list, int* nelements);
alias PFNGLXCREATEGLXPIXMAPWITHCONFIGSGIXPROC = c_ulong function (Display* dpy, GLXFBConfigSGIX config, Pixmap pixmap);
alias PFNGLXCREATECONTEXTWITHCONFIGSGIXPROC = GLXContext function (Display* dpy, GLXFBConfigSGIX config, int render_type, GLXContext share_list, int direct);
alias PFNGLXGETVISUALFROMFBCONFIGSGIXPROC = void* function (Display* dpy, GLXFBConfigSGIX config); // TODO: shall be _Anonymous_0
alias PFNGLXGETFBCONFIGFROMVISUALSGIXPROC = __GLXFBConfigRec* function (Display* dpy, XVisualInfo* vis);

/* GLX_SGIX_fbconfig */

enum GLX_SGIX_hyperpipe = 1;

struct GLXHyperpipeNetworkSGIX
{
    char[80] pipeName; /* Should be [GLX_HYPERPIPE_PIPE_NAME_LENGTH_SGIX] */
    int networkId;
}

struct GLXHyperpipeConfigSGIX
{
    char[80] pipeName; /* Should be [GLX_HYPERPIPE_PIPE_NAME_LENGTH_SGIX] */
    int channel;
    uint participationType;
    int timeSlice;
}

struct GLXPipeRect
{
    char[80] pipeName; /* Should be [GLX_HYPERPIPE_PIPE_NAME_LENGTH_SGIX] */
    int srcXOrigin;
    int srcYOrigin;
    int srcWidth;
    int srcHeight;
    int destXOrigin;
    int destYOrigin;
    int destWidth;
    int destHeight;
}

struct GLXPipeRectLimits
{
    char[80] pipeName; /* Should be [GLX_HYPERPIPE_PIPE_NAME_LENGTH_SGIX] */
    int XOrigin;
    int YOrigin;
    int maxHeight;
    int maxWidth;
}

enum GLX_HYPERPIPE_PIPE_NAME_LENGTH_SGIX = 80;
enum GLX_BAD_HYPERPIPE_CONFIG_SGIX = 91;
enum GLX_BAD_HYPERPIPE_SGIX = 92;
enum GLX_HYPERPIPE_DISPLAY_PIPE_SGIX = 0x00000001;
enum GLX_HYPERPIPE_RENDER_PIPE_SGIX = 0x00000002;
enum GLX_PIPE_RECT_SGIX = 0x00000001;
enum GLX_PIPE_RECT_LIMITS_SGIX = 0x00000002;
enum GLX_HYPERPIPE_STEREO_SGIX = 0x00000003;
enum GLX_HYPERPIPE_PIXEL_AVERAGE_SGIX = 0x00000004;
enum GLX_HYPERPIPE_ID_SGIX = 0x8030;
alias PFNGLXQUERYHYPERPIPENETWORKSGIXPROC = GLXHyperpipeNetworkSGIX* function (Display* dpy, int* npipes);
alias PFNGLXHYPERPIPECONFIGSGIXPROC = int function (Display* dpy, int networkId, int npipes, GLXHyperpipeConfigSGIX* cfg, int* hpId);
alias PFNGLXQUERYHYPERPIPECONFIGSGIXPROC = GLXHyperpipeConfigSGIX* function (Display* dpy, int hpId, int* npipes);
alias PFNGLXDESTROYHYPERPIPECONFIGSGIXPROC = int function (Display* dpy, int hpId);
alias PFNGLXBINDHYPERPIPESGIXPROC = int function (Display* dpy, int hpId);
alias PFNGLXQUERYHYPERPIPEBESTATTRIBSGIXPROC = int function (Display* dpy, int timeSlice, int attrib, int size, void* attribList, void* returnAttribList);
alias PFNGLXHYPERPIPEATTRIBSGIXPROC = int function (Display* dpy, int timeSlice, int attrib, int size, void* attribList);
alias PFNGLXQUERYHYPERPIPEATTRIBSGIXPROC = int function (Display* dpy, int timeSlice, int attrib, int size, void* returnAttribList);

/* GLX_SGIX_hyperpipe */

enum GLX_SGIX_pbuffer = 1;
enum GLX_PBUFFER_BIT_SGIX = 0x00000004;
enum GLX_BUFFER_CLOBBER_MASK_SGIX = 0x08000000;
enum GLX_FRONT_LEFT_BUFFER_BIT_SGIX = 0x00000001;
enum GLX_FRONT_RIGHT_BUFFER_BIT_SGIX = 0x00000002;
enum GLX_BACK_LEFT_BUFFER_BIT_SGIX = 0x00000004;
enum GLX_BACK_RIGHT_BUFFER_BIT_SGIX = 0x00000008;
enum GLX_AUX_BUFFERS_BIT_SGIX = 0x00000010;
enum GLX_DEPTH_BUFFER_BIT_SGIX = 0x00000020;
enum GLX_STENCIL_BUFFER_BIT_SGIX = 0x00000040;
enum GLX_ACCUM_BUFFER_BIT_SGIX = 0x00000080;
enum GLX_SAMPLE_BUFFERS_BIT_SGIX = 0x00000100;
enum GLX_MAX_PBUFFER_WIDTH_SGIX = 0x8016;
enum GLX_MAX_PBUFFER_HEIGHT_SGIX = 0x8017;
enum GLX_MAX_PBUFFER_PIXELS_SGIX = 0x8018;
enum GLX_OPTIMAL_PBUFFER_WIDTH_SGIX = 0x8019;
enum GLX_OPTIMAL_PBUFFER_HEIGHT_SGIX = 0x801A;
enum GLX_PRESERVED_CONTENTS_SGIX = 0x801B;
enum GLX_LARGEST_PBUFFER_SGIX = 0x801C;
enum GLX_WIDTH_SGIX = 0x801D;
enum GLX_HEIGHT_SGIX = 0x801E;
enum GLX_EVENT_MASK_SGIX = 0x801F;
enum GLX_DAMAGED_SGIX = 0x8020;
enum GLX_SAVED_SGIX = 0x8021;
enum GLX_WINDOW_SGIX = 0x8022;
enum GLX_PBUFFER_SGIX = 0x8023;
alias PFNGLXCREATEGLXPBUFFERSGIXPROC = c_ulong function (Display* dpy, GLXFBConfigSGIX config, uint width, uint height, int* attrib_list);
alias PFNGLXDESTROYGLXPBUFFERSGIXPROC = void function (Display* dpy, GLXPbufferSGIX pbuf);
alias PFNGLXQUERYGLXPBUFFERSGIXPROC = int function (Display* dpy, GLXPbufferSGIX pbuf, int attribute, uint* value);
alias PFNGLXSELECTEVENTSGIXPROC = void function (Display* dpy, GLXDrawable drawable, c_ulong mask);
alias PFNGLXGETSELECTEDEVENTSGIXPROC = void function (Display* dpy, GLXDrawable drawable, c_ulong* mask);

/* GLX_SGIX_pbuffer */

enum GLX_SGIX_swap_barrier = 1;
alias PFNGLXBINDSWAPBARRIERSGIXPROC = void function (Display* dpy, GLXDrawable drawable, int barrier);
alias PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC = int function (Display* dpy, int screen, int* max);

/* GLX_SGIX_swap_barrier */

enum GLX_SGIX_swap_group = 1;
alias PFNGLXJOINSWAPGROUPSGIXPROC = void function (Display* dpy, GLXDrawable drawable, GLXDrawable member);

/* GLX_SGIX_swap_group */

enum GLX_SGIX_video_resize = 1;
enum GLX_SYNC_FRAME_SGIX = 0x00000000;
enum GLX_SYNC_SWAP_SGIX = 0x00000001;
alias PFNGLXBINDCHANNELTOWINDOWSGIXPROC = int function (Display* display, int screen, int channel, Window window);
alias PFNGLXCHANNELRECTSGIXPROC = int function (Display* display, int screen, int channel, int x, int y, int w, int h);
alias PFNGLXQUERYCHANNELRECTSGIXPROC = int function (Display* display, int screen, int channel, int* dx, int* dy, int* dw, int* dh);
alias PFNGLXQUERYCHANNELDELTASSGIXPROC = int function (Display* display, int screen, int channel, int* x, int* y, int* w, int* h);
alias PFNGLXCHANNELRECTSYNCSGIXPROC = int function (Display* display, int screen, int channel, GLenum synctype);

/* GLX_SGIX_video_resize */

enum GLX_SGIX_video_source = 1;
alias GLXVideoSourceSGIX = c_ulong;

/* _VL_H */
/* GLX_SGIX_video_source */

enum GLX_SGIX_visual_select_group = 1;
enum GLX_VISUAL_SELECT_GROUP_SGIX = 0x8028;
/* GLX_SGIX_visual_select_group */

enum GLX_SGI_cushion = 1;
alias PFNGLXCUSHIONSGIPROC = void function (Display* dpy, Window window, float cushion);

/* GLX_SGI_cushion */

enum GLX_SGI_make_current_read = 1;
alias PFNGLXMAKECURRENTREADSGIPROC = int function (Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx);
alias PFNGLXGETCURRENTREADDRAWABLESGIPROC = c_ulong function ();

/* GLX_SGI_make_current_read */

enum GLX_SGI_swap_control = 1;
alias PFNGLXSWAPINTERVALSGIPROC = int function (int interval);

/* GLX_SGI_swap_control */

enum GLX_SGI_video_sync = 1;
alias PFNGLXGETVIDEOSYNCSGIPROC = int function (uint* count);
alias PFNGLXWAITVIDEOSYNCSGIPROC = int function (int divisor, int remainder, uint* count);

/* GLX_SGI_video_sync */

enum GLX_SUN_get_transparent_index = 1;
alias PFNGLXGETTRANSPARENTINDEXSUNPROC = int function (Display* dpy, Window overlay, Window underlay, c_long* pTransparentIndex);

/* GLX_SUN_get_transparent_index */


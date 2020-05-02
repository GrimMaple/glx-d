module glx.glxtokens;

// This file is generated using dstep

version(linux):
extern (C):

enum GLX_VERSION_1_1 = 1;
enum GLX_VERSION_1_2 = 1;
enum GLX_VERSION_1_3 = 1;
enum GLX_VERSION_1_4 = 1;

/*
** Visual Config Attributes (glXGetConfig, glXGetFBConfigAttrib)
*/
enum GLX_USE_GL = 1; /* support GLX rendering */
enum GLX_BUFFER_SIZE = 2; /* depth of the color buffer */
enum GLX_LEVEL = 3; /* level in plane stacking */
enum GLX_RGBA = 4; /* true if RGBA mode */
enum GLX_DOUBLEBUFFER = 5; /* double buffering supported */
enum GLX_STEREO = 6; /* stereo buffering supported */
enum GLX_AUX_BUFFERS = 7; /* number of aux buffers */
enum GLX_RED_SIZE = 8; /* number of red component bits */
enum GLX_GREEN_SIZE = 9; /* number of green component bits */
enum GLX_BLUE_SIZE = 10; /* number of blue component bits */
enum GLX_ALPHA_SIZE = 11; /* number of alpha component bits */
enum GLX_DEPTH_SIZE = 12; /* number of depth bits */
enum GLX_STENCIL_SIZE = 13; /* number of stencil bits */
enum GLX_ACCUM_RED_SIZE = 14; /* number of red accum bits */
enum GLX_ACCUM_GREEN_SIZE = 15; /* number of green accum bits */
enum GLX_ACCUM_BLUE_SIZE = 16; /* number of blue accum bits */
enum GLX_ACCUM_ALPHA_SIZE = 17; /* number of alpha accum bits */
/*
** FBConfig-specific attributes
*/
enum GLX_X_VISUAL_TYPE = 0x22;
enum GLX_CONFIG_CAVEAT = 0x20; /* Like visual_info VISUAL_CAVEAT_EXT */
enum GLX_TRANSPARENT_TYPE = 0x23;
enum GLX_TRANSPARENT_INDEX_VALUE = 0x24;
enum GLX_TRANSPARENT_RED_VALUE = 0x25;
enum GLX_TRANSPARENT_GREEN_VALUE = 0x26;
enum GLX_TRANSPARENT_BLUE_VALUE = 0x27;
enum GLX_TRANSPARENT_ALPHA_VALUE = 0x28;
enum GLX_DRAWABLE_TYPE = 0x8010;
enum GLX_RENDER_TYPE = 0x8011;
enum GLX_X_RENDERABLE = 0x8012;
enum GLX_FBCONFIG_ID = 0x8013;
enum GLX_MAX_PBUFFER_WIDTH = 0x8016;
enum GLX_MAX_PBUFFER_HEIGHT = 0x8017;
enum GLX_MAX_PBUFFER_PIXELS = 0x8018;
enum GLX_VISUAL_ID = 0x800B;

/* FBConfigSGIX Attributes */
enum GLX_OPTIMAL_PBUFFER_WIDTH_SGIX = 0x8019;
enum GLX_OPTIMAL_PBUFFER_HEIGHT_SGIX = 0x801A;

/*
** Error return values from glXGetConfig.  Success is indicated by
** a value of 0.
*/
enum GLX_BAD_SCREEN = 1; /* screen # is bad */
enum GLX_BAD_ATTRIBUTE = 2; /* attribute to get is bad */
enum GLX_NO_EXTENSION = 3; /* no glx extension on server */
enum GLX_BAD_VISUAL = 4; /* visual # not known by GLX */
enum GLX_BAD_CONTEXT = 5; /* returned only by import_context EXT? */
enum GLX_BAD_VALUE = 6; /* returned only by glXSwapIntervalSGI? */
enum GLX_BAD_ENUM = 7; /* unused? */

/* FBConfig attribute values */

/*
** Generic "don't care" value for glX ChooseFBConfig attributes (except
** GLX_LEVEL)
*/
enum GLX_DONT_CARE = 0xFFFFFFFF;

/* GLX_RENDER_TYPE bits */
enum GLX_RGBA_BIT = 0x00000001;
enum GLX_COLOR_INDEX_BIT = 0x00000002;
enum GLX_RGBA_FLOAT_BIT_ARB = 0x00000004;
enum GLX_RGBA_UNSIGNED_FLOAT_BIT_EXT = 0x00000008;

/* GLX_DRAWABLE_TYPE bits */
enum GLX_WINDOW_BIT = 0x00000001;
enum GLX_PIXMAP_BIT = 0x00000002;
enum GLX_PBUFFER_BIT = 0x00000004;

/* GLX_CONFIG_CAVEAT attribute values */
enum GLX_NONE = 0x8000;
enum GLX_SLOW_CONFIG = 0x8001;
enum GLX_NON_CONFORMANT_CONFIG = 0x800D;

/* GLX_X_VISUAL_TYPE attribute values */
enum GLX_TRUE_COLOR = 0x8002;
enum GLX_DIRECT_COLOR = 0x8003;
enum GLX_PSEUDO_COLOR = 0x8004;
enum GLX_STATIC_COLOR = 0x8005;
enum GLX_GRAY_SCALE = 0x8006;
enum GLX_STATIC_GRAY = 0x8007;

/* GLX_TRANSPARENT_TYPE attribute values */
/* #define GLX_NONE			   0x8000 */
enum GLX_TRANSPARENT_RGB = 0x8008;
enum GLX_TRANSPARENT_INDEX = 0x8009;

/* glXCreateGLXPbuffer attributes */
enum GLX_PRESERVED_CONTENTS = 0x801B;
enum GLX_LARGEST_PBUFFER = 0x801C;
enum GLX_PBUFFER_HEIGHT = 0x8040; /* New for GLX 1.3 */
enum GLX_PBUFFER_WIDTH = 0x8041; /* New for GLX 1.3 */

/* glXQueryGLXPBuffer attributes */
enum GLX_WIDTH = 0x801D;
enum GLX_HEIGHT = 0x801E;
enum GLX_EVENT_MASK = 0x801F;

/* glXCreateNewContext render_type attribute values */
enum GLX_RGBA_TYPE = 0x8014;
enum GLX_COLOR_INDEX_TYPE = 0x8015;

/* glXQueryContext attributes */
/* #define GLX_FBCONFIG_ID		  0x8013 */
/* #define GLX_RENDER_TYPE		  0x8011 */
enum GLX_SCREEN = 0x800C;

/* glXSelectEvent event mask bits */
enum GLX_PBUFFER_CLOBBER_MASK = 0x08000000;
enum GLX_BUFFER_SWAP_COMPLETE_INTEL_MASK = 0x04000000;

/* GLXPbufferClobberEvent event_type values */
enum GLX_DAMAGED = 0x8020;
enum GLX_SAVED = 0x8021;
enum GLX_EXCHANGE_COMPLETE_INTEL = 0x8180;
enum GLX_BLIT_COMPLETE_INTEL = 0x8181;
enum GLX_FLIP_COMPLETE_INTEL = 0x8182;

/* GLXPbufferClobberEvent draw_type values */
enum GLX_WINDOW = 0x8022;
enum GLX_PBUFFER = 0x8023;

/* GLXPbufferClobberEvent buffer_mask bits */
enum GLX_FRONT_LEFT_BUFFER_BIT = 0x00000001;
enum GLX_FRONT_RIGHT_BUFFER_BIT = 0x00000002;
enum GLX_BACK_LEFT_BUFFER_BIT = 0x00000004;
enum GLX_BACK_RIGHT_BUFFER_BIT = 0x00000008;
enum GLX_AUX_BUFFERS_BIT = 0x00000010;
enum GLX_DEPTH_BUFFER_BIT = 0x00000020;
enum GLX_STENCIL_BUFFER_BIT = 0x00000040;
enum GLX_ACCUM_BUFFER_BIT = 0x00000080;

/*
** Extension return values from glXGetConfig.  These are also
** accepted as parameter values for glXChooseVisual.
*/

enum GLX_X_VISUAL_TYPE_EXT = 0x22; /* visual_info extension type */
enum GLX_TRANSPARENT_TYPE_EXT = 0x23; /* visual_info extension */
enum GLX_TRANSPARENT_INDEX_VALUE_EXT = 0x24; /* visual_info extension */
enum GLX_TRANSPARENT_RED_VALUE_EXT = 0x25; /* visual_info extension */
enum GLX_TRANSPARENT_GREEN_VALUE_EXT = 0x26; /* visual_info extension */
enum GLX_TRANSPARENT_BLUE_VALUE_EXT = 0x27; /* visual_info extension */
enum GLX_TRANSPARENT_ALPHA_VALUE_EXT = 0x28; /* visual_info extension */

/* Property values for visual_type */
enum GLX_TRUE_COLOR_EXT = 0x8002;
enum GLX_DIRECT_COLOR_EXT = 0x8003;
enum GLX_PSEUDO_COLOR_EXT = 0x8004;
enum GLX_STATIC_COLOR_EXT = 0x8005;
enum GLX_GRAY_SCALE_EXT = 0x8006;
enum GLX_STATIC_GRAY_EXT = 0x8007;

/* Property values for transparent pixel */
enum GLX_NONE_EXT = 0x8000;
enum GLX_TRANSPARENT_RGB_EXT = 0x8008;
enum GLX_TRANSPARENT_INDEX_EXT = 0x8009;

/* Property values for visual_rating */
enum GLX_VISUAL_CAVEAT_EXT = 0x20; /* visual_rating extension type */
enum GLX_SLOW_VISUAL_EXT = 0x8001;
enum GLX_NON_CONFORMANT_VISUAL_EXT = 0x800D;

/* Property values for swap method (GLX_OML_swap_method) */
enum GLX_SWAP_METHOD_OML = 0x8060;
enum GLX_SWAP_EXCHANGE_OML = 0x8061;
enum GLX_SWAP_COPY_OML = 0x8062;
enum GLX_SWAP_UNDEFINED_OML = 0x8063;

/* Property values for multi-sampling */
enum GLX_VISUAL_SELECT_GROUP_SGIX = 0x8028; /* visuals grouped by select priority */

/*
** Names for attributes to glXGetClientString.
*/
enum GLX_VENDOR = 0x1;
enum GLX_VERSION = 0x2;
enum GLX_EXTENSIONS = 0x3;

/*
** Names for attributes to glXQueryContextInfoEXT.
*/
enum GLX_SHARE_CONTEXT_EXT = 0x800A; /* id of share context */
enum GLX_VISUAL_ID_EXT = 0x800B; /* id of context's visual */
enum GLX_SCREEN_EXT = 0x800C; /* screen number */

/*
** GLX_EXT_texture_from_pixmap
*/
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

enum GLX_TEXTURE_1D_BIT_EXT = 0x00000001;
enum GLX_TEXTURE_2D_BIT_EXT = 0x00000002;
enum GLX_TEXTURE_RECTANGLE_BIT_EXT = 0x00000004;

enum GLX_TEXTURE_1D_EXT = 0x20DB;
enum GLX_TEXTURE_2D_EXT = 0x20DC;
enum GLX_TEXTURE_RECTANGLE_EXT = 0x20DD;

enum GLX_FRONT_LEFT_EXT = 0x20DE;
enum GLX_FRONT_RIGHT_EXT = 0x20DF;
enum GLX_BACK_LEFT_EXT = 0x20E0;
enum GLX_BACK_RIGHT_EXT = 0x20E1;
enum GLX_FRONT_EXT = GLX_FRONT_LEFT_EXT;
enum GLX_BACK_EXT = GLX_BACK_LEFT_EXT;
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

/*
 * GLX 1.4 and later:
 */
enum GLX_SAMPLE_BUFFERS_SGIS = 100000;
enum GLX_SAMPLES_SGIS = 100001;

/*
 * GLX_EXT_framebuffer_SRGB
 */
enum GLX_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x20B2;

/*
 * GLX_ARB_create_context
 * GLX_ARB_create_context_profile
 * GLX_EXT_create_context_es2_profile
 */
enum GLX_CONTEXT_MAJOR_VERSION_ARB = 0x2091;
enum GLX_CONTEXT_MINOR_VERSION_ARB = 0x2092;
enum GLX_CONTEXT_FLAGS_ARB = 0x2094;
enum GLX_CONTEXT_PROFILE_MASK_ARB = 0x9126;

enum GLX_CONTEXT_DEBUG_BIT_ARB = 0x0001;
enum GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = 0x0002;

enum GLX_CONTEXT_CORE_PROFILE_BIT_ARB = 0x0001;
enum GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = 0x0002;
enum GLX_CONTEXT_ES2_PROFILE_BIT_EXT = 0x0004;

/*
 * GLX_ARB_create_context_robustness
 */
enum GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB = 0x0004;
enum GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256;
enum GLX_NO_RESET_NOTIFICATION_ARB = 0x8261;
enum GLX_LOSE_CONTEXT_ON_RESET_ARB = 0x8252;

/* !__GLX_glxtokens_h__ */

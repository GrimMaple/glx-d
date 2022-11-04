module glx.glx;

version(linux):
extern(C):

import x11.X;
import x11.Xlib;
import x11.Xutil;

import glx.glxint;

version = GLX_VERSION_1_1;
version = GLX_VERSION_1_2;
version = GLX_VERSION_1_3;
version = GLX_VERSION_1_4;

immutable string GLX_EXTENSION_NAME = "GLX";

// Missing OpenGL definitions, to not bring up extra dependencies...
package
{
    alias GLint = int;
    alias GLuint = uint;
    alias GLvoid = void;
    alias GLdouble = double;
    alias GLboolean = int;
	alias GLfloat = float;
	alias GLubyte = ubyte;
	alias GLsizei = int;
	alias GLenum = uint;
	alias GLsizeiptr = ptrdiff_t;
	alias GLintptr = ptrdiff_t;
	alias GLbitfield = uint;
}

/*
 * Error codes returned by glXGetConfig:
 */
enum
{
	GLX_USE_GL = 1,
	GLX_BUFFER_SIZE = 2,
	GLX_LEVEL = 3,
	GLX_RGBA = 4,
	GLX_DOUBLEBUFFER = 5,
	GLX_STEREO = 6,
	GLX_AUX_BUFFERS = 7,
	GLX_RED_SIZE = 8,
	GLX_GREEN_SIZE = 9,
	GLX_BLUE_SIZE = 10,
	GLX_ALPHA_SIZE = 11,
	GLX_DEPTH_SIZE = 12,
	GLX_STENCIL_SIZE = 13,
	GLX_ACCUM_RED_SIZE = 14,
	GLX_ACCUM_GREEN_SIZE = 15,
	GLX_ACCUM_BLUE_SIZE	= 16,
	GLX_ACCUM_ALPHA_SIZE = 17
}

/*
 * Error codes returned by glXGetConfig:
 */
enum
{
	GLX_BAD_SCREEN = 1,
	GLX_BAD_ATTRIBUTE = 2,
	GLX_NO_EXTENSION = 3,
	GLX_BAD_VISUAL = 4,
	GLX_BAD_CONTEXT = 5,
	GLX_BAD_VALUE = 6,
	GLX_BAD_ENUM = 7
}

/*
 * GLX 1.1 and later:
 */
enum
{
	GLX_VENDOR = 1,
	GLX_VERSION = 2,
	GLX_EXTENSIONS  = 3
}

/*
 * GLX 1.3 and later:
 */
enum
{
	GLX_CONFIG_CAVEAT = 0x20,
	GLX_DONT_CARE = 0xFFFFFFFF,
	GLX_X_VISUAL_TYPE = 0x22,
	GLX_TRANSPARENT_TYPE = 0x23,
	GLX_TRANSPARENT_INDEX_VALUE = 0x24,
	GLX_TRANSPARENT_RED_VALUE = 0x25,
	GLX_TRANSPARENT_GREEN_VALUE = 0x26,
	GLX_TRANSPARENT_BLUE_VALUE = 0x27,
	GLX_TRANSPARENT_ALPHA_VALUE = 0x28,
	GLX_WINDOW_BIT = 0x00000001,
	GLX_PIXMAP_BIT = 0x00000002,
	GLX_PBUFFER_BIT = 0x00000004,
	GLX_AUX_BUFFERS_BIT	= 0x00000010,
	GLX_FRONT_LEFT_BUFFER_BIT = 0x00000001,
	GLX_FRONT_RIGHT_BUFFER_BIT = 0x00000002,
	GLX_BACK_LEFT_BUFFER_BIT = 0x00000004,
	GLX_BACK_RIGHT_BUFFER_BIT = 0x00000008,
	GLX_DEPTH_BUFFER_BIT = 0x00000020,
	GLX_STENCIL_BUFFER_BIT = 0x00000040,
	GLX_ACCUM_BUFFER_BIT = 0x00000080,
	GLX_NONE = 0x8000,
	GLX_SLOW_CONFIG = 0x8001,
	GLX_TRUE_COLOR = 0x8002,
	GLX_DIRECT_COLOR = 0x8003,
	GLX_PSEUDO_COLOR = 0x8004,
	GLX_STATIC_COLOR = 0x8005,
	GLX_GRAY_SCALE = 0x8006,
	GLX_STATIC_GRAY = 0x8007,
	GLX_TRANSPARENT_RGB	= 0x8008,
	GLX_TRANSPARENT_INDEX = 0x8009,
	GLX_VISUAL_ID = 0x800B,
	GLX_SCREEN = 0x800C,
	GLX_NON_CONFORMANT_CONFIG = 0x800D,
	GLX_DRAWABLE_TYPE = 0x8010,
	GLX_RENDER_TYPE = 0x8011,
	GLX_X_RENDERABLE = 0x8012,
	GLX_FBCONFIG_ID = 0x8013,
	GLX_RGBA_TYPE = 0x8014,
	GLX_COLOR_INDEX_TYPE = 0x8015,
	GLX_MAX_PBUFFER_WIDTH = 0x8016,
	GLX_MAX_PBUFFER_HEIGHT = 0x8017,
	GLX_MAX_PBUFFER_PIXELS = 0x8018,
	GLX_PRESERVED_CONTENTS = 0x801B,
	GLX_LARGEST_PBUFFER = 0x801C,
	GLX_WIDTH = 0x801D,
	GLX_HEIGHT = 0x801E,
	GLX_EVENT_MASK = 0x801F,
	GLX_DAMAGED = 0x8020,
	GLX_SAVED = 0x8021,
	GLX_WINDOW = 0x8022,
	GLX_PBUFFER = 0x8023,
	GLX_PBUFFER_HEIGHT = 0x8040,
	GLX_PBUFFER_WIDTH = 0x8041,
	GLX_RGBA_BIT = 0x00000001,
	GLX_COLOR_INDEX_BIT = 0x00000002,
	GLX_PBUFFER_CLOBBER_MASK = 0x08000000,
}

/*
 * GLX 1.4 and later:
 */
enum
{
	GLX_SAMPLE_BUFFERS = 0x186a0, /*100000*/
	GLX_SAMPLES = 0x186a1 /*100001*/
}

// It's supposed to be an alias to __GLXcontextRec*, but I have no clue where the hell it is
// Running grep over my include folder didn't do much so I temporarily made it alias void*
// If somebody knows a solution to this please let me now or fix this
alias GLXContext = void*;
alias GLXPixmap = XID;
alias GLXDrawable = XID;
/* GLX 1.3 and later */
alias GLXFBConfig = __GLXFBConfigRec*;
alias GLXFBConfigID = XID;
alias GLXContextID = XID;
alias GLXWindow = XID;
alias GLXPbuffer = XID;

/*
** Events.
** __GLX_NUMBER_EVENTS is set to 17 to account for the BufferClobberSGIX
**  event - this helps initialization if the server supports the pbuffer
**  extension and the client doesn't.
*/
immutable GLX_PbufferClobber = 0;
immutable GLX_BufferSwapComplete = 1;

immutable __GLX_NUMBER_EVENTS = 17;

extern XVisualInfo* glXChooseVisual( Display *dpy, int screen,
				     int *attribList );

extern GLXContext glXCreateContext( Display *dpy, XVisualInfo *vis,
				    GLXContext shareList, bool direct );

extern void glXDestroyContext( Display *dpy, GLXContext ctx );

extern bool glXMakeCurrent( Display *dpy, GLXDrawable drawable,
			    GLXContext ctx);

extern void glXCopyContext( Display *dpy, GLXContext src, GLXContext dst,
			    ulong mask );

extern void glXSwapBuffers( Display *dpy, GLXDrawable drawable );

extern GLXPixmap glXCreateGLXPixmap( Display *dpy, XVisualInfo *visual,
				     Pixmap pixmap );

extern void glXDestroyGLXPixmap( Display *dpy, GLXPixmap pixmap );

extern bool glXQueryExtension( Display *dpy, int *errorb, int *event );

extern bool glXQueryVersion( Display *dpy, int *maj, int *min );

extern bool glXIsDirect( Display *dpy, GLXContext ctx );

extern int glXGetConfig( Display *dpy, XVisualInfo *visual,
			 int attrib, int *value );

extern GLXContext glXGetCurrentContext();

extern GLXDrawable glXGetCurrentDrawable();

extern void glXWaitGL();

extern void glXWaitX();

extern void glXUseXFont( Font font, int first, int count, int list );

/* GLX 1.1 and later */
extern const(char*) glXQueryExtensionsString( Display *dpy, int screen );

extern const(char*) glXQueryServerString( Display *dpy, int screen, int name );

extern const(char*) glXGetClientString( Display *dpy, int name );


/* GLX 1.2 and later */
extern Display *glXGetCurrentDisplay();


/* GLX 1.3 and later */
extern GLXFBConfig *glXChooseFBConfig( Display *dpy, int screen,
                                       const int *attribList, int *nitems );

extern int glXGetFBConfigAttrib( Display *dpy, GLXFBConfig config,
                                 int attribute, int *value );

extern GLXFBConfig *glXGetFBConfigs( Display *dpy, int screen,
                                     int *nelements );

extern XVisualInfo *glXGetVisualFromFBConfig( Display *dpy,
                                              GLXFBConfig config );

extern GLXWindow glXCreateWindow( Display *dpy, GLXFBConfig config,
                                  Window win, const int *attribList );

extern void glXDestroyWindow( Display *dpy, GLXWindow window );

extern GLXPixmap glXCreatePixmap( Display *dpy, GLXFBConfig config,
                                  Pixmap pixmap, const int *attribList );

extern void glXDestroyPixmap( Display *dpy, GLXPixmap pixmap );

extern GLXPbuffer glXCreatePbuffer( Display *dpy, GLXFBConfig config,
                                    const int *attribList );

extern void glXDestroyPbuffer( Display *dpy, GLXPbuffer pbuf );

extern void glXQueryDrawable( Display *dpy, GLXDrawable draw, int attribute,
                              uint *value );

extern GLXContext glXCreateNewContext( Display *dpy, GLXFBConfig config,
                                       int renderType, GLXContext shareList,
                                       Bool direct );

extern Bool glXMakeContextCurrent( Display *dpy, GLXDrawable draw,
                                   GLXDrawable read, GLXContext ctx );

extern GLXDrawable glXGetCurrentReadDrawable();

extern int glXQueryContext( Display *dpy, GLXContext ctx, int attribute,
                            int *value );

extern void glXSelectEvent( Display *dpy, GLXDrawable drawable,
                            ulong mask );

extern void glXGetSelectedEvent( Display *dpy, GLXDrawable drawable,
                                 ulong *mask );

/* GLX 1.3 function pointer typedefs */
alias PFNGLXGETFBCONFIGSPROC = GLXFBConfig* function(Display *dpy, int screen, int *nelements);
alias PFNGLXCHOOSEFBCONFIGPROC = GLXFBConfig* function(Display *dpy, int screen, const int *attrib_list, int *nelements);
alias PFNGLXGETFBCONFIGATTRIBPROC = int function(Display *dpy, GLXFBConfig config, int attribute, int *value);
alias PFNGLXGETVISUALFROMFBCONFIGPROC = XVisualInfo* function(Display *dpy, GLXFBConfig config);
alias PFNGLXCREATEWINDOWPROC = GLXWindow function(Display *dpy, GLXFBConfig config, Window win, const int *attrib_list);
alias PFNGLXDESTROYWINDOWPROC = void function(Display *dpy, GLXWindow win);
alias PFNGLXCREATEPIXMAPPROC = GLXPixmap function(Display *dpy, GLXFBConfig config, Pixmap pixmap, const int *attrib_list);
alias PFNGLXDESTROYPIXMAPPROC = void function(Display *dpy, GLXPixmap pixmap);
alias PFNGLXCREATEPBUFFERPROC = GLXPbuffer function(Display *dpy, GLXFBConfig config, const int *attrib_list);
alias PFNGLXDESTROYPBUFFERPROC = void function(Display *dpy, GLXPbuffer pbuf);
alias PFNGLXQUERYDRAWABLEPROC = void function(Display *dpy, GLXDrawable draw, int attribute, uint *value);
alias PFNGLXCREATENEWCONTEXTPROC = GLXContext function(Display *dpy, GLXFBConfig config, int render_type, GLXContext share_list, Bool direct);
alias PFNGLXMAKECONTEXTCURRENTPROC = bool function(Display *dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx);
alias PFNGLXGETCURRENTREADDRAWABLEPROC = GLXDrawable function();
alias PFNGLXGETCURRENTDISPLAYPROC = Display* function();
alias PFNGLXQUERYCONTEXTPROC = int function(Display *dpy, GLXContext ctx, int attribute, int *value);
alias PFNGLXSELECTEVENTPROC = void function(Display *dpy, GLXDrawable draw, ulong event_mask);
alias PFNGLXGETSELECTEDEVENTPROC = void function(Display *dpy, GLXDrawable draw, ulong *event_mask);

/*
 * ARB 2. GLX_ARB_get_proc_address
 */
version = GLX_ARB_get_proc_address;

alias __GLXextFuncPtr = void function();
extern __GLXextFuncPtr glXGetProcAddressARB (const GLubyte *);


/* GLX 1.4 and later */
extern void function() glXGetProcAddress(const GLubyte *procname);

void function() glXGetProcAddressS(const string procName)
{
	return glXGetProcAddress((cast(ubyte[])procName).ptr);
}

/* GLX 1.4 function pointer typedefs */
alias PFNGLXGETPROCADDRESSPROC = __GLXextFuncPtr function(const GLubyte *procName);


/**
 ** The following aren't in glxext.h yet.
 **/


/*
 * ???. GLX_NV_vertex_array_range
 */
version = GLX_NV_vertex_array_range;

extern void *glXAllocateMemoryNV(GLsizei size, GLfloat readfreq, GLfloat writefreq, GLfloat priority);
extern void glXFreeMemoryNV(GLvoid *pointer);
alias PFNGLXALLOCATEMEMORYNVPROC = void* function(GLsizei size, GLfloat readfreq, GLfloat writefreq, GLfloat priority);
alias PFNGLXFREEMEMORYNVPROC = void function(GLvoid *pointer);


/*
 * ARB ?. GLX_ARB_render_texture
 * XXX This was never finalized!
 */
version = GLX_ARB_render_texture;

extern bool glXBindTexImageARB(Display *dpy, GLXPbuffer pbuffer, int buffer);
extern bool glXReleaseTexImageARB(Display *dpy, GLXPbuffer pbuffer, int buffer);
extern bool glXDrawableAttribARB(Display *dpy, GLXDrawable draw, const int *attribList);


/*
 * #?. GLX_MESA_swap_frame_usage
 */
version = GLX_MESA_swap_frame_usage;

extern int glXGetFrameUsageMESA(Display *dpy, GLXDrawable drawable, float *usage);
extern int glXBeginFrameTrackingMESA(Display *dpy, GLXDrawable drawable);
extern int glXEndFrameTrackingMESA(Display *dpy, GLXDrawable drawable);
extern int glXQueryFrameTrackingMESA(Display *dpy, GLXDrawable drawable, long *swapCount, long *missedFrames, float *lastMissedUsage);

alias PFNGLXGETFRAMEUSAGEMESAPROC = int function(Display *dpy, GLXDrawable drawable, float *usage);
alias PFNGLXBEGINFRAMETRACKINGMESAPROC = int function(Display *dpy, GLXDrawable drawable);
alias PFNGLXENDFRAMETRACKINGMESAPROC = int function(Display *dpy, GLXDrawable drawable);
alias PFNGLXQUERYFRAMETRACKINGMESAPROC = int function(Display *dpy, GLXDrawable drawable, long *swapCount, long *missedFrames, float *lastMissedUsage);


/*
 * #?. GLX_MESA_swap_control
 */
version = GLX_MESA_swap_control;

extern int glXSwapIntervalMESA(uint interval);
extern int glXGetSwapIntervalMESA();

alias PFNGLXSWAPINTERVALMESAPROC = int function(uint interval);
alias PFNGLXGETSWAPINTERVALMESAPROC = int function();


/*** Should these go here, or in another header? */
/*
** GLX Events
*/
struct GLXPbufferClobberEvent
{
    int event_type;		/* GLX_DAMAGED or GLX_SAVED */
    int draw_type;		/* GLX_WINDOW or GLX_PBUFFER */
    ulong serial;	/* # of last request processed by server */
    bool send_event;		/* true if this came for SendEvent request */
    Display *display;		/* display the event was read from */
    GLXDrawable drawable;	/* XID of Drawable */
    uint buffer_mask;	/* mask indicating which buffers are affected */
    uint aux_buffer;	/* which aux buffer was affected */
    int x, y;
    int width, height;
    int count;			/* if nonzero, at least this many more */
}

struct GLXBufferSwapComplete
{
    int type;
    ulong serial;	/* # of last request processed by server */
    bool send_event;		/* true if this came from a SendEvent request */
    Display *display;		/* Display the event was read from */
    Drawable drawable;	/* drawable on which event was requested in event mask */
    int event_type;
    long ust;
    long msc;
    long sbc;
}

union __GLXEvent
{
    GLXPbufferClobberEvent glxpbufferclobber;
    GLXBufferSwapComplete glxbufferswapcomplete;
    long[24] pad;
}

alias GLXEvent = __GLXEvent;

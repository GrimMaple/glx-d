module glx.glxproto;

// This file is generated using dstep

version(linux):
extern (C):

import x11.Xmd;
import glx.glx;
import glx.glxmd;


/*
** Errrors.
*/
enum GLXBadContext = 0;
enum GLXBadContextState = 1;
enum GLXBadDrawable = 2;
enum GLXBadPixmap = 3;
enum GLXBadContextTag = 4;
enum GLXBadCurrentWindow = 5;
enum GLXBadRenderRequest = 6;
enum GLXBadLargeRequest = 7;
enum GLXUnsupportedPrivateRequest = 8;
enum GLXBadFBConfig = 9;
enum GLXBadPbuffer = 10;
enum GLXBadCurrentDrawable = 11;
enum GLXBadWindow = 12;
enum GLXBadProfileARB = 13;

enum __GLX_NUMBER_ERRORS = 14;

/*
** Events.
** __GLX_NUMBER_EVENTS is set to 17 to account for the BufferClobberSGIX
**  event - this helps initialization if the server supports the pbuffer
**  extension and the client doesn't.
*/
enum GLX_PbufferClobber = 0;
enum GLX_BufferSwapComplete = 1;

enum __GLX_NUMBER_EVENTS = 17;

enum GLX_EXTENSION_NAME = "GLX";
enum GLX_EXTENSION_ALIAS = "SGI-GLX";

enum __GLX_MAX_CONTEXT_PROPS = 3;

/*****************************************************************************/

/*
** For the structure definitions in this file, we must redefine these types in
** terms of Xmd.h types, which may include bitfields.  All of these are
** undef'ed at the end of this file, restoring the definitions in glx.h.
*/
alias GLXContextID = CARD32;
alias GLXPixmap = CARD32;
alias GLXDrawable = CARD32;
alias GLXPbuffer = CARD32;
alias GLXWindow = CARD32;
alias GLXFBConfigID = CARD32;
alias GLXFBConfigIDSGIX = CARD32;
alias GLXPbufferSGIX = CARD32;

/*
** ContextTag is not exposed to the API.
*/
alias GLXContextTag = uint;

/*****************************************************************************/

/*
** Sizes of basic wire types.
*/
enum __GLX_SIZE_INT8 = 1;
enum __GLX_SIZE_INT16 = 2;
enum __GLX_SIZE_INT32 = 4;
enum __GLX_SIZE_CARD8 = 1;
enum __GLX_SIZE_CARD16 = 2;
enum __GLX_SIZE_CARD32 = 4;
enum __GLX_SIZE_FLOAT32 = 4;
enum __GLX_SIZE_FLOAT64 = 8;

/*****************************************************************************/

/* Requests */

/*
** Render command request.  A bunch of rendering commands are packed into
** a single X extension request.
*/
struct GLXRender
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
}

alias xGLXRenderReq = GLXRender;
enum sz_xGLXRenderReq = 8;

/*
** The maximum size that a GLXRender command can be.  The value must fit
** in 16 bits and should be a multiple of 4.
*/
enum __GLX_MAX_RENDER_CMD_SIZE = 64000;

/*
** Large render command request.  A single large rendering command
** is output in multiple X extension requests.	The first packet
** contains an opcode dependent header (see below) that describes
** the data that follows.
*/
struct GLXRenderLarge
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
    CARD16 requestNumber;
    CARD16 requestTotal;
    CARD32 dataBytes;
}

alias xGLXRenderLargeReq = GLXRenderLarge;
enum sz_xGLXRenderLargeReq = 16;

/*
** GLX single request.	Commands that go over as single GLX protocol
** requests use this structure.  The glxCode will be one of the X_GLsop
** opcodes.
*/
struct GLXSingle
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
}

alias xGLXSingleReq = GLXSingle;
enum sz_xGLXSingleReq = 8;

/*
** glXQueryVersion request
*/
struct GLXQueryVersion
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 majorVersion;
    CARD32 minorVersion;
}

alias xGLXQueryVersionReq = GLXQueryVersion;
enum sz_xGLXQueryVersionReq = 12;

/*
** glXIsDirect request
*/
struct GLXIsDirect
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 context;
}

alias xGLXIsDirectReq = GLXIsDirect;
enum sz_xGLXIsDirectReq = 8;

/*
** glXCreateContext request
*/
struct GLXCreateContext
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 context;
    CARD32 visual;
    CARD32 screen;
    CARD32 shareList;
    BOOL isDirect;
    CARD8 reserved1;
    CARD16 reserved2;
}

alias xGLXCreateContextReq = GLXCreateContext;
enum sz_xGLXCreateContextReq = 24;

/*
** glXDestroyContext request
*/
struct GLXDestroyContext
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 context;
}

alias xGLXDestroyContextReq = GLXDestroyContext;
enum sz_xGLXDestroyContextReq = 8;

/*
** glXMakeCurrent request
*/
struct GLXMakeCurrent
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 drawable;
    CARD32 context;
    GLXContextTag oldContextTag;
}

alias xGLXMakeCurrentReq = GLXMakeCurrent;
enum sz_xGLXMakeCurrentReq = 16;

/*
** glXWaitGL request
*/
struct GLXWaitGL
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
}

alias xGLXWaitGLReq = GLXWaitGL;
enum sz_xGLXWaitGLReq = 8;

/*
** glXWaitX request
*/
struct GLXWaitX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
}

alias xGLXWaitXReq = GLXWaitX;
enum sz_xGLXWaitXReq = 8;

/*
** glXCopyContext request
*/
struct GLXCopyContext
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 source;
    CARD32 dest;
    CARD32 mask;
    GLXContextTag contextTag;
}

alias xGLXCopyContextReq = GLXCopyContext;
enum sz_xGLXCopyContextReq = 20;

/*
** glXSwapBuffers request
*/
struct GLXSwapBuffers
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
    CARD32 drawable;
}

alias xGLXSwapBuffersReq = GLXSwapBuffers;
enum sz_xGLXSwapBuffersReq = 12;

/*
** glXUseXFont request
*/
struct GLXUseXFont
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag contextTag;
    CARD32 font;
    CARD32 first;
    CARD32 count;
    CARD32 listBase;
}

alias xGLXUseXFontReq = GLXUseXFont;
enum sz_xGLXUseXFontReq = 24;

/*
** glXCreateGLXPixmap request
*/
struct GLXCreateGLXPixmap
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
    CARD32 visual;
    CARD32 pixmap;
    CARD32 glxpixmap;
}

alias xGLXCreateGLXPixmapReq = GLXCreateGLXPixmap;
enum sz_xGLXCreateGLXPixmapReq = 20;

/*
** glXDestroyGLXPixmap request
*/
struct GLXDestroyGLXPixmap
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 glxpixmap;
}

alias xGLXDestroyGLXPixmapReq = GLXDestroyGLXPixmap;
enum sz_xGLXDestroyGLXPixmapReq = 8;

/*
** glXGetVisualConfigs request
*/
struct GLXGetVisualConfigs
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
}

alias xGLXGetVisualConfigsReq = GLXGetVisualConfigs;
enum sz_xGLXGetVisualConfigsReq = 8;

/*
** glXVendorPrivate request.
*/
struct GLXVendorPrivate
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    GLXContextTag contextTag;
    /*
    ** More data may follow; this is just the header.
    */
}

alias xGLXVendorPrivateReq = GLXVendorPrivate;
enum sz_xGLXVendorPrivateReq = 12;

/*
** glXVendorPrivateWithReply request
*/
struct GLXVendorPrivateWithReply
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    GLXContextTag contextTag;
    /*
    ** More data may follow; this is just the header.
    */
}

alias xGLXVendorPrivateWithReplyReq = GLXVendorPrivateWithReply;
enum sz_xGLXVendorPrivateWithReplyReq = 12;

/*
** glXQueryExtensionsString request
*/
struct GLXQueryExtensionsString
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
}

alias xGLXQueryExtensionsStringReq = GLXQueryExtensionsString;
enum sz_xGLXQueryExtensionsStringReq = 8;

/*
** glXQueryServerString request
*/
struct GLXQueryServerString
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
    CARD32 name;
}

alias xGLXQueryServerStringReq = GLXQueryServerString;
enum sz_xGLXQueryServerStringReq = 12;

/*
** glXClientInfo request
*/
struct GLXClientInfo
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 major;
    CARD32 minor;
    CARD32 numbytes;
}

alias xGLXClientInfoReq = GLXClientInfo;
enum sz_xGLXClientInfoReq = 16;

/*** Start of GLX 1.3 requests */

/*
** glXGetFBConfigs request
*/
struct GLXGetFBConfigs
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
}

alias xGLXGetFBConfigsReq = GLXGetFBConfigs;
enum sz_xGLXGetFBConfigsReq = 8;

/*
** glXCreatePixmap request
*/
struct GLXCreatePixmap
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
    CARD32 fbconfig;
    CARD32 pixmap;
    CARD32 glxpixmap;
    CARD32 numAttribs;
    /* followed by attribute list */
}

alias xGLXCreatePixmapReq = GLXCreatePixmap;
enum sz_xGLXCreatePixmapReq = 24;

/*
** glXDestroyPixmap request
*/
struct GLXDestroyPixmap
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 glxpixmap;
}

alias xGLXDestroyPixmapReq = GLXDestroyPixmap;
enum sz_xGLXDestroyPixmapReq = 8;

/*
** glXCreateNewContext request
*/
struct GLXCreateNewContext
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 context;
    CARD32 fbconfig;
    CARD32 screen;
    CARD32 renderType;
    CARD32 shareList;
    BOOL isDirect;
    CARD8 reserved1;
    CARD16 reserved2;
}

alias xGLXCreateNewContextReq = GLXCreateNewContext;
enum sz_xGLXCreateNewContextReq = 28;

/*
** glXQueryContext request
*/
struct GLXQueryContext
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 context;
}

alias xGLXQueryContextReq = GLXQueryContext;
enum sz_xGLXQueryContextReq = 8;

/*
** glXMakeContextCurrent request
*/
struct GLXMakeContextCurrent
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    GLXContextTag oldContextTag;
    CARD32 drawable;
    CARD32 readdrawable;
    CARD32 context;
}

alias xGLXMakeContextCurrentReq = GLXMakeContextCurrent;
enum sz_xGLXMakeContextCurrentReq = 20;

/*
** glXCreatePbuffer request
*/
struct GLXCreatePbuffer
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
    CARD32 fbconfig;
    CARD32 pbuffer;
    CARD32 numAttribs;
    /* followed by attribute list */
}

alias xGLXCreatePbufferReq = GLXCreatePbuffer;
enum sz_xGLXCreatePbufferReq = 20;

/*
** glXDestroyPbuffer request
*/
struct GLXDestroyPbuffer
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 pbuffer;
}

alias xGLXDestroyPbufferReq = GLXDestroyPbuffer;
enum sz_xGLXDestroyPbufferReq = 8;

/*
** glXGetDrawableAttributes request
*/
struct GLXGetDrawableAttributes
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 drawable;
}

alias xGLXGetDrawableAttributesReq = GLXGetDrawableAttributes;
enum sz_xGLXGetDrawableAttributesReq = 8;

/*
** glXChangeDrawableAttributes request
*/
struct GLXChangeDrawableAttributes
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 drawable;
    CARD32 numAttribs;
    /* followed by attribute list */
}

alias xGLXChangeDrawableAttributesReq = GLXChangeDrawableAttributes;
enum sz_xGLXChangeDrawableAttributesReq = 12;

/*
** glXCreateWindow request
*/
struct GLXCreateWindow
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 screen;
    CARD32 fbconfig;
    CARD32 window;
    CARD32 glxwindow;
    CARD32 numAttribs;
    /* followed by attribute list */
}

alias xGLXCreateWindowReq = GLXCreateWindow;
enum sz_xGLXCreateWindowReq = 24;

/*
** glXDestroyWindow request
*/
struct GLXDestroyWindow
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 glxwindow;
}

alias xGLXDestroyWindowReq = GLXDestroyWindow;
enum sz_xGLXDestroyWindowReq = 8;

/* Replies */

struct xGLXGetErrorReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 error;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetErrorReply = 32;

struct xGLXMakeCurrentReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    GLXContextTag contextTag;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXMakeCurrentReply = 32;

struct xGLXReadPixelsReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXReadPixelsReply = 32;

struct xGLXGetTexImageReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 pad6;
}

enum sz_xGLXGetTexImageReply = 32;

struct xGLXGetSeparableFilterReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 width;
    CARD32 height;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetSeparableFilterReply = 32;

struct xGLXGetConvolutionFilterReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 width;
    CARD32 height;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetConvolutionFilterReply = 32;

struct xGLXGetHistogramReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 width;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetHistogramReply = 32;

struct xGLXGetMinmaxReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetMinmaxReply = 32;

struct xGLXRenderModeReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 retval;
    CARD32 size;
    CARD32 newMode;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXRenderModeReply = 32;

struct xGLXQueryVersionReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 majorVersion;
    CARD32 minorVersion;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryVersionReply = 32;

struct xGLXGetVisualConfigsReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 numVisuals;
    CARD32 numProps;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetVisualConfigsReply = 32;

struct xGLXIsDirectReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    BOOL isDirect;
    CARD8 pad1;
    CARD16 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
    CARD32 pad7;
}

enum sz_xGLXIsDirectReply = 32;

/*
** This reply structure is used for all single replies.  Single replies
** ship either 1 piece of data or N pieces of data.  In these cases
** size indicates how much data is to be returned.
*/
struct xGLXSingleReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 retval;
    CARD32 size;
    CARD32 pad3; /* NOTE: may hold a single value */
    CARD32 pad4; /* NOTE: may hold half a double */
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXSingleReply = 32;

/*
** This reply structure is used for all Vendor Private replies. Vendor
** Private replies can ship up to 24 bytes within the header or can
** be variable sized, in which case, the reply length field indicates
** the number of words of data which follow the header.
*/
struct xGLXVendorPrivReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 retval;
    CARD32 size;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXVendorPrivReply = 32;

/*
**  QueryExtensionsStringReply
**  n indicates the number of bytes to be returned.
*/
struct xGLXQueryExtensionsStringReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 n;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryExtensionsStringReply = 32;

/*
** QueryServerString Reply struct
** n indicates the number of bytes to be returned.
*/
struct xGLXQueryServerStringReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 n;
    CARD32 pad3; /* NOTE: may hold a single value */
    CARD32 pad4; /* NOTE: may hold half a double */
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryServerStringReply = 32;

/*** Start of GLX 1.3 replies */

/*
** glXGetFBConfigs reply
*/
struct xGLXGetFBConfigsReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 numFBConfigs;
    CARD32 numAttribs;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetFBConfigsReply = 32;

/*
** glXQueryContext reply
*/
struct xGLXQueryContextReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 n; /* number of attribute/value pairs */
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryContextReply = 32;

/*
** glXMakeContextCurrent reply
*/
struct xGLXMakeContextCurrentReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    GLXContextTag contextTag;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXMakeContextCurrentReply = 32;

/*
** glXCreateGLXPbuffer reply
** This is used only in the direct rendering case on SGIs - otherwise
**  CreateGLXPbuffer has no reply. It is not part of GLX 1.3.
*/
struct xGLXCreateGLXPbufferReply
{
    BYTE type; /* X_Reply */
    CARD8 success;
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXCreateGLXPbufferReply = 32;

/*
** glXGetDrawableAttributes reply
*/
struct xGLXGetDrawableAttributesReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 numAttribs;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetDrawableAttributesReply = 32;

/*
** glXGetColorTable reply
*/
struct xGLXGetColorTableReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 pad2;
    CARD32 width;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetColorTableReply = 32;

/************************************************************************/

/* GLX extension requests and replies */

/*
** glXQueryContextInfoEXT request
*/
struct GLXQueryContextInfoEXT
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 context;
}

alias xGLXQueryContextInfoEXTReq = GLXQueryContextInfoEXT;
enum sz_xGLXQueryContextInfoEXTReq = 16;

/*
** glXQueryContextInfoEXT reply
*/
struct xGLXQueryContextInfoEXTReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 n; /* number of attribute/value pairs */
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryContextInfoEXTReply = 32;

/*
** glXMakeCurrentReadSGI request
*/
struct GLXMakeCurrentReadSGI
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    GLXContextTag oldContextTag;
    CARD32 drawable;
    CARD32 readable;
    CARD32 context;
}

alias xGLXMakeCurrentReadSGIReq = GLXMakeCurrentReadSGI;
enum sz_xGLXMakeCurrentReadSGIReq = 24;

struct xGLXMakeCurrentReadSGIReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    GLXContextTag contextTag;
    CARD32 writeVid;
    CARD32 writeType;
    CARD32 readVid;
    CARD32 readType;
    CARD32 pad6;
}

enum sz_xGLXMakeCurrentReadSGIReply = 32;

/*
** glXGetFBConfigsSGIX request
*/
struct GLXGetFBConfigsSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
}

alias xGLXGetFBConfigsSGIXReq = GLXGetFBConfigsSGIX;
enum sz_xGLXGetFBConfigsSGIXReq = 16;

/*
** glXCreateContextWithConfigSGIX request
*/

struct GLXCreateContextWithConfigSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 context;
    CARD32 fbconfig;
    CARD32 screen;
    CARD32 renderType;
    CARD32 shareList;
    BOOL isDirect;
    CARD8 reserved1;
    CARD16 reserved2;
}

alias xGLXCreateContextWithConfigSGIXReq = GLXCreateContextWithConfigSGIX;
enum sz_xGLXCreateContextWithConfigSGIXReq = 36;

/*
** glXCreatePixmapWithConfigSGIX request
*/

struct GLXCreateGLXPixmapWithConfigSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
    CARD32 fbconfig;
    CARD32 pixmap;
    CARD32 glxpixmap;
}

alias xGLXCreateGLXPixmapWithConfigSGIXReq = GLXCreateGLXPixmapWithConfigSGIX;
enum sz_xGLXCreateGLXPixmapWithConfigSGIXReq = 28;

/*
** glXCreateGLXPbufferSGIX request
*/
struct GLXCreateGLXPbufferSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
    CARD32 fbconfig;
    CARD32 pbuffer;
    CARD32 width;
    CARD32 height;
    /* followed by attribute list */
}

alias xGLXCreateGLXPbufferSGIXReq = GLXCreateGLXPbufferSGIX;
enum sz_xGLXCreateGLXPbufferSGIXReq = 32;

/*
** glXDestroyGLXPbufferSGIX request
*/
struct GLXDestroyGLXPbuffer
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 pbuffer;
}

alias xGLXDestroyGLXPbufferSGIXReq = GLXDestroyGLXPbuffer;
enum sz_xGLXDestroyGLXPbufferSGIXReq = 16;

/*
** glXChangeDrawableAttributesSGIX request
*/
struct GLXChangeDrawableAttributesSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 drawable;
    CARD32 numAttribs;
    /* followed by attribute list */
}

alias xGLXChangeDrawableAttributesSGIXReq = GLXChangeDrawableAttributesSGIX;
enum sz_xGLXChangeDrawableAttributesSGIXReq = 20;

/*
** glXGetDrawableAttributesSGIX request
*/
struct GLXGetDrawableAttributesSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 drawable;
}

alias xGLXGetDrawableAttributesSGIXReq = GLXGetDrawableAttributesSGIX;
enum sz_xGLXGetDrawableAttributesSGIXReq = 16;

/*
** glXGetDrawableAttributesSGIX reply
*/
struct xGLXGetDrawableAttributesSGIXReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 numAttribs;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXGetDrawableAttributesSGIXReply = 32;

/*
** glXJoinSwapGroupSGIX request
*/
struct GLXJoinSwapGroupSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 unused; /* corresponds to contextTag in hdr */
    CARD32 drawable;
    CARD32 member;
}

alias xGLXJoinSwapGroupSGIXReq = GLXJoinSwapGroupSGIX;
enum sz_xGLXJoinSwapGroupSGIXReq = 20;

/*
** glXBindSwapBarrierSGIX request
*/
struct GLXBindSwapBarrierSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 unused; /* corresponds to contextTag in hdr */
    CARD32 drawable;
    CARD32 barrier;
}

alias xGLXBindSwapBarrierSGIXReq = GLXBindSwapBarrierSGIX;
enum sz_xGLXBindSwapBarrierSGIXReq = 20;

/*
** glXQueryMaxSwapBarriersSGIX request
*/
struct GLXQueryMaxSwapBarriersSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 unused; /* corresponds to contextTag in hdr */
    CARD32 screen;
}

alias xGLXQueryMaxSwapBarriersSGIXReq = GLXQueryMaxSwapBarriersSGIX;
enum sz_xGLXQueryMaxSwapBarriersSGIXReq = 16;

struct xGLXQueryMaxSwapBarriersSGIXReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 max;
    CARD32 size;
    CARD32 pad3;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryMaxSwapBarriersSGIXReply = 32;

/*
** glXQueryHyperpipeNetworkSGIX request
*/
struct GLXQueryHyperpipeNetworkSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
}

alias xGLXQueryHyperpipeNetworkSGIXReq = GLXQueryHyperpipeNetworkSGIX;
enum sz_xGLXQueryHyperpipeNetworkSGIXReq = 16;

/*
** glXQueryHyperpipeNetworkSGIX reply
*/
struct xGLXQueryHyperpipeNetworkSGIXReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 n;
    CARD32 npipes; /* NOTE: may hold a single value */
    CARD32 pad4; /* NOTE: may hold half a double */
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryHyperpipeNetworkSGIXReply = 32;

/*
** glXDestroyHyperpipeConfigSGIX request
*/
struct GLXDestroyHyperpipeConfigSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
    CARD32 hpId;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
}

alias xGLXDestroyHyperpipeConfigSGIXReq = GLXDestroyHyperpipeConfigSGIX;
enum sz_xGLXDestroyHyperpipeConfigSGIXReq = 32;

/*
** glXDestroyHyperpipeConfigSGIX reply
*/
struct xGLXDestroyHyperpipeConfigSGIXReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 n;
    CARD32 success; /* NOTE: may hold a single value */
    CARD32 pad4; /* NOTE: may hold half a double */
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXDestroyHyperpipeConfigSGIXReply = 32;

/*
** glXQueryHyperpipeConfigSGIX request
*/
struct GLXQueryHyperpipeConfigSGIX
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
    CARD32 hpId;
    CARD32 pad2;
    CARD32 pad3;
    CARD32 pad4;
}

alias xGLXQueryHyperpipeConfigSGIXReq = GLXQueryHyperpipeConfigSGIX;
enum sz_xGLXQueryHyperpipeConfigSGIXReq = 32;

/*
** glXQueryHyperpipeConfigSGIX reply
*/
struct xGLXQueryHyperpipeConfigSGIXReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 n;
    CARD32 npipes;
    CARD32 pad4;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXQueryHyperpipeConfigSGIXReply = 32;

/*
** glXHyperpipeConfigSGIX request
*/
struct xGLXHyperpipeConfigSGIXReq
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 vendorCode; /* vendor-specific opcode */
    CARD32 pad1; /* unused; corresponds to contextTag in header */
    CARD32 screen;
    CARD32 npipes;
    CARD32 networkId;
    CARD32 pad2;
    CARD32 pad3;
    /* followed by attribute list */
}

enum sz_xGLXHyperpipeConfigSGIXReq = 32;

/*
** glXHyperpipeConfigSGIX reply
*/
struct xGLXHyperpipeConfigSGIXReply
{
    BYTE type; /* X_Reply */
    CARD8 unused; /* not used */
    CARD16 sequenceNumber;
    CARD32 length;
    CARD32 pad1;
    CARD32 n;
    CARD32 npipes;
    CARD32 hpId;
    CARD32 pad5;
    CARD32 pad6;
}

enum sz_xGLXHyperpipeConfigSGIXReply = 32;

/**
 * \name Protocol structures for GLX_ARB_create_context and
 * GLX_ARB_create_context_profile
 */
/*@{*/
/**
 * Protocol header for glXSetClientInfoARB
 *
 * This structure is follwed by \c numVersions * 2 \c CARD32 values listing
 * the OpenGL versions supported by the client.  The pairs of values are an
 * OpenGL major version followed by a minor version.  For example,
 *
 *      CARD32 versions[4] = { 2, 1, 3, 0 };
 *
 * says that the client supports OpenGL 2.1 and OpenGL 3.0.
 *
 * These are followed by \c numGLExtensionBytes bytes of \c STRING8 containing
 * the OpenGL extension string supported by the client and up to 3 bytes of
 * padding.
 *
 * The list of OpenGL extensions is followed by \c numGLXExtensionBytes bytes
 * of \c STRING8 containing the GLX extension string supported by the client
 * and up to 3 bytes of padding.
 *
 * This protocol replaces \c GLXClientInfo.
 *
 * \sa GLXClientInfo, GLXSetClientInfo2ARB
 */
struct GLXSetClientInfoARB
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 major;
    CARD32 minor;
    CARD32 numVersions;
    CARD32 numGLExtensionBytes;
    CARD32 numGLXExtensionBytes;
    /*
    ** More data may follow; this is just the header.
    */
}

alias xGLXSetClientInfoARBReq = GLXSetClientInfoARB;
enum sz_xGLXSetClientInfoARBReq = 24;

/**
 * Protocol head for glXCreateContextAttribsARB
 *
 * This protocol replaces \c GLXCreateContext, \c GLXCreateNewContext, and
 * \c GLXCreateContextWithConfigSGIX.
 */
struct GLXCreateContextAttribsARB
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 context;
    CARD32 fbconfig;
    CARD32 screen;
    CARD32 shareList;
    BOOL isDirect;
    CARD8 reserved1;
    CARD16 reserved2;
    CARD32 numAttribs;
    /* followed by attribute list */
}

alias xGLXCreateContextAttribsARBReq = GLXCreateContextAttribsARB;
enum sz_xGLXCreateContextAttribsARBReq = 28;

/**
 * Protocol header for glXSetClientInfo2ARB
 *
 * The glXSetClientInfo2ARB protocol differs from glXSetClientInfoARB in that
 * the list of OpenGL versions supported by the client is 3 \c CARD32 values
 * per version: major version, minor version, and supported profile mask.
 *
 * This protocol replaces \c GLXClientInfo and \c GLXSetClientInfoARB.
 *
 * \sa GLXClientInfo, GLXSetClientInfoARB
 */
struct GLXSetClientInfo2ARB
{
    CARD8 reqType;
    CARD8 glxCode;
    CARD16 length;
    CARD32 major;
    CARD32 minor;
    CARD32 numVersions;
    CARD32 numGLExtensionBytes;
    CARD32 numGLXExtensionBytes;
    /*
    ** More data may follow; this is just the header.
    */
}

alias xGLXSetClientInfo2ARBReq = GLXSetClientInfo2ARB;
enum sz_xGLXSetClientInfo2ARBReq = 24;
/*@}*/

/************************************************************************/

/*
** Events
*/

struct xGLXPbufferClobberEvent
{
    BYTE type;
    BYTE pad;
    CARD16 sequenceNumber;
    CARD16 event_type; /*** was clobber_class */
    CARD16 draw_type;
    CARD32 drawable;
    CARD32 buffer_mask; /*** was mask */
    CARD16 aux_buffer;
    CARD16 x;
    CARD16 y;
    CARD16 width;
    CARD16 height;
    CARD16 count;
    CARD32 unused2;
}

struct xGLXBufferSwapComplete
{
    BYTE type;
    BYTE pad;
    CARD16 sequenceNumber;
    CARD16 event_type;
    CARD32 drawable;
    CARD32 ust_hi;
    CARD32 ust_lo;
    CARD32 msc_hi;
    CARD32 msc_lo;
    CARD32 sbc_hi;
    CARD32 sbc_lo;
}

struct xGLXBufferSwapComplete2
{
    BYTE type;
    BYTE pad;
    CARD16 sequenceNumber;
    CARD16 event_type;
    CARD16 pad2;
    CARD32 drawable;
    CARD32 ust_hi;
    CARD32 ust_lo;
    CARD32 msc_hi;
    CARD32 msc_lo;
    CARD32 sbc;
}

/************************************************************************/

/*
** Size of the standard X request header.
*/
enum __GLX_SINGLE_HDR_SIZE = sz_xGLXSingleReq;
enum __GLX_VENDPRIV_HDR_SIZE = sz_xGLXVendorPrivateReq;

enum __GLX_RENDER_HDR_SIZE = 4;

struct __GLXrenderHeader
{
    CARD16 length;
    CARD16 opcode;
}

enum __GLX_RENDER_LARGE_HDR_SIZE = 8;

struct __GLXrenderLargeHeader
{
    CARD32 length;
    CARD32 opcode;
}

/*
** The glBitmap, glPolygonStipple, glTexImage[12]D, glTexSubImage[12]D
** and glDrawPixels calls all have a pixel header transmitted after the
** Render or RenderLarge header and before their own opcode specific
** headers.
*/

enum __GLX_PIXEL_HDR_SIZE = 20;

struct __GLXpixelHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
}

/*
** glTexImage[34]D and glTexSubImage[34]D calls
** all have a pixel header transmitted after the Render or RenderLarge
** header and before their own opcode specific headers.
*/

enum __GLX_PIXEL_3D_HDR_SIZE = 36;

/*
** Data that is specific to a glBitmap call.  The data is sent in the
** following order:
**	Render or RenderLarge header
**	Pixel header
**	Bitmap header
*/

struct __GLXbitmapHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 width;
    CARD32 height;
    FLOAT32 xorig;
    FLOAT32 yorig;
    FLOAT32 xmove;
    FLOAT32 ymove;
}

struct __GLXbitmapLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 width;
    CARD32 height;
    FLOAT32 xorig;
    FLOAT32 yorig;
    FLOAT32 xmove;
    FLOAT32 ymove;
}

struct __GLXdispatchBitmapHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 width;
    CARD32 height;
    FLOAT32 xorig;
    FLOAT32 yorig;
    FLOAT32 xmove;
    FLOAT32 ymove;
}

enum __GLX_BITMAP_HDR_SIZE = 24;

enum __GLX_BITMAP_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_BITMAP_HDR_SIZE;

enum __GLX_BITMAP_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_HDR_SIZE + __GLX_BITMAP_HDR_SIZE;

struct __GLXpolygonStippleHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
}

enum __GLX_POLYGONSTIPPLE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE;

/*
** Data that is specific to a glTexImage1D or glTexImage2D call.  The
** data is sent in the following order:
**	Render or RenderLarge header
**	Pixel header
**	TexImage header
** When a glTexImage1D call the height field is unexamined by the server.
*/

enum __GLX_TEXIMAGE_HDR_SIZE = 32;

enum __GLX_TEXIMAGE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_TEXIMAGE_HDR_SIZE;

enum __GLX_TEXIMAGE_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_HDR_SIZE + __GLX_TEXIMAGE_HDR_SIZE;

struct __GLXtexImageHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 components;
    CARD32 width;
    CARD32 height;
    CARD32 border;
    CARD32 format;
    CARD32 type;
}

struct __GLXtexImageLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 components;
    CARD32 width;
    CARD32 height;
    CARD32 border;
    CARD32 format;
    CARD32 type;
}

struct __GLXdispatchTexImageHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 components;
    CARD32 width;
    CARD32 height;
    CARD32 border;
    CARD32 format;
    CARD32 type;
}

/*
** Data that is specific to a glTexImage3D or glTexImage4D call.  The
** data is sent in the following order:
**	Render or RenderLarge header
**	Pixel 3D header
**	TexImage 3D header
** When a glTexImage3D call the size4d and woffset fields are unexamined
** by the server.
** Could be used by all TexImage commands and perhaps should be in the
** future.
*/

enum __GLX_TEXIMAGE_3D_HDR_SIZE = 44;

enum __GLX_TEXIMAGE_3D_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_3D_HDR_SIZE + __GLX_TEXIMAGE_3D_HDR_SIZE;

enum __GLX_TEXIMAGE_3D_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_3D_HDR_SIZE + __GLX_TEXIMAGE_3D_HDR_SIZE;

struct __GLXtexImage3DHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 imageHeight;
    CARD32 imageDepth;
    CARD32 skipRows;
    CARD32 skipImages;
    CARD32 skipVolumes;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 internalformat;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 size4d;
    CARD32 border;
    CARD32 format;
    CARD32 type;
    CARD32 nullimage;
}

struct __GLXtexImage3DLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 imageHeight;
    CARD32 imageDepth;
    CARD32 skipRows;
    CARD32 skipImages;
    CARD32 skipVolumes;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 internalformat;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 size4d;
    CARD32 border;
    CARD32 format;
    CARD32 type;
    CARD32 nullimage;
}

struct __GLXdispatchTexImage3DHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 imageHeight;
    CARD32 imageDepth;
    CARD32 skipRows;
    CARD32 skipImages;
    CARD32 skipVolumes;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 internalformat;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 size4d;
    CARD32 border;
    CARD32 format;
    CARD32 type;
    CARD32 nullimage;
}

/*
** Data that is specific to a glTexSubImage1D or glTexSubImage2D call.	The
** data is sent in the following order:
**	Render or RenderLarge header
**	Pixel header
**	TexSubImage header
** When a glTexSubImage1D call is made, the yoffset and height fields
** are unexamined by the server and are  considered to be padding.
*/

enum __GLX_TEXSUBIMAGE_HDR_SIZE = 36;

enum __GLX_TEXSUBIMAGE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_TEXSUBIMAGE_HDR_SIZE;

enum __GLX_TEXSUBIMAGE_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_HDR_SIZE + __GLX_TEXSUBIMAGE_HDR_SIZE;

struct __GLXtexSubImageHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
    CARD32 nullImage;
}

struct __GLXtexSubImageLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
    CARD32 nullImage;
}

struct __GLXdispatchTexSubImageHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
    CARD32 nullImage;
}

/*
** Data that is specific to a glTexSubImage3D and 4D calls.  The
** data is sent in the following order:
**	Render or RenderLarge header
**	Pixel 3D header
**	TexSubImage 3D header
** When a glTexSubImage3D call is made, the woffset and size4d fields
** are unexamined by the server and are considered to be padding.
*/

enum __GLX_TEXSUBIMAGE_3D_HDR_SIZE = 52;

enum __GLX_TEXSUBIMAGE_3D_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_3D_HDR_SIZE + __GLX_TEXSUBIMAGE_3D_HDR_SIZE;

enum __GLX_TEXSUBIMAGE_3D_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_3D_HDR_SIZE + __GLX_TEXSUBIMAGE_3D_HDR_SIZE;

struct __GLXtexSubImage3DHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 imageHeight;
    CARD32 imageDepth;
    CARD32 skipRows;
    CARD32 skipImages;
    CARD32 skipVolumes;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 zoffset;
    CARD32 woffset;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 size4d;
    CARD32 format;
    CARD32 type;
    CARD32 nullImage;
}

struct __GLXtexSubImage3DLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 imageHeight;
    CARD32 imageDepth;
    CARD32 skipRows;
    CARD32 skipImages;
    CARD32 skipVolumes;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 zoffset;
    CARD32 woffset;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 size4d;
    CARD32 format;
    CARD32 type;
    CARD32 nullImage;
}

struct __GLXdispatchTexSubImage3DHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 imageHeight;
    CARD32 imageDepth;
    CARD32 skipRows;
    CARD32 skipImages;
    CARD32 skipVolumes;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 zoffset;
    CARD32 woffset;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 size4d;
    CARD32 format;
    CARD32 type;
    CARD32 nullImage;
}

/**
 * Data that is specific to a \c glCompressedTexImage1D or
 * \c glCompressedTexImage2D call.  The data is sent in the following
 * order:
 *     - Render or RenderLarge header
 *     - CompressedTexImage header
 *
 * When a \c glCompressedTexImage1D call is made, the \c height field is
 * not examined by the server and is considered padding.
 */

enum __GLX_COMPRESSED_TEXIMAGE_HDR_SIZE = 28;

enum __GLX_COMPRESSED_TEXIMAGE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_COMPRESSED_TEXIMAGE_HDR_SIZE;

enum __GLX_COMPRESSED_TEXIMAGE_DISPATCH_HDR_SIZE = __GLX_COMPRESSED_TEXIMAGE_HDR_SIZE;

struct __GLXcompressedTexImageHeader
{
    CARD16 length;
    CARD16 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 internalFormat;
    CARD32 width;
    CARD32 height;
    CARD32 border;
    CARD32 imageSize;
}

struct __GLXcompressedTexImageLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 internalFormat;
    CARD32 width;
    CARD32 height;
    CARD32 border;
    CARD32 imageSize;
}

struct __GLXdispatchCompressedTexImageHeader
{
    CARD32 target;
    CARD32 level;
    CARD32 internalFormat;
    CARD32 width;
    CARD32 height;
    CARD32 border;
    CARD32 imageSize;
}

/**
 * Data that is specifi to a \c glCompressedTexSubImage1D or
 * \c glCompressedTexSubImage2D call.  The data is sent in the following
 * order:
 *     - Render or RenderLarge header
 *     - CompressedTexSubImage header
 *
 * When a \c glCompressedTexSubImage1D call is made, the \c yoffset and
 * \c height fields are not examined by the server and are considered padding.
 */

enum __GLX_COMPRESSED_TEXSUBIMAGE_HDR_SIZE = 32;

enum __GLX_COMPRESSED_TEXSUBIMAGE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_COMPRESSED_TEXSUBIMAGE_HDR_SIZE;

enum __GLX_COMPRESSED_TEXSUBIMAGE_DISPATCH_HDR_SIZE = __GLX_COMPRESSED_TEXSUBIMAGE_HDR_SIZE;

struct __GLXcompressedTexSubImageHeader
{
    CARD16 length;
    CARD16 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 imageSize;
}

struct __GLXcompressedTexSubImageLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 imageSize;
}

struct __GLXdispatchCompressedTexSubImageHeader
{
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 imageSize;
}

/**
 * Data that is specific to a \c glCompressedTexImage3D call.  The data is
 * sent in the following order:
 *     - Render or RenderLarge header
 *     - CompressedTexImage3D header
 */

enum __GLX_COMPRESSED_TEXIMAGE_3D_HDR_SIZE = 32;

enum __GLX_COMPRESSED_TEXIMAGE_3D_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_COMPRESSED_TEXIMAGE_3D_HDR_SIZE;

enum __GLX_COMPRESSED_TEXIMAGE_3D_DISPATCH_HDR_SIZE = __GLX_COMPRESSED_TEXIMAGE_3D_HDR_SIZE;

struct __GLXcompressedTexImage3DHeader
{
    CARD16 length;
    CARD16 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 internalFormat;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 border;
    CARD32 imageSize;
}

struct __GLXcompressedTexImage3DLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 internalFormat;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 border;
    CARD32 imageSize;
}

struct __GLXdispatchCompressedTexImage3DHeader
{
    CARD32 target;
    CARD32 level;
    CARD32 internalFormat;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 border;
    CARD32 imageSize;
}

/**
 * Data that is specifi to a \c glCompressedTexSubImage3D call.  The data is
 * sent in the following order:
 *     - Render or RenderLarge header
 *     - CompressedTexSubImage3D header
 */

enum __GLX_COMPRESSED_TEXSUBIMAGE_3D_HDR_SIZE = 32;

enum __GLX_COMPRESSED_TEXSUBIMAGE_3D_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_COMPRESSED_TEXSUBIMAGE_3D_HDR_SIZE;

enum __GLX_COMPRESSED_TEXSUBIMAGE_3D_DISPATCH_HDR_SIZE = __GLX_COMPRESSED_TEXSUBIMAGE_3D_HDR_SIZE;

struct __GLXcompressedTexSubImage3DHeader
{
    CARD16 length;
    CARD16 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 zoffset;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 format;
    CARD32 imageSize;
}

struct __GLXcompressedTexSubImage3DLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 zoffset;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 format;
    CARD32 imageSize;
}

struct __GLXdispatchCompressedTexSubImage3DHeader
{
    CARD32 target;
    CARD32 level;
    CARD32 xoffset;
    CARD32 yoffset;
    CARD32 zoffset;
    CARD32 width;
    CARD32 height;
    CARD32 depth;
    CARD32 format;
    CARD32 imageSize;
}

/*
** Data that is specific to a glDrawPixels call.  The data is sent in the
** following order:
**	Render or RenderLarge header
**	Pixel header
**	DrawPixels header
*/

enum __GLX_DRAWPIXELS_HDR_SIZE = 16;

enum __GLX_DRAWPIXELS_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_DRAWPIXELS_HDR_SIZE;

enum __GLX_DRAWPIXELS_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_HDR_SIZE + __GLX_DRAWPIXELS_HDR_SIZE;

struct __GLXdrawPixelsHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
}

struct __GLXdrawPixelsLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
}

struct __GLXdispatchDrawPixelsHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
}

/*
** Data that is specific to a glConvolutionFilter1D or glConvolutionFilter2D
** call.  The data is sent in the following order:
**	Render or RenderLarge header
**	Pixel header
**	ConvolutionFilter header
** When a glConvolutionFilter1D call the height field is unexamined by the server.
*/

enum __GLX_CONV_FILT_HDR_SIZE = 24;

enum __GLX_CONV_FILT_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_CONV_FILT_HDR_SIZE;

enum __GLX_CONV_FILT_CMD_DISPATCH_HDR_SIZE = __GLX_PIXEL_HDR_SIZE + __GLX_CONV_FILT_HDR_SIZE;

struct __GLXConvolutionFilterHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 internalformat;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
}

struct __GLXConvolutionFilterLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 internalformat;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
}

struct __GLXdispatchConvolutionFilterHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 internalformat;
    CARD32 width;
    CARD32 height;
    CARD32 format;
    CARD32 type;
}

/*
** Data that is specific to a glDrawArraysEXT call.  The data is sent in the
** following order:
**	Render or RenderLarge header
**	Draw Arrays header
**	a variable number of Component headers
**	vertex data for each component type
*/

enum __GLX_DRAWARRAYS_HDR_SIZE = 12;

enum __GLX_DRAWARRAYS_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_DRAWARRAYS_HDR_SIZE;

struct __GLXdrawArraysHeader
{
    CARD16 length;
    CARD16 opcode;
    CARD32 numVertexes;
    CARD32 numComponents;
    CARD32 primType;
}

struct __GLXdrawArraysLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    CARD32 numVertexes;
    CARD32 numComponents;
    CARD32 primType;
}

struct __GLXdispatchDrawArraysHeader
{
    CARD32 numVertexes;
    CARD32 numComponents;
    CARD32 primType;
}

struct __GLXdispatchDrawArraysComponentHeader
{
    CARD32 datatype;
    INT32 numVals;
    CARD32 component;
}

enum __GLX_COMPONENT_HDR_SIZE = 12;

/*
** Data that is specific to a glColorTable call
**	The data is sent in the following order:
**	Render or RenderLarge header
**	Pixel header
**	ColorTable header
*/

enum __GLX_COLOR_TABLE_HDR_SIZE = 20;

enum __GLX_COLOR_TABLE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_COLOR_TABLE_HDR_SIZE;

struct __GLXColorTableHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 internalformat;
    CARD32 width;
    CARD32 format;
    CARD32 type;
}

struct __GLXColorTableLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 internalformat;
    CARD32 width;
    CARD32 format;
    CARD32 type;
}

struct __GLXdispatchColorTableHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 internalformat;
    CARD32 width;
    CARD32 format;
    CARD32 type;
}

/*
** Data that is specific to a glColorSubTable call
**	The data is sent in the following order:
**	Render or RenderLarge header
**	Pixel header
**	ColorTable header
*/

enum __GLX_COLOR_SUBTABLE_HDR_SIZE = 20;

enum __GLX_COLOR_SUBTABLE_CMD_HDR_SIZE = __GLX_RENDER_HDR_SIZE + __GLX_PIXEL_HDR_SIZE + __GLX_COLOR_SUBTABLE_HDR_SIZE;

struct __GLXColorSubTableHeader
{
    CARD16 length;
    CARD16 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 start;
    CARD32 count;
    CARD32 format;
    CARD32 type;
}

struct __GLXColorSubTableLargeHeader
{
    CARD32 length;
    CARD32 opcode;
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 start;
    CARD32 count;
    CARD32 format;
    CARD32 type;
}

struct __GLXdispatchColorSubTableHeader
{
    BOOL swapBytes;
    BOOL lsbFirst;
    CARD8 reserved0;
    CARD8 reserved1;
    CARD32 rowLength;
    CARD32 skipRows;
    CARD32 skipPixels;
    CARD32 alignment;
    CARD32 target;
    CARD32 start;
    CARD32 count;
    CARD32 format;
    CARD32 type;
}

enum GLX_WINDOW_TYPE = 1;
enum GLX_PIXMAP_TYPE = 2;
enum GLX_VIDEO_SOURCE_TYPE = 3;
enum GLX_PBUFFER_TYPE = 4;
/* 5 is for DM_PBUFFER */
enum GLX_GLXWINDOW_TYPE = 6;

/*****************************************************************************/

/*
** Restore these definitions back to the typedefs in glx.h
*/

/* Opcodes for GLX commands */

enum X_GLXRender = 1;
enum X_GLXRenderLarge = 2;
enum X_GLXCreateContext = 3;
enum X_GLXDestroyContext = 4;
enum X_GLXMakeCurrent = 5;
enum X_GLXIsDirect = 6;
enum X_GLXQueryVersion = 7;
enum X_GLXWaitGL = 8;
enum X_GLXWaitX = 9;
enum X_GLXCopyContext = 10;
enum X_GLXSwapBuffers = 11;
enum X_GLXUseXFont = 12;
enum X_GLXCreateGLXPixmap = 13;
enum X_GLXGetVisualConfigs = 14;
enum X_GLXDestroyGLXPixmap = 15;
enum X_GLXVendorPrivate = 16;
enum X_GLXVendorPrivateWithReply = 17;
enum X_GLXQueryExtensionsString = 18;
enum X_GLXQueryServerString = 19;
enum X_GLXClientInfo = 20;
enum X_GLXGetFBConfigs = 21;
enum X_GLXCreatePixmap = 22;
enum X_GLXDestroyPixmap = 23;
enum X_GLXCreateNewContext = 24;
enum X_GLXQueryContext = 25;
enum X_GLXMakeContextCurrent = 26;
enum X_GLXCreatePbuffer = 27;
enum X_GLXDestroyPbuffer = 28;
enum X_GLXGetDrawableAttributes = 29;
enum X_GLXChangeDrawableAttributes = 30;
enum X_GLXCreateWindow = 31;
enum X_GLXDestroyWindow = 32;
enum X_GLXSetClientInfoARB = 33;
enum X_GLXCreateContextAttribsARB = 34;
enum X_GLXSetClientInfo2ARB = 35;

/* typo compatibility with older headers */
enum X_GLXCreateContextAtrribsARB = 34;
enum X_GLXSetConfigInfo2ARB = 35;

/* Opcodes for single commands (part of GLX command space) */

enum X_GLsop_NewList = 101;
enum X_GLsop_EndList = 102;
enum X_GLsop_DeleteLists = 103;
enum X_GLsop_GenLists = 104;
enum X_GLsop_FeedbackBuffer = 105;
enum X_GLsop_SelectBuffer = 106;
enum X_GLsop_RenderMode = 107;
enum X_GLsop_Finish = 108;
enum X_GLsop_Flush = 142;
enum X_GLsop_PixelStoref = 109;
enum X_GLsop_PixelStorei = 110;
enum X_GLsop_ReadPixels = 111;
enum X_GLsop_GetBooleanv = 112;
enum X_GLsop_GetClipPlane = 113;
enum X_GLsop_GetDoublev = 114;
enum X_GLsop_GetError = 115;
enum X_GLsop_GetFloatv = 116;
enum X_GLsop_GetIntegerv = 117;
enum X_GLsop_GetLightfv = 118;
enum X_GLsop_GetLightiv = 119;
enum X_GLsop_GetMapdv = 120;
enum X_GLsop_GetMapfv = 121;
enum X_GLsop_GetMapiv = 122;
enum X_GLsop_GetMaterialfv = 123;
enum X_GLsop_GetMaterialiv = 124;
enum X_GLsop_GetPixelMapfv = 125;
enum X_GLsop_GetPixelMapuiv = 126;
enum X_GLsop_GetPixelMapusv = 127;
enum X_GLsop_GetPolygonStipple = 128;
enum X_GLsop_GetString = 129;
enum X_GLsop_GetTexEnvfv = 130;
enum X_GLsop_GetTexEnviv = 131;
enum X_GLsop_GetTexGendv = 132;
enum X_GLsop_GetTexGenfv = 133;
enum X_GLsop_GetTexGeniv = 134;
enum X_GLsop_GetTexImage = 135;
enum X_GLsop_GetTexParameterfv = 136;
enum X_GLsop_GetTexParameteriv = 137;
enum X_GLsop_GetTexLevelParameterfv = 138;
enum X_GLsop_GetTexLevelParameteriv = 139;
enum X_GLsop_IsEnabled = 140;
enum X_GLsop_IsList = 141;
enum X_GLsop_AreTexturesResident = 143;
enum X_GLsop_DeleteTextures = 144;
enum X_GLsop_GenTextures = 145;
enum X_GLsop_IsTexture = 146;
enum X_GLsop_GetColorTable = 147;
enum X_GLsop_GetColorTableParameterfv = 148;
enum X_GLsop_GetColorTableParameteriv = 149;
enum X_GLsop_GetConvolutionFilter = 150;
enum X_GLsop_GetConvolutionParameterfv = 151;
enum X_GLsop_GetConvolutionParameteriv = 152;
enum X_GLsop_GetSeparableFilter = 153;
enum X_GLsop_GetHistogram = 154;
enum X_GLsop_GetHistogramParameterfv = 155;
enum X_GLsop_GetHistogramParameteriv = 156;
enum X_GLsop_GetMinmax = 157;
enum X_GLsop_GetMinmaxParameterfv = 158;
enum X_GLsop_GetMinmaxParameteriv = 159;
enum X_GLsop_GetCompressedTexImage = 160;

/* Opcodes for rendering commands */

enum X_GLrop_CallList = 1;
enum X_GLrop_CallLists = 2;
enum X_GLrop_ListBase = 3;
enum X_GLrop_Begin = 4;
enum X_GLrop_Bitmap = 5;
enum X_GLrop_Color3bv = 6;
enum X_GLrop_Color3dv = 7;
enum X_GLrop_Color3fv = 8;
enum X_GLrop_Color3iv = 9;
enum X_GLrop_Color3sv = 10;
enum X_GLrop_Color3ubv = 11;
enum X_GLrop_Color3uiv = 12;
enum X_GLrop_Color3usv = 13;
enum X_GLrop_Color4bv = 14;
enum X_GLrop_Color4dv = 15;
enum X_GLrop_Color4fv = 16;
enum X_GLrop_Color4iv = 17;
enum X_GLrop_Color4sv = 18;
enum X_GLrop_Color4ubv = 19;
enum X_GLrop_Color4uiv = 20;
enum X_GLrop_Color4usv = 21;
enum X_GLrop_EdgeFlagv = 22;
enum X_GLrop_End = 23;
enum X_GLrop_Indexdv = 24;
enum X_GLrop_Indexfv = 25;
enum X_GLrop_Indexiv = 26;
enum X_GLrop_Indexsv = 27;
enum X_GLrop_Normal3bv = 28;
enum X_GLrop_Normal3dv = 29;
enum X_GLrop_Normal3fv = 30;
enum X_GLrop_Normal3iv = 31;
enum X_GLrop_Normal3sv = 32;
enum X_GLrop_RasterPos2dv = 33;
enum X_GLrop_RasterPos2fv = 34;
enum X_GLrop_RasterPos2iv = 35;
enum X_GLrop_RasterPos2sv = 36;
enum X_GLrop_RasterPos3dv = 37;
enum X_GLrop_RasterPos3fv = 38;
enum X_GLrop_RasterPos3iv = 39;
enum X_GLrop_RasterPos3sv = 40;
enum X_GLrop_RasterPos4dv = 41;
enum X_GLrop_RasterPos4fv = 42;
enum X_GLrop_RasterPos4iv = 43;
enum X_GLrop_RasterPos4sv = 44;
enum X_GLrop_Rectdv = 45;
enum X_GLrop_Rectfv = 46;
enum X_GLrop_Rectiv = 47;
enum X_GLrop_Rectsv = 48;
enum X_GLrop_TexCoord1dv = 49;
enum X_GLrop_TexCoord1fv = 50;
enum X_GLrop_TexCoord1iv = 51;
enum X_GLrop_TexCoord1sv = 52;
enum X_GLrop_TexCoord2dv = 53;
enum X_GLrop_TexCoord2fv = 54;
enum X_GLrop_TexCoord2iv = 55;
enum X_GLrop_TexCoord2sv = 56;
enum X_GLrop_TexCoord3dv = 57;
enum X_GLrop_TexCoord3fv = 58;
enum X_GLrop_TexCoord3iv = 59;
enum X_GLrop_TexCoord3sv = 60;
enum X_GLrop_TexCoord4dv = 61;
enum X_GLrop_TexCoord4fv = 62;
enum X_GLrop_TexCoord4iv = 63;
enum X_GLrop_TexCoord4sv = 64;
enum X_GLrop_Vertex2dv = 65;
enum X_GLrop_Vertex2fv = 66;
enum X_GLrop_Vertex2iv = 67;
enum X_GLrop_Vertex2sv = 68;
enum X_GLrop_Vertex3dv = 69;
enum X_GLrop_Vertex3fv = 70;
enum X_GLrop_Vertex3iv = 71;
enum X_GLrop_Vertex3sv = 72;
enum X_GLrop_Vertex4dv = 73;
enum X_GLrop_Vertex4fv = 74;
enum X_GLrop_Vertex4iv = 75;
enum X_GLrop_Vertex4sv = 76;
enum X_GLrop_ClipPlane = 77;
enum X_GLrop_ColorMaterial = 78;
enum X_GLrop_CullFace = 79;
enum X_GLrop_Fogf = 80;
enum X_GLrop_Fogfv = 81;
enum X_GLrop_Fogi = 82;
enum X_GLrop_Fogiv = 83;
enum X_GLrop_FrontFace = 84;
enum X_GLrop_Hint = 85;
enum X_GLrop_Lightf = 86;
enum X_GLrop_Lightfv = 87;
enum X_GLrop_Lighti = 88;
enum X_GLrop_Lightiv = 89;
enum X_GLrop_LightModelf = 90;
enum X_GLrop_LightModelfv = 91;
enum X_GLrop_LightModeli = 92;
enum X_GLrop_LightModeliv = 93;
enum X_GLrop_LineStipple = 94;
enum X_GLrop_LineWidth = 95;
enum X_GLrop_Materialf = 96;
enum X_GLrop_Materialfv = 97;
enum X_GLrop_Materiali = 98;
enum X_GLrop_Materialiv = 99;
enum X_GLrop_PointSize = 100;
enum X_GLrop_PolygonMode = 101;
enum X_GLrop_PolygonStipple = 102;
enum X_GLrop_Scissor = 103;
enum X_GLrop_ShadeModel = 104;
enum X_GLrop_TexParameterf = 105;
enum X_GLrop_TexParameterfv = 106;
enum X_GLrop_TexParameteri = 107;
enum X_GLrop_TexParameteriv = 108;
enum X_GLrop_TexImage1D = 109;
enum X_GLrop_TexImage2D = 110;
enum X_GLrop_TexEnvf = 111;
enum X_GLrop_TexEnvfv = 112;
enum X_GLrop_TexEnvi = 113;
enum X_GLrop_TexEnviv = 114;
enum X_GLrop_TexGend = 115;
enum X_GLrop_TexGendv = 116;
enum X_GLrop_TexGenf = 117;
enum X_GLrop_TexGenfv = 118;
enum X_GLrop_TexGeni = 119;
enum X_GLrop_TexGeniv = 120;
enum X_GLrop_InitNames = 121;
enum X_GLrop_LoadName = 122;
enum X_GLrop_PassThrough = 123;
enum X_GLrop_PopName = 124;
enum X_GLrop_PushName = 125;
enum X_GLrop_DrawBuffer = 126;
enum X_GLrop_Clear = 127;
enum X_GLrop_ClearAccum = 128;
enum X_GLrop_ClearIndex = 129;
enum X_GLrop_ClearColor = 130;
enum X_GLrop_ClearStencil = 131;
enum X_GLrop_ClearDepth = 132;
enum X_GLrop_StencilMask = 133;
enum X_GLrop_ColorMask = 134;
enum X_GLrop_DepthMask = 135;
enum X_GLrop_IndexMask = 136;
enum X_GLrop_Accum = 137;
enum X_GLrop_Disable = 138;
enum X_GLrop_Enable = 139;
enum X_GLrop_PopAttrib = 141;
enum X_GLrop_PushAttrib = 142;
enum X_GLrop_Map1d = 143;
enum X_GLrop_Map1f = 144;
enum X_GLrop_Map2d = 145;
enum X_GLrop_Map2f = 146;
enum X_GLrop_MapGrid1d = 147;
enum X_GLrop_MapGrid1f = 148;
enum X_GLrop_MapGrid2d = 149;
enum X_GLrop_MapGrid2f = 150;
enum X_GLrop_EvalCoord1dv = 151;
enum X_GLrop_EvalCoord1fv = 152;
enum X_GLrop_EvalCoord2dv = 153;
enum X_GLrop_EvalCoord2fv = 154;
enum X_GLrop_EvalMesh1 = 155;
enum X_GLrop_EvalPoint1 = 156;
enum X_GLrop_EvalMesh2 = 157;
enum X_GLrop_EvalPoint2 = 158;
enum X_GLrop_AlphaFunc = 159;
enum X_GLrop_BlendFunc = 160;
enum X_GLrop_LogicOp = 161;
enum X_GLrop_StencilFunc = 162;
enum X_GLrop_StencilOp = 163;
enum X_GLrop_DepthFunc = 164;
enum X_GLrop_PixelZoom = 165;
enum X_GLrop_PixelTransferf = 166;
enum X_GLrop_PixelTransferi = 167;
enum X_GLrop_PixelMapfv = 168;
enum X_GLrop_PixelMapuiv = 169;
enum X_GLrop_PixelMapusv = 170;
enum X_GLrop_ReadBuffer = 171;
enum X_GLrop_CopyPixels = 172;
enum X_GLrop_DrawPixels = 173;
enum X_GLrop_DepthRange = 174;
enum X_GLrop_Frustum = 175;
enum X_GLrop_LoadIdentity = 176;
enum X_GLrop_LoadMatrixf = 177;
enum X_GLrop_LoadMatrixd = 178;
enum X_GLrop_MatrixMode = 179;
enum X_GLrop_MultMatrixf = 180;
enum X_GLrop_MultMatrixd = 181;
enum X_GLrop_Ortho = 182;
enum X_GLrop_PopMatrix = 183;
enum X_GLrop_PushMatrix = 184;
enum X_GLrop_Rotated = 185;
enum X_GLrop_Rotatef = 186;
enum X_GLrop_Scaled = 187;
enum X_GLrop_Scalef = 188;
enum X_GLrop_Translated = 189;
enum X_GLrop_Translatef = 190;
enum X_GLrop_Viewport = 191;
enum X_GLrop_DrawArrays = 193;
enum X_GLrop_PolygonOffset = 192;
enum X_GLrop_CopyTexImage1D = 4119;
enum X_GLrop_CopyTexImage2D = 4120;
enum X_GLrop_CopyTexSubImage1D = 4121;
enum X_GLrop_CopyTexSubImage2D = 4122;
enum X_GLrop_TexSubImage1D = 4099;
enum X_GLrop_TexSubImage2D = 4100;
enum X_GLrop_BindTexture = 4117;
enum X_GLrop_PrioritizeTextures = 4118;
enum X_GLrop_Indexubv = 194;
enum X_GLrop_BlendColor = 4096;
enum X_GLrop_BlendEquation = 4097;
enum X_GLrop_ColorTable = 2053;
enum X_GLrop_ColorTableParameterfv = 2054;
enum X_GLrop_ColorTableParameteriv = 2055;
enum X_GLrop_CopyColorTable = 2056;
enum X_GLrop_ColorSubTable = 195;
enum X_GLrop_CopyColorSubTable = 196;
enum X_GLrop_ConvolutionFilter1D = 4101;
enum X_GLrop_ConvolutionFilter2D = 4102;
enum X_GLrop_ConvolutionParameterf = 4103;
enum X_GLrop_ConvolutionParameterfv = 4104;
enum X_GLrop_ConvolutionParameteri = 4105;
enum X_GLrop_ConvolutionParameteriv = 4106;
enum X_GLrop_CopyConvolutionFilter1D = 4107;
enum X_GLrop_CopyConvolutionFilter2D = 4108;
enum X_GLrop_SeparableFilter2D = 4109;
enum X_GLrop_Histogram = 4110;
enum X_GLrop_Minmax = 4111;
enum X_GLrop_ResetHistogram = 4112;
enum X_GLrop_ResetMinmax = 4113;
enum X_GLrop_TexImage3D = 4114;
enum X_GLrop_TexSubImage3D = 4115;
enum X_GLrop_CopyTexSubImage3D = 4123;
enum X_GLrop_DrawArraysEXT = 4116;

/* Added for core GL version 1.3 */

enum X_GLrop_ActiveTextureARB = 197;
enum X_GLrop_MultiTexCoord1dvARB = 198;
enum X_GLrop_MultiTexCoord1fvARB = 199;
enum X_GLrop_MultiTexCoord1ivARB = 200;
enum X_GLrop_MultiTexCoord1svARB = 201;
enum X_GLrop_MultiTexCoord2dvARB = 202;
enum X_GLrop_MultiTexCoord2fvARB = 203;
enum X_GLrop_MultiTexCoord2ivARB = 204;
enum X_GLrop_MultiTexCoord2svARB = 205;
enum X_GLrop_MultiTexCoord3dvARB = 206;
enum X_GLrop_MultiTexCoord3fvARB = 207;
enum X_GLrop_MultiTexCoord3ivARB = 208;
enum X_GLrop_MultiTexCoord3svARB = 209;
enum X_GLrop_MultiTexCoord4dvARB = 210;
enum X_GLrop_MultiTexCoord4fvARB = 211;
enum X_GLrop_MultiTexCoord4ivARB = 212;
enum X_GLrop_MultiTexCoord4svARB = 213;
enum X_GLrop_CompressedTexImage1D = 214;
enum X_GLrop_CompressedTexImage2D = 215;
enum X_GLrop_CompressedTexImage3D = 216;
enum X_GLrop_CompressedTexSubImage1D = 217;
enum X_GLrop_CompressedTexSubImage2D = 218;
enum X_GLrop_CompressedTexSubImage3D = 219;
enum X_GLrop_SampleCoverageARB = 229;

/* Added for core GL version 1.4 */

enum X_GLrop_WindowPos3fARB = 230;
enum X_GLrop_FogCoordfv = 4124;
enum X_GLrop_FogCoorddv = 4125;
enum X_GLrop_PointParameterfARB = 2065;
enum X_GLrop_PointParameterfvARB = 2066;
enum X_GLrop_SecondaryColor3bv = 4126;
enum X_GLrop_SecondaryColor3sv = 4127;
enum X_GLrop_SecondaryColor3iv = 4128;
enum X_GLrop_SecondaryColor3fv = 4129;
enum X_GLrop_SecondaryColor3dv = 4130;
enum X_GLrop_SecondaryColor3ubv = 4131;
enum X_GLrop_SecondaryColor3usv = 4132;
enum X_GLrop_SecondaryColor3uiv = 4133;
enum X_GLrop_BlendFuncSeparate = 4134;
enum X_GLrop_PointParameteri = 4221;
enum X_GLrop_PointParameteriv = 4222;

/* Added for core GL version 1.5 */
/* XXX opcodes not defined in the spec */

/* Opcodes for Vendor Private commands */

enum X_GLvop_GetConvolutionFilterEXT = 1;
enum X_GLvop_GetConvolutionParameterfvEXT = 2;
enum X_GLvop_GetConvolutionParameterivEXT = 3;
enum X_GLvop_GetSeparableFilterEXT = 4;
enum X_GLvop_GetHistogramEXT = 5;
enum X_GLvop_GetHistogramParameterfvEXT = 6;
enum X_GLvop_GetHistogramParameterivEXT = 7;
enum X_GLvop_GetMinmaxEXT = 8;
enum X_GLvop_GetMinmaxParameterfvEXT = 9;
enum X_GLvop_GetMinmaxParameterivEXT = 10;
enum X_GLvop_AreTexturesResidentEXT = 11;
enum X_GLvop_DeleteTexturesEXT = 12;
enum X_GLvop_GenTexturesEXT = 13;
enum X_GLvop_IsTextureEXT = 14;
enum X_GLvop_GetCombinerInputParameterfvNV = 1270;
enum X_GLvop_GetCombinerInputParameterivNV = 1271;
enum X_GLvop_GetCombinerOutputParameterfvNV = 1272;
enum X_GLvop_GetCombinerOutputParameterivNV = 1273;
enum X_GLvop_GetFinalCombinerOutputParameterfvNV = 1274;
enum X_GLvop_GetFinalCombinerOutputParameterivNV = 1275;
enum X_GLvop_DeleteFenceNV = 1276;
enum X_GLvop_GenFencesNV = 1277;
enum X_GLvop_IsFenceNV = 1278;
enum X_GLvop_TestFenceNV = 1279;
enum X_GLvop_GetFenceivNV = 1280;
enum X_GLvop_AreProgramsResidentNV = 1293;
enum X_GLvop_DeleteProgramARB = 1294;
enum X_GLvop_GenProgramsARB = 1295;
enum X_GLvop_GetProgramEnvParameterfvARB = 1296;
enum X_GLvop_GetProgramEnvParameterdvARB = 1297;
enum X_GLvop_GetProgramEnvParameterivNV = 1298;
enum X_GLvop_GetProgramStringNV = 1299;
enum X_GLvop_GetTrackMatrixivNV = 1300;
enum X_GLvop_GetVertexAttribdvARB = 1301;
enum X_GLvop_GetVertexAttribfvARB = 1302;
enum X_GLvop_GetVertexAttribivARB = 1303;
enum X_GLvop_IsProgramARB = 1304;
enum X_GLvop_GetProgramLocalParameterfvARB = 1305;
enum X_GLvop_GetProgramLocalParameterdvARB = 1306;
enum X_GLvop_GetProgramivARB = 1307;
enum X_GLvop_GetProgramStringARB = 1308;
enum X_GLvop_GetProgramNamedParameter4fvNV = 1310;
enum X_GLvop_GetProgramNamedParameter4dvNV = 1311;
enum X_GLvop_SampleMaskSGIS = 2048;
enum X_GLvop_SamplePatternSGIS = 2049;
enum X_GLvop_GetDetailTexFuncSGIS = 4096;
enum X_GLvop_GetSharpenTexFuncSGIS = 4097;
enum X_GLvop_GetColorTableSGI = 4098;
enum X_GLvop_GetColorTableParameterfvSGI = 4099;
enum X_GLvop_GetColorTableParameterivSGI = 4100;
enum X_GLvop_GetTexFilterFuncSGIS = 4101;
enum X_GLvop_GetInstrumentsSGIX = 4102;
enum X_GLvop_InstrumentsBufferSGIX = 4103;
enum X_GLvop_PollInstrumentsSGIX = 4104;
enum X_GLvop_FlushRasterSGIX = 4105;

/* Opcodes for GLX vendor private commands */

enum X_GLXvop_QueryContextInfoEXT = 1024;
enum X_GLXvop_BindTexImageEXT = 1330;
enum X_GLXvop_ReleaseTexImageEXT = 1331;
enum X_GLXvop_SwapIntervalSGI = 65536;
enum X_GLXvop_MakeCurrentReadSGI = 65537;
enum X_GLXvop_CreateGLXVideoSourceSGIX = 65538;
enum X_GLXvop_DestroyGLXVideoSourceSGIX = 65539;
enum X_GLXvop_GetFBConfigsSGIX = 65540;
enum X_GLXvop_CreateContextWithConfigSGIX = 65541;
enum X_GLXvop_CreateGLXPixmapWithConfigSGIX = 65542;
enum X_GLXvop_CreateGLXPbufferSGIX = 65543;
enum X_GLXvop_DestroyGLXPbufferSGIX = 65544;
enum X_GLXvop_ChangeDrawableAttributesSGIX = 65545;
enum X_GLXvop_GetDrawableAttributesSGIX = 65546;
enum X_GLXvop_JoinSwapGroupSGIX = 65547;
enum X_GLXvop_BindSwapBarrierSGIX = 65548;
enum X_GLXvop_QueryMaxSwapBarriersSGIX = 65549;
enum X_GLXvop_QueryHyperpipeNetworkSGIX = 65550;
enum X_GLXvop_QueryHyperpipeConfigSGIX = 65551;
enum X_GLXvop_HyperpipeConfigSGIX = 65552;
enum X_GLXvop_DestroyHyperpipeConfigSGIX = 65553;

/* ARB extension opcodes */

/*  1. GL_ARB_multitexture - see GL 1.2 opcodes */
/*  5. GL_ARB_multisample - see GL 1.3 opcodes */
/* 12. GL_ARB_texture_compression - see GL 1.3 opcodes */
/* 14. GL_ARB_point_parameters - see GL 1.4 opcodees */

/* 15. GL_ARB_vertex_blend */
enum X_GLrop_WeightbvARB = 220;
enum X_GLrop_WeightubvARB = 221;
enum X_GLrop_WeightsvARB = 222;
enum X_GLrop_WeightusvARB = 223;
enum X_GLrop_WeightivARB = 224;
enum X_GLrop_WeightuivARB = 225;
enum X_GLrop_VertexBlendARB = 226;
enum X_GLrop_WeightfvARB = 227;
enum X_GLrop_WeightdvARB = 228;

/* 16. GL_ARB_matrix_palette */
/* XXX opcodes not defined in the spec */

/* 25. GL_ARB_window_pos - see GL 1.4 opcodes */

/* 26. GL_ARB_vertex_program */
enum X_GLrop_BindProgramARB = 4180;
enum X_GLrop_ProgramEnvParameter4fvARB = 4184;
enum X_GLrop_ProgramEnvParameter4dvARB = 4185;
enum X_GLrop_VertexAttrib1svARB = 4189;
enum X_GLrop_VertexAttrib2svARB = 4190;
enum X_GLrop_VertexAttrib3svARB = 4191;
enum X_GLrop_VertexAttrib4svARB = 4192;
enum X_GLrop_VertexAttrib1fvARB = 4193;
enum X_GLrop_VertexAttrib2fvARB = 4194;
enum X_GLrop_VertexAttrib3fvARB = 4195;
enum X_GLrop_VertexAttrib4fvARB = 4196;
enum X_GLrop_VertexAttrib1dvARB = 4197;
enum X_GLrop_VertexAttrib2dvARB = 4198;
enum X_GLrop_VertexAttrib3dvARB = 4199;
enum X_GLrop_ProgramLocalParameter4fvARB = 4215;
enum X_GLrop_ProgramLocalParameter4dvARB = 4216;
enum X_GLrop_ProgramStringARB = 4217;
enum X_GLrop_VertexAttrib4dvARB = 4200;
enum X_GLrop_VertexAttrib4NubvARB = 4201;
enum X_GLrop_VertexAttrib4bvARB = 4230;
enum X_GLrop_VertexAttrib4ivARB = 4231;
enum X_GLrop_VertexAttrib4ubvARB = 4232;
enum X_GLrop_VertexAttrib4usvARB = 4233;
enum X_GLrop_VertexAttrib4uivARB = 4234;
enum X_GLrop_VertexAttrib4NbvARB = 4235;
enum X_GLrop_VertexAttrib4NsvARB = 4236;
enum X_GLrop_VertexAttrib4NivARB = 4237;
enum X_GLrop_VertexAttrib4NusvARB = 4238;
enum X_GLrop_VertexAttrib4NuivARB = 4239;

/* 27. GL_ARB_fragment_program - see GL_ARB_vertex_program opcodes */

/* 29. GL_ARB_occlusion_query */
/* XXX opcodes not defined in the spec */

/* New extension opcodes */

/* 145. GL_EXT_secondary_color - see GL 1.4 opcodes */

/* 188. GL_EXT_vertex_weighting */
enum X_GLrop_VertexWeightfvEXT = 4135;

/* 191. GL_NV_register_combiners */
enum X_GLrop_CombinerParameterfNV = 4136;
enum X_GLrop_CombinerParameterfvNV = 4137;
enum X_GLrop_CombinerParameteriNV = 4138;
enum X_GLrop_CombinerParameterivNV = 4139;
enum X_GLrop_CombinerInputNV = 4140;
enum X_GLrop_CombinerOutputNV = 4141;
enum X_GLrop_FinalCombinerInputNV = 4142;

/* 222. GL_NV_fence */
enum X_GLrop_SetFenceNV = 4143;
enum X_GLrop_FinishFenceNV = 4144;

/* 227. GL_NV_register_combiners2 */
/* XXX opcodes not defined in the spec */

/* 233. GL_NV_vertex_program - see also GL_ARB_vertex_program opcodes */
enum X_GLrop_ExecuteProgramNV = 4181;
enum X_GLrop_RequestResidentProgramsNV = 4182;
enum X_GLrop_LoadProgamNV = 4183;
enum X_GLrop_ProgramParameters4fvNV = 4186;
enum X_GLrop_ProgramParameters4dvNV = 4187;
enum X_GLrop_TrackMatrixNV = 4188;
enum X_GLrop_VertexAttribs1svNV = 4202;
enum X_GLrop_VertexAttribs2svNV = 4203;
enum X_GLrop_VertexAttribs3svNV = 4204;
enum X_GLrop_VertexAttribs4svNV = 4205;
enum X_GLrop_VertexAttribs1fvNV = 4206;
enum X_GLrop_VertexAttribs2fvNV = 4207;
enum X_GLrop_VertexAttribs3fvNV = 4208;
enum X_GLrop_VertexAttribs4fvNV = 4209;
enum X_GLrop_VertexAttribs1dvNV = 4210;
enum X_GLrop_VertexAttribs2dvNV = 4211;
enum X_GLrop_VertexAttribs3dvNV = 4212;
enum X_GLrop_VertexAttribs4dvNV = 4213;
enum X_GLrop_VertexAttribs4ubvNV = 4214;

/* 261. GL_NV_occlusion_query */
/* XXX opcodes not defined in the spec */

/* 262. GL_NV_point_sprite - see GL 1.4 opcodes */

/* 268. GL_EXT_stencil_two_side */
enum X_GLrop_ActiveStencilFaceEXT = 4220;

/* 282. GL_NV_fragment_program - see also GL_NV_vertex_program and GL_ARB_vertex_program opcodes */
enum X_GLrop_ProgramNamedParameter4fvNV = 4218;
enum X_GLrop_ProgramNamedParameter4dvNV = 4219;

/* 285. GL_NV_primitive_restart */
/* XXX opcodes not defined in the spec */

/* 297. GL_EXT_depth_bounds_test */
enum X_GLrop_DepthBoundsEXT = 4229;

/* 299. GL_EXT_blend_equation_separate */
enum X_GLrop_BlendEquationSeparateEXT = 4228;

/* 310. GL_EXT_framebuffer_object */
enum X_GLvop_IsRenderbufferEXT = 1422;
enum X_GLvop_GenRenderbuffersEXT = 1423;
enum X_GLvop_GetRenderbufferParameterivEXT = 1424;
enum X_GLvop_IsFramebufferEXT = 1425;
enum X_GLvop_GenFramebuffersEXT = 1426;
enum X_GLvop_CheckFramebufferStatusEXT = 1427;
enum X_GLvop_GetFramebufferAttachmentParameterivEXT = 1428;

/* _GLX_glxproto_h_ */

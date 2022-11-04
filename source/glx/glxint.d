module glx.glxint;

version(linux):
extern(C):

import x11.X;
import glx.glx;

alias __GLXvisualConfig = __GLXvisualConfigRec;
alias __GLXFBConfig = __GLXFBConfigRec;

struct __GLXvisualConfigRec
{
    VisualID vid;
    int _class;
    bool rgba;
    int redSize, greenSize, blueSize, alphaSize;
    size_t redMask, greenMask, blueMask, alphaMask;
    int accumRedSize, accumGreenSize, accumBlueSize, accumAlphaSize;
    bool doubleBuffer;
    bool stereo;
    int bufferSize;
    int depthSize;
    int stencilSize;
    int auxBuffers;
    int level;
    /* Start of Extended Visual Properties */
    int visualRating;		/* visual_rating extension */
    int transparentPixel;	/* visual_info extension */
				/*    colors are floats scaled to ints */
    int transparentRed, transparentGreen, transparentBlue, transparentAlpha;
    int transparentIndex;
    int multiSampleSize;
    int nMultiSampleBuffers;
    int visualSelectGroup;
};

immutable __GLX_MIN_CONFIG_PROPS = 18;
immutable __GLX_MAX_CONFIG_PROPS = 500;

immutable __GLX_EXT_CONFIG_PROPS= 10;

/*
** Since we send all non-core visual properties as token, value pairs,
** we require 2 words across the wire. In order to maintain backwards
** compatibility, we need to send the total number of words that the
** VisualConfigs are sent back in so old libraries can simply "ignore"
** the new properties. 
*/

immutable __GLX_TOTAL_CONFIG = __GLX_MIN_CONFIG_PROPS + 2 * __GLX_EXT_CONFIG_PROPS;

struct __GLXFBConfigRec
{
    int visualType;
    int transparentType;
                                /*    colors are floats scaled to ints */
    int transparentRed, transparentGreen, transparentBlue, transparentAlpha;
    int transparentIndex;

    int visualCaveat;

    int associatedVisualId;
    int screen;

    int drawableType;
    int renderType;

    int maxPbufferWidth, maxPbufferHeight, maxPbufferPixels;
    int optimalPbufferWidth, optimalPbufferHeight;  /* for SGIX_pbuffer */

    int visualSelectGroup;	/* visuals grouped by select priority */

    uint id;          

    GLboolean rgbMode;
    GLboolean colorIndexMode;
    GLboolean doubleBufferMode;
    GLboolean stereoMode;
    GLboolean haveAccumBuffer;
    GLboolean haveDepthBuffer;
    GLboolean haveStencilBuffer;

    /* The number of bits present in various buffers */
    GLint accumRedBits, accumGreenBits, accumBlueBits, accumAlphaBits;
    GLint depthBits;
    GLint stencilBits;
    GLint indexBits;
    GLint redBits, greenBits, blueBits, alphaBits;
    GLuint redMask, greenMask, blueMask, alphaMask;

    GLuint multiSampleSize;     /* Number of samples per pixel (0 if no ms) */

    GLuint nMultiSampleBuffers; /* Number of availble ms buffers */
    GLint maxAuxBuffers;

    /* frame buffer level */
    GLint level;

    /* color ranges (for SGI_color_range) */
    GLboolean extendedRange;
    GLdouble minRed, maxRed;
    GLdouble minGreen, maxGreen;
    GLdouble minBlue, maxBlue;
    GLdouble minAlpha, maxAlpha;
};

immutable __GLX_TOTAL_FBCONFIG_PROPS = 35;

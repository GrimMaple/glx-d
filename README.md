# glx-d

Static bindings to GLX library  
Mostly generated using `dstep`, but manually adjusted to compile and work  
`version(linux)` is added to prevent compilation on Windows  

# Usage

This package depends on `x11` and `opengl:gl2-static`.  
Make sure to link agains `GLX` and `GL` manually in your `dub.json`/`dub.sdl`  
  
To use the lubrary, `import glx.glx;`. All the files are in corresponding modules.
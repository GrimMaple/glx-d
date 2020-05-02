module glx.glxmd;

version(linux):
extern(C):
/*
** Machine dependent declarations.
*/

/*
** Define floating point wire types.  These are in IEEE format on the wire.
*/
alias FLOAT32 = float;
alias FLOAT64 = double;

/*
** Like B32, but this is used to store floats in a request.
**
** NOTE: Machines that have a native 32-bit IEEE float can define this as 
**       nothing.  Machines that don't might mimic the float with an integer,
**       and then define this to :32.
*/
version = F32;

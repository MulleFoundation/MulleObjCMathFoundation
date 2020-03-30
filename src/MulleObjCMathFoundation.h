#ifndef mulle_objc_math_foundation_h__
#define mulle_objc_math_foundation_h__

#import "import.h"

#include <stdint.h>

/*
 *  (c) 2020 nat ORGANIZATION
 *
 *  version:  major, minor, patch
 */
#define MULLE_OBJC_MATH_FOUNDATION_VERSION  ((0 << 20) | (17 << 8) | 0)


static inline unsigned int   MulleObjCMathFoundation_get_version_major( void)
{
   return( MULLE_OBJC_MATH_FOUNDATION_VERSION >> 20);
}


static inline unsigned int   MulleObjCMathFoundation_get_version_minor( void)
{
   return( (MULLE_OBJC_MATH_FOUNDATION_VERSION >> 8) & 0xFFF);
}


static inline unsigned int   MulleObjCMathFoundation_get_version_patch( void)
{
   return( MULLE_OBJC_MATH_FOUNDATION_VERSION & 0xFF);
}


extern uint32_t   MulleObjCMathFoundation_get_version( void);


/*
   Add your library headers here for exposure to library
   consumers.
*/
// #include "foo.h"

#endif

#import <MulleObjCMathFoundation/MulleObjCMathFoundation.h>

#include <float.h>
#include <math.h>



static void   test_value( char *s, long double v)
{
   NSNumber   *nr;
   NSString   *className;

   nr = [NSNumber numberWithLongDouble:v];
   if( ! nr)
   {
      printf( "%Lg fail\n", v);
      return;
   }
   className = NSStringFromClass( [nr class]);

   printf( "%s: %s (%s)\n", s, [[nr stringValue] UTF8String], [className UTF8String]);
}


int   main( int argc, char *argv[])
{
   test_value( "0.0L", 0.0L);
   test_value( "1.0L", 1.0L);
   test_value( "1848.0L", 1848.0L);
   test_value( "18.48L", 18.48L);
   // some big numbers that don't fit into the TPS
   test_value( "NSIntegerMin", (long double) NSIntegerMin);
   test_value( "NSIntegerMax", (long double) NSIntegerMax);
   test_value( "DBL_MIN", (long double) DBL_MIN);
   test_value( "DBL_MAX", (long double) DBL_MAX);
   test_value( "LDBL_MIN", LDBL_MIN);
   test_value( "LDBL_MAX", LDBL_MAX);
   test_value( "INFINITY", INFINITY);
   test_value( "NAN", NAN);

   return( 0);
}

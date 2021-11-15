#import <MulleObjCMathFoundation/MulleObjCMathFoundation.h>

#include <float.h>
#include <math.h>



static void   test_value( long double v)
{
   NSNumber   *nr;
   NSString   *className;

   nr        = [NSNumber numberWithLongDouble:v];
   if( ! nr)
   {
      printf( "%Lg fail\n", v);
      return;
   }
   className = NSStringFromClass( [nr class]);

   printf( "%s : %s\n", [[nr stringValue] UTF8String], [className UTF8String]);
}


int   main( int argc, char *argv[])
{
   test_value( 0.0L);
   test_value( 1.0L);
   test_value( 1848.0L);
   test_value( 18.48L);
   // some big numbers that don't fit into the TPS
   test_value( (long double) NSIntegerMin);
   test_value( (long double) NSIntegerMax);
   test_value( (long double) DBL_MIN);
   test_value( (long double) DBL_MAX);
   test_value( INFINITY);
   test_value( NAN);

   return( 0);
}

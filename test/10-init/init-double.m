#import <MulleObjCMathFoundation/MulleObjCMathFoundation.h>

#include <float.h>
#include <math.h>



static void   test_value( double v)
{
   NSNumber   *nr;
   NSString   *className;

   nr        = [NSNumber numberWithDouble:v];
   if( ! nr)
   {
      printf( "%g fail\n", v);
      return;
   }
   className = NSStringFromClass( [nr class]);

   printf( "%s : %s\n", [[nr stringValue] UTF8String], [className UTF8String]);
}


int   main( int argc, char *argv[])
{
   test_value( 0.0);
   test_value( 1.0);
   test_value( 1848);
   // some big numbers that don't fit into the TPS
   test_value( (double) (NSIntegerMin / 32));
//   test_value( (double) NSIntegerMax); // this gives an overflow on conversion
   test_value( (double) (NSIntegerMax / 32));
   test_value( 18.48);
   test_value( INFINITY);
   test_value( NAN);

   return( 0);
}

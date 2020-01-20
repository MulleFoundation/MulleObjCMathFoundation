#
# cmake/_Libraries.cmake is generated by `mulle-sde`. Edits will be lost.
# Disable generation of this file with:
#   mulle-sde environment  --global set MULLE_SOURCETREE_TO_CMAKE_LIBRARIES_FILE DISABLE

if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: math;no-all-load,no-cmakeinherit,no-import,no-share;m
# Disable with: `mulle-sourcetree mark math no-link`
#
if( NOT M_LIBRARY)
   find_library( M_LIBRARY NAMES m)
   message( STATUS "M_LIBRARY is ${M_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( M_LIBRARY)
      #
      # Add to M_LIBRARY list.
      # Disable with: `mulle-sourcetree mark math no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${M_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # intentionally left blank
   else()
      message( FATAL_ERROR "M_LIBRARY was not found")
   endif()
endif()

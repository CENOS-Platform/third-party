#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ngcore" for configuration "Release"
set_property(TARGET ngcore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ngcore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ngcore.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ngcore.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ngcore )
list(APPEND _IMPORT_CHECK_FILES_FOR_ngcore "${_IMPORT_PREFIX}/lib/ngcore.lib" "${_IMPORT_PREFIX}/bin/ngcore.dll" )

# Import target "ngpy" for configuration "Release"
set_property(TARGET ngpy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ngpy PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/Lib/site-packages/netgen/libngpy.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/Lib/site-packages/netgen/libngpy.pyd"
  )

list(APPEND _IMPORT_CHECK_TARGETS ngpy )
list(APPEND _IMPORT_CHECK_FILES_FOR_ngpy "${_IMPORT_PREFIX}/Lib/site-packages/netgen/libngpy.lib" "${_IMPORT_PREFIX}/Lib/site-packages/netgen/libngpy.pyd" )

# Import target "nglib" for configuration "Release"
set_property(TARGET nglib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nglib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/nglib.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/nglib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS nglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_nglib "${_IMPORT_PREFIX}/lib/nglib.lib" "${_IMPORT_PREFIX}/bin/nglib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

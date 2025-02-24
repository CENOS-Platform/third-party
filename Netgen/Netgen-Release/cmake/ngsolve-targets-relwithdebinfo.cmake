#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ngsolve" for configuration "RelWithDebInfo"
set_property(TARGET ngsolve APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ngsolve PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libngsolve.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/libngsolve.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ngsolve )
list(APPEND _IMPORT_CHECK_FILES_FOR_ngsolve "${_IMPORT_PREFIX}/lib/libngsolve.lib" "${_IMPORT_PREFIX}/bin/libngsolve.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

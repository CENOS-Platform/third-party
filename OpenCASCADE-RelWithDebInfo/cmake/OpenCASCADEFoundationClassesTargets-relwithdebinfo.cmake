#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TKernel" for configuration "RelWithDebInfo"
set_property(TARGET TKernel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TKernel PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/libi/TKernel.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/bini/TKernel.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKernel )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKernel "${_IMPORT_PREFIX}/win64/vc14/libi/TKernel.lib" "${_IMPORT_PREFIX}/win64/vc14/bini/TKernel.dll" )

# Import target "TKMath" for configuration "RelWithDebInfo"
set_property(TARGET TKMath APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TKMath PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/libi/TKMath.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/bini/TKMath.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKMath )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKMath "${_IMPORT_PREFIX}/win64/vc14/libi/TKMath.lib" "${_IMPORT_PREFIX}/win64/vc14/bini/TKMath.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

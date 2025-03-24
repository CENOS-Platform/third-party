#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaViewIncubator::Core" for configuration "RelWithDebInfo"
set_property(TARGET ParaViewIncubator::Core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ParaViewIncubator::Core PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/vtkPVIncubatorCore-pv5.13.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/vtkPVIncubatorCore-pv5.13.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ParaViewIncubator::Core )
list(APPEND _IMPORT_CHECK_FILES_FOR_ParaViewIncubator::Core "${_IMPORT_PREFIX}/lib/vtkPVIncubatorCore-pv5.13.lib" "${_IMPORT_PREFIX}/bin/vtkPVIncubatorCore-pv5.13.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CFSReader::Reader" for configuration "RelWithDebInfo"
set_property(TARGET CFSReader::Reader APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(CFSReader::Reader PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::vtksys"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS CFSReader::Reader )
list(APPEND _IMPORT_CHECK_FILES_FOR_CFSReader::Reader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
